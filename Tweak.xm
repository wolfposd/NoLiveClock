%hook SBClockApplicationIconImageView
 
-(void) _setAnimating:(bool) value{
	%orig(false);
	return;
}
 

// needs testing:
//- (_Bool)isAnimationAllowed {
//   %orig;
//	return false;
//}

%end