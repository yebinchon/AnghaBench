; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_Check1D.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_Check1D.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (i32, i64*, i64*, %struct.TYPE_7__*)* }

@CMS_LERP_FLAGS_16BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"(%dp): Must be %x, But is %x : \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @Check1D to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Check1D(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i64*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 8, %14
  %16 = trunc i64 %15 to i32
  %17 = call i64 @malloc(i32 %16)
  %18 = inttoptr i64 %17 to i64*
  store i64* %18, i64** %12, align 8
  %19 = load i64*, i64** %12, align 8
  %20 = icmp eq i64* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %81

22:                                               ; preds = %3
  %23 = call i32 (...) @DbgThread()
  %24 = load i32, i32* %5, align 4
  %25 = load i64*, i64** %12, align 8
  %26 = load i32, i32* @CMS_LERP_FLAGS_16BITS, align 4
  %27 = call %struct.TYPE_7__* @_cmsComputeInterpParams(i32 %23, i32 %24, i32 1, i32 1, i64* %25, i32 %26)
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %11, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %29 = icmp eq %struct.TYPE_7__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %81

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = load i64*, i64** %12, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @BuildTable(i32 %32, i64* %33, i32 %34)
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %72, %31
  %37 = load i32, i32* %8, align 4
  %38 = icmp sle i32 %37, 65535
  br i1 %38, label %39, label %75

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32 (i32, i64*, i64*, %struct.TYPE_7__*)*, i32 (i32, i64*, i64*, %struct.TYPE_7__*)** %44, align 8
  %46 = call i32 (...) @DbgThread()
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %48 = call i32 %45(i32 %46, i64* %9, i64* %10, %struct.TYPE_7__* %47)
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = load i64, i64* %10, align 8
  %53 = sub nsw i64 65535, %52
  store i64 %53, i64* %10, align 8
  br label %54

54:                                               ; preds = %51, %39
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %9, align 8
  %57 = sub nsw i64 %55, %56
  %58 = call i32 @abs(i64 %57)
  %59 = load i32, i32* %7, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %54
  %62 = load i32, i32* %5, align 4
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @Fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %62, i64 %63, i64 %64)
  %66 = call i32 (...) @DbgThread()
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %68 = call i32 @_cmsFreeInterpParams(i32 %66, %struct.TYPE_7__* %67)
  %69 = load i64*, i64** %12, align 8
  %70 = call i32 @free(i64* %69)
  store i32 0, i32* %4, align 4
  br label %81

71:                                               ; preds = %54
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %36

75:                                               ; preds = %36
  %76 = call i32 (...) @DbgThread()
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %78 = call i32 @_cmsFreeInterpParams(i32 %76, %struct.TYPE_7__* %77)
  %79 = load i64*, i64** %12, align 8
  %80 = call i32 @free(i64* %79)
  store i32 1, i32* %4, align 4
  br label %81

81:                                               ; preds = %75, %61, %30, %21
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i64 @malloc(i32) #1

declare dso_local %struct.TYPE_7__* @_cmsComputeInterpParams(i32, i32, i32, i32, i64*, i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @BuildTable(i32, i64*, i32) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @Fail(i8*, i32, i64, i64) #1

declare dso_local i32 @_cmsFreeInterpParams(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
