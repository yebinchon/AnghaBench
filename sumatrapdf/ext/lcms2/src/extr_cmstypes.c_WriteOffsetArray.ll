; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_WriteOffsetArray.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_WriteOffsetArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.TYPE_3__*, i64, i64)* @WriteOffsetArray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WriteOffsetArray(i32 %0, i32* %1, %struct.TYPE_3__* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %66, %5
  %14 = load i64, i64* %12, align 8
  %15 = load i64, i64* %10, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %69

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  %22 = load i64, i64* %12, align 8
  %23 = call i32 @WriteOneElem(i32 %18, i32* %19, i32* %21, i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %6, align 4
  br label %71

27:                                               ; preds = %17
  %28 = load i32, i32* %7, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i64, i64* %12, align 8
  %33 = call i32 @WriteOneElem(i32 %28, i32* %29, i32* %31, i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %6, align 4
  br label %71

37:                                               ; preds = %27
  %38 = load i64, i64* %11, align 8
  %39 = icmp sgt i64 %38, 16
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %12, align 8
  %46 = call i32 @WriteOneElem(i32 %41, i32* %42, i32* %44, i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %6, align 4
  br label %71

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %37
  %52 = load i64, i64* %11, align 8
  %53 = icmp sgt i64 %52, 24
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @WriteOneElem(i32 %55, i32* %56, i32* %58, i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %54
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %6, align 4
  br label %71

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %51
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %12, align 8
  br label %13

69:                                               ; preds = %13
  %70 = load i32, i32* @TRUE, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %69, %62, %48, %35, %25
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @WriteOneElem(i32, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
