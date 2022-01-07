; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsps2.c_EmitCIEBasedABC.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsps2.c_EmitCIEBasedABC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"[ /CIEBasedABC\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"<<\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"/DecodeABC [ \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"/MatrixABC [ \00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"%.6f %.6f %.6f \00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"/RangeLMN [ 0.0 0.9642 0.0 1.0000 0.0 0.8249 ]\0A\00", align 1
@INTENT_PERCEPTUAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c">>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32**, i32*)* @EmitCIEBasedABC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EmitCIEBasedABC(i32 %0, i32* %1, i32* %2, i32** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %12, i32* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %6, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %15, i32* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* %6, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %18, i32* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32, i32* %6, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32**, i32*** %9, align 8
  %24 = call i32 @EmitNGamma(i32 %21, i32* %22, i32 3, i32** %23)
  %25 = load i32, i32* %6, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %25, i32* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %28 = load i32, i32* %6, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %28, i32* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %56, %5
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 3
  br i1 %33, label %34, label %59

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 0
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 3
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 6
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %35, i32* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %42, i32 %48, i32 %54)
  br label %56

56:                                               ; preds = %34
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %31

59:                                               ; preds = %31
  %60 = load i32, i32* %6, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %60, i32* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* %6, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %63, i32* %64, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  %66 = load i32, i32* %6, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @EmitWhiteBlackD50(i32 %66, i32* %67, i32* %68)
  %70 = load i32, i32* %6, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %73 = call i32 @EmitIntent(i32 %70, i32* %71, i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %74, i32* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %77 = load i32, i32* %6, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %77, i32* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  ret i32 1
}

declare dso_local i32 @_cmsIOPrintf(i32, i32*, i8*, ...) #1

declare dso_local i32 @EmitNGamma(i32, i32*, i32, i32**) #1

declare dso_local i32 @EmitWhiteBlackD50(i32, i32*, i32*) #1

declare dso_local i32 @EmitIntent(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
