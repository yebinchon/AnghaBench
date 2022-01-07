; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_ReadOffsetArray.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_ReadOffsetArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.TYPE_3__*, i64, i64, i64)* @ReadOffsetArray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadOffsetArray(i32 %0, i32* %1, %struct.TYPE_3__* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %72, %6
  %16 = load i64, i64* %14, align 8
  %17 = load i64, i64* %11, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %75

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = load i64, i64* %14, align 8
  %25 = load i64, i64* %13, align 8
  %26 = call i32 @ReadOneElem(i32 %20, i32* %21, i32* %23, i64 %24, i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %7, align 4
  br label %77

30:                                               ; preds = %19
  %31 = load i32, i32* %8, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i64, i64* %14, align 8
  %36 = load i64, i64* %13, align 8
  %37 = call i32 @ReadOneElem(i32 %31, i32* %32, i32* %34, i64 %35, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %30
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %7, align 4
  br label %77

41:                                               ; preds = %30
  %42 = load i64, i64* %12, align 8
  %43 = icmp sgt i64 %42, 16
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* %13, align 8
  %51 = call i32 @ReadOneElem(i32 %45, i32* %46, i32* %48, i64 %49, i64 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %44
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %7, align 4
  br label %77

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %41
  %57 = load i64, i64* %12, align 8
  %58 = icmp sgt i64 %57, 24
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %14, align 8
  %65 = load i64, i64* %13, align 8
  %66 = call i32 @ReadOneElem(i32 %60, i32* %61, i32* %63, i64 %64, i64 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %7, align 4
  br label %77

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70, %56
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %14, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %14, align 8
  br label %15

75:                                               ; preds = %15
  %76 = load i32, i32* @TRUE, align 4
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %75, %68, %53, %39, %28
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @ReadOneElem(i32, i32*, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
