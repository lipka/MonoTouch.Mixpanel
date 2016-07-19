using System;
using ObjCRuntime;

[assembly: LinkWith ("libMixpanel.a", LinkTarget.Simulator | LinkTarget.ArmV7 | LinkTarget.ArmV7s | LinkTarget.Arm64, LinkerFlags="-licucore", Frameworks = "UIKit Foundation SystemConfiguration CoreTelephony Accelerate CoreGraphics QuartzCore", ForceLoad = true)]
