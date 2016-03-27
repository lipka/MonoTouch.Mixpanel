all:
	$(MAKE) -C library
	cp library/libMixpanel.a binding/libMixpanel.a
	$(MAKE) -C binding

resource:
	find library/mixpanel-iphone/Mixpanel \( -name "*.png" -o -name "*.storyboard" \) -exec cp -r {} resources \;

clean:
	$(MAKE) -C library clean
	$(MAKE) -C binding clean
	rm -r resources/
	mkdir resources/
