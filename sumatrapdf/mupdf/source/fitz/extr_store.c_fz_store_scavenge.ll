; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_store.c_fz_store_scavenge.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_store.c_fz_store_scavenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }

@FZ_STORE_UNLIMITED = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fz_store_scavenge(%struct.TYPE_10__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %8, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %15 = icmp eq %struct.TYPE_9__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %100

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %96, %17
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %20, 16
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i64 0, i64* %9, align 8
  br label %53

23:                                               ; preds = %18
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @FZ_STORE_UNLIMITED, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %32, 16
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 16, %35
  %37 = mul nsw i32 %33, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %9, align 8
  br label %52

39:                                               ; preds = %23
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 16, %44
  %46 = sdiv i32 %42, %45
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 15, %48
  %50 = mul nsw i32 %46, %49
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %9, align 8
  br label %52

52:                                               ; preds = %39, %29
  br label %53

53:                                               ; preds = %52, %22
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @SIZE_MAX, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 %58, %62
  %64 = icmp ugt i64 %57, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %53
  %66 = load i64, i64* @SIZE_MAX, align 8
  %67 = load i64, i64* %9, align 8
  %68 = sub i64 %66, %67
  store i64 %68, i64* %10, align 8
  br label %89

69:                                               ; preds = %53
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = add i64 %70, %74
  %76 = load i64, i64* %9, align 8
  %77 = icmp ugt i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %96

79:                                               ; preds = %69
  %80 = load i64, i64* %6, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = add i64 %80, %84
  %86 = load i64, i64* %9, align 8
  %87 = sub i64 %85, %86
  store i64 %87, i64* %10, align 8
  br label %88

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88, %65
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %91 = load i64, i64* %10, align 8
  %92 = call i64 @scavenge(%struct.TYPE_10__* %90, i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 1, i32* %4, align 4
  br label %100

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95, %78
  %97 = load i64, i64* %9, align 8
  %98 = icmp ugt i64 %97, 0
  br i1 %98, label %18, label %99

99:                                               ; preds = %96
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %99, %94, %16
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i64 @scavenge(%struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
