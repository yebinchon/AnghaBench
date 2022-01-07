; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/matlab/extr_icctrans.c_OpenTransforms.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/matlab/extr_icctrans.c_OpenTransforms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lMultiProfileChain = common dso_local global i64 0, align 8
@xoptind = common dso_local global i32 0, align 4
@nProfiles = common dso_local global i32 0, align 4
@hProfiles = common dso_local global i8** null, align 8
@Intent = common dso_local global i32 0, align 4
@hInput = common dso_local global i32* null, align 8
@hOutput = common dso_local global i32* null, align 8
@InputColorSpace = common dso_local global i32 0, align 4
@OutputColorSpace = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@lIsDeviceLink = common dso_local global i64 0, align 8
@cInProf = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@cOutProf = common dso_local global i8* null, align 8
@cmsSigLinkClass = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Use %cl flag for devicelink profiles!\0A\00", align 1
@SW = common dso_local global i32 0, align 4
@OutputChannels = common dso_local global i8* null, align 8
@InputChannels = common dso_local global i8* null, align 8
@nBytesDepth = common dso_local global i32 0, align 4
@cProofing = common dso_local global i8* null, align 8
@hProof = common dso_local global i8* null, align 8
@cmsFLAGS_SOFTPROOFING = common dso_local global i32 0, align 4
@ProofingIntent = common dso_local global i32 0, align 4
@hColorTransform = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @OpenTransforms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OpenTransforms(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %10 = load i64, i64* @lMultiProfileChain, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @xoptind, align 4
  %15 = sub nsw i32 %13, %14
  store i32 %15, i32* @nProfiles, align 4
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %33, %12
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @nProfiles, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load i8**, i8*** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @xoptind, align 4
  %24 = add nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %21, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i8* @OpenProfile(i8* %27)
  %29 = load i8**, i8*** @hProfiles, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  store i8* %28, i8** %32, align 8
  br label %33

33:                                               ; preds = %20
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %16

36:                                               ; preds = %16
  %37 = load i8**, i8*** @hProfiles, align 8
  %38 = load i32, i32* @nProfiles, align 4
  %39 = load i32, i32* @Intent, align 4
  %40 = call i32 (...) @GetFlags()
  %41 = call i32 @cmsCreateMultiprofileTransform(i8** %37, i32 %38, i32 0, i32 0, i32 %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32* @cmsTransform2DeviceLink(i32 %42, double 4.200000e+00, i32 0)
  store i32* %43, i32** @hInput, align 8
  store i32* null, i32** @hOutput, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @cmsDeleteTransform(i32 %44)
  %46 = load i32*, i32** @hInput, align 8
  %47 = call i32 @cmsGetColorSpace(i32* %46)
  store i32 %47, i32* @InputColorSpace, align 4
  %48 = load i32*, i32** @hInput, align 8
  %49 = call i32 @cmsGetPCS(i32* %48)
  store i32 %49, i32* @OutputColorSpace, align 4
  %50 = load i64, i64* @TRUE, align 8
  store i64 %50, i64* @lIsDeviceLink, align 8
  br label %86

51:                                               ; preds = %2
  %52 = load i64, i64* @lIsDeviceLink, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i8*, i8** @cInProf, align 8
  %56 = call i32* @cmsOpenProfileFromFile(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %56, i32** @hInput, align 8
  store i32* null, i32** @hOutput, align 8
  %57 = load i32*, i32** @hInput, align 8
  %58 = call i32 @cmsGetColorSpace(i32* %57)
  store i32 %58, i32* @InputColorSpace, align 4
  %59 = load i32*, i32** @hInput, align 8
  %60 = call i32 @cmsGetPCS(i32* %59)
  store i32 %60, i32* @OutputColorSpace, align 4
  br label %85

61:                                               ; preds = %51
  %62 = load i8*, i8** @cInProf, align 8
  %63 = call i8* @OpenProfile(i8* %62)
  %64 = bitcast i8* %63 to i32*
  store i32* %64, i32** @hInput, align 8
  %65 = load i8*, i8** @cOutProf, align 8
  %66 = call i8* @OpenProfile(i8* %65)
  %67 = bitcast i8* %66 to i32*
  store i32* %67, i32** @hOutput, align 8
  %68 = load i32*, i32** @hInput, align 8
  %69 = call i32 @cmsGetColorSpace(i32* %68)
  store i32 %69, i32* @InputColorSpace, align 4
  %70 = load i32*, i32** @hOutput, align 8
  %71 = call i32 @cmsGetColorSpace(i32* %70)
  store i32 %71, i32* @OutputColorSpace, align 4
  %72 = load i32*, i32** @hInput, align 8
  %73 = call i64 @cmsGetDeviceClass(i32* %72)
  %74 = load i64, i64* @cmsSigLinkClass, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %81, label %76

76:                                               ; preds = %61
  %77 = load i32*, i32** @hOutput, align 8
  %78 = call i64 @cmsGetDeviceClass(i32* %77)
  %79 = load i64, i64* @cmsSigLinkClass, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %76, %61
  %82 = load i32, i32* @SW, align 4
  %83 = call i32 @FatalError(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %81, %76
  br label %85

85:                                               ; preds = %84, %54
  br label %86

86:                                               ; preds = %85, %36
  %87 = load i32, i32* @OutputColorSpace, align 4
  %88 = call i8* @cmsChannelsOf(i32 %87)
  store i8* %88, i8** @OutputChannels, align 8
  %89 = load i32, i32* @InputColorSpace, align 4
  %90 = call i8* @cmsChannelsOf(i32 %89)
  store i8* %90, i8** @InputChannels, align 8
  %91 = load i32, i32* @InputColorSpace, align 4
  %92 = load i32, i32* @nBytesDepth, align 4
  %93 = call i32 @MakeFormatDescriptor(i32 %91, i32 %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* @OutputColorSpace, align 4
  %95 = load i32, i32* @nBytesDepth, align 4
  %96 = call i32 @MakeFormatDescriptor(i32 %94, i32 %95)
  store i32 %96, i32* %6, align 4
  %97 = call i32 (...) @GetFlags()
  store i32 %97, i32* %7, align 4
  %98 = load i8*, i8** @cProofing, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %86
  %101 = load i8*, i8** @cProofing, align 8
  %102 = call i8* @OpenProfile(i8* %101)
  store i8* %102, i8** @hProof, align 8
  %103 = load i32, i32* @cmsFLAGS_SOFTPROOFING, align 4
  %104 = load i32, i32* %7, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %100, %86
  %107 = load i32*, i32** @hInput, align 8
  %108 = load i32, i32* %5, align 4
  %109 = load i32*, i32** @hOutput, align 8
  %110 = load i32, i32* %6, align 4
  %111 = load i8*, i8** @hProof, align 8
  %112 = load i32, i32* @Intent, align 4
  %113 = load i32, i32* @ProofingIntent, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @cmsCreateProofingTransform(i32* %107, i32 %108, i32* %109, i32 %110, i8* %111, i32 %112, i32 %113, i32 %114)
  store i32 %115, i32* @hColorTransform, align 4
  ret void
}

declare dso_local i8* @OpenProfile(i8*) #1

declare dso_local i32 @cmsCreateMultiprofileTransform(i8**, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GetFlags(...) #1

declare dso_local i32* @cmsTransform2DeviceLink(i32, double, i32) #1

declare dso_local i32 @cmsDeleteTransform(i32) #1

declare dso_local i32 @cmsGetColorSpace(i32*) #1

declare dso_local i32 @cmsGetPCS(i32*) #1

declare dso_local i32* @cmsOpenProfileFromFile(i8*, i8*) #1

declare dso_local i64 @cmsGetDeviceClass(i32*) #1

declare dso_local i32 @FatalError(i8*, i32) #1

declare dso_local i8* @cmsChannelsOf(i32) #1

declare dso_local i32 @MakeFormatDescriptor(i32, i32) #1

declare dso_local i32 @cmsCreateProofingTransform(i32*, i32, i32*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
