; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/matlab/extr_icctrans.c_mexFunction.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/matlab/extr_icctrans.c_mexFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"Too many output arguments.\00", align 1
@MatLabErrorHandler = common dso_local global i32 0, align 4
@Verbose = common dso_local global i64 0, align 8
@cInProf = common dso_local global i32* null, align 8
@cOutProf = common dso_local global i32* null, align 8
@cProofing = common dso_local global i32* null, align 8
@FALSE = common dso_local global i8* null, align 8
@lMultiProfileChain = common dso_local global i8* null, align 8
@nProfiles = common dso_local global i64 0, align 8
@INTENT_PERCEPTUAL = common dso_local global i32 0, align 4
@Intent = common dso_local global i32 0, align 4
@INTENT_ABSOLUTE_COLORIMETRIC = common dso_local global i32 0, align 4
@ProofingIntent = common dso_local global i32 0, align 4
@PrecalcMode = common dso_local global i32 0, align 4
@BlackPointCompensation = common dso_local global i8* null, align 8
@lIsDeviceLink = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"Type mismatch on argument 1 -- Must be numeric\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Type mismatch on argument 2 -- Must be string\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Cannot unpack command string\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@nBytesDepth = common dso_local global i32 0, align 4
@OutputChannels = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mexFunction(i32 %0, i32** %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca [4097 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca [128 x i8*], align 16
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32** %3, i32*** %8, align 8
  store i32 1, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = call i32 (...) @PrintHelp()
  br label %95

17:                                               ; preds = %4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 @FatalError(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i32, i32* @MatLabErrorHandler, align 4
  %24 = call i32 @cmsSetLogErrorHandler(i32 %23)
  store i64 0, i64* @Verbose, align 8
  store i32* null, i32** @cInProf, align 8
  store i32* null, i32** @cOutProf, align 8
  store i32* null, i32** @cProofing, align 8
  %25 = load i8*, i8** @FALSE, align 8
  store i8* %25, i8** @lMultiProfileChain, align 8
  store i64 0, i64* @nProfiles, align 8
  %26 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  store i32 %26, i32* @Intent, align 4
  %27 = load i32, i32* @INTENT_ABSOLUTE_COLORIMETRIC, align 4
  store i32 %27, i32* @ProofingIntent, align 4
  store i32 1, i32* @PrecalcMode, align 4
  %28 = load i8*, i8** @FALSE, align 8
  store i8* %28, i8** @BlackPointCompensation, align 8
  %29 = load i8*, i8** @FALSE, align 8
  store i8* %29, i8** @lIsDeviceLink, align 8
  %30 = load i32**, i32*** %8, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @mxIsNumeric(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %22
  %36 = call i32 @FatalError(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %22
  %38 = load i32**, i32*** %8, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @mxIsChar(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = call i32 @FatalError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %37
  %46 = load i32**, i32*** %8, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds [4097 x i8], [4097 x i8]* %9, i64 0, i64 0
  %50 = call i64 @mxGetString(i32* %48, i8* %49, i32 4096)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = call i32 @FatalError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %45
  %55 = getelementptr inbounds [128 x i8*], [128 x i8*]* %11, i64 0, i64 0
  store i8* null, i8** %55, align 16
  %56 = getelementptr inbounds [4097 x i8], [4097 x i8]* %9, i64 0, i64 0
  %57 = call i8* @strtok(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %57, i8** %10, align 8
  br label %58

58:                                               ; preds = %67, %54
  %59 = load i8*, i8** %10, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds [128 x i8*], [128 x i8*]* %11, i64 0, i64 %65
  store i8* %62, i8** %66, align 8
  br label %67

67:                                               ; preds = %61
  %68 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %68, i8** %10, align 8
  br label %58

69:                                               ; preds = %58
  %70 = load i32, i32* %12, align 4
  %71 = getelementptr inbounds [128 x i8*], [128 x i8*]* %11, i64 0, i64 0
  %72 = call i32 @HandleSwitches(i32 %70, i8** %71)
  %73 = load i32**, i32*** %8, align 8
  %74 = getelementptr inbounds i32*, i32** %73, i64 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @SizeOfArrayType(i32* %75)
  store i32 %76, i32* @nBytesDepth, align 4
  %77 = load i32, i32* %12, align 4
  %78 = getelementptr inbounds [128 x i8*], [128 x i8*]* %11, i64 0, i64 0
  %79 = call i32 @OpenTransforms(i32 %77, i8** %78)
  %80 = load i32**, i32*** %8, align 8
  %81 = getelementptr inbounds i32*, i32** %80, i64 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* @OutputChannels, align 4
  %84 = call i32* @AllocateOutputArray(i32* %82, i32 %83)
  %85 = load i32**, i32*** %6, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i64 0
  store i32* %84, i32** %86, align 8
  %87 = load i32**, i32*** %8, align 8
  %88 = getelementptr inbounds i32*, i32** %87, i64 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32**, i32*** %6, align 8
  %91 = getelementptr inbounds i32*, i32** %90, i64 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @ApplyTransforms(i32* %89, i32* %92)
  %94 = call i32 (...) @CloseTransforms()
  br label %95

95:                                               ; preds = %69, %15
  ret void
}

declare dso_local i32 @PrintHelp(...) #1

declare dso_local i32 @FatalError(i8*) #1

declare dso_local i32 @cmsSetLogErrorHandler(i32) #1

declare dso_local i32 @mxIsNumeric(i32*) #1

declare dso_local i32 @mxIsChar(i32*) #1

declare dso_local i64 @mxGetString(i32*, i8*, i32) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @HandleSwitches(i32, i8**) #1

declare dso_local i32 @SizeOfArrayType(i32*) #1

declare dso_local i32 @OpenTransforms(i32, i8**) #1

declare dso_local i32* @AllocateOutputArray(i32*, i32) #1

declare dso_local i32 @ApplyTransforms(i32*, i32*) #1

declare dso_local i32 @CloseTransforms(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
