; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_ExhaustiveCheck3DinterpolationTrilinear16.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_ExhaustiveCheck3DinterpolationTrilinear16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (i32, i32*, i32*, %struct.TYPE_7__*)* }

@__const.ExhaustiveCheck3DinterpolationTrilinear16.Table = private unnamed_addr constant [24 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 65535, i32 0, i32 65535, i32 0, i32 0, i32 65535, i32 65535, i32 65535, i32 0, i32 0, i32 65535, i32 0, i32 65535, i32 65535, i32 65535, i32 0, i32 65535, i32 65535, i32 65535], align 16
@CMS_LERP_FLAGS_TRILINEAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Channel 1\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Channel 2\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Channel 3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ExhaustiveCheck3DinterpolationTrilinear16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ExhaustiveCheck3DinterpolationTrilinear16() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [3 x i32], align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca [24 x i32], align 16
  %9 = bitcast [24 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([24 x i32]* @__const.ExhaustiveCheck3DinterpolationTrilinear16.Table to i8*), i64 96, i1 false)
  %10 = call i32 (...) @DbgThread()
  %11 = getelementptr inbounds [24 x i32], [24 x i32]* %8, i64 0, i64 0
  %12 = load i32, i32* @CMS_LERP_FLAGS_TRILINEAR, align 4
  %13 = call %struct.TYPE_7__* @_cmsComputeInterpParams(i32 %10, i32 2, i32 3, i32 3, i32* %11, i32 %12)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %73, %0
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 255
  br i1 %16, label %17, label %76

17:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %69, %17
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 255
  br i1 %20, label %21, label %72

21:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %65, %21
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 255
  br i1 %24, label %25, label %68

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %4, align 4
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  store i32 %30, i32* %31, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32 (i32, i32*, i32*, %struct.TYPE_7__*)*, i32 (i32, i32*, i32*, %struct.TYPE_7__*)** %34, align 8
  %36 = call i32 (...) @DbgThread()
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %40 = call i32 %35(i32 %36, i32* %37, i32* %38, %struct.TYPE_7__* %39)
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @IsGoodWord(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %25
  br label %80

48:                                               ; preds = %25
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @IsGoodWord(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  br label %80

56:                                               ; preds = %48
  %57 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @IsGoodWord(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  br label %80

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %22

68:                                               ; preds = %22
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %18

72:                                               ; preds = %18
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %14

76:                                               ; preds = %14
  %77 = call i32 (...) @DbgThread()
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %79 = call i32 @_cmsFreeInterpParams(i32 %77, %struct.TYPE_7__* %78)
  store i32 1, i32* %1, align 4
  br label %84

80:                                               ; preds = %63, %55, %47
  %81 = call i32 (...) @DbgThread()
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %83 = call i32 @_cmsFreeInterpParams(i32 %81, %struct.TYPE_7__* %82)
  store i32 0, i32* %1, align 4
  br label %84

84:                                               ; preds = %80, %76
  %85 = load i32, i32* %1, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_7__* @_cmsComputeInterpParams(i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @DbgThread(...) #2

declare dso_local i32 @IsGoodWord(i8*, i32, i32) #2

declare dso_local i32 @_cmsFreeInterpParams(i32, %struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
