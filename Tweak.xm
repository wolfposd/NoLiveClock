%hook SBClockApplicationIconImageView
 
-(void) _setAnimating:(bool) value{
	%orig(false);
	return;
}
 

- (_Bool)isAnimationAllowed {
    %orig;
	return false;
}

%end