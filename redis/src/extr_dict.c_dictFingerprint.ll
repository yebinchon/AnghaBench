; ModuleID = '/home/carl/AnghaBench/redis/src/extr_dict.c_dictFingerprint.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_dict.c_dictFingerprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dictFingerprint(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca [6 x i64], align 16
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i64 0, i64* %4, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i64 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds [6 x i64], [6 x i64]* %3, i64 0, i64 0
  store i64 %11, i64* %12, align 16
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds [6 x i64], [6 x i64]* %3, i64 0, i64 1
  store i64 %18, i64* %19, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds [6 x i64], [6 x i64]* %3, i64 0, i64 2
  store i64 %25, i64* %26, align 16
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds [6 x i64], [6 x i64]* %3, i64 0, i64 3
  store i64 %32, i64* %33, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds [6 x i64], [6 x i64]* %3, i64 0, i64 4
  store i64 %39, i64* %40, align 16
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds [6 x i64], [6 x i64]* %3, i64 0, i64 5
  store i64 %46, i64* %47, align 8
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %93, %1
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 6
  br i1 %50, label %51, label %96

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [6 x i64], [6 x i64]* %3, i64 0, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %4, align 8
  %57 = add nsw i64 %56, %55
  store i64 %57, i64* %4, align 8
  %58 = load i64, i64* %4, align 8
  %59 = xor i64 %58, -1
  %60 = load i64, i64* %4, align 8
  %61 = shl i64 %60, 21
  %62 = add nsw i64 %59, %61
  store i64 %62, i64* %4, align 8
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* %4, align 8
  %65 = ashr i64 %64, 24
  %66 = xor i64 %63, %65
  store i64 %66, i64* %4, align 8
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* %4, align 8
  %69 = shl i64 %68, 3
  %70 = add nsw i64 %67, %69
  %71 = load i64, i64* %4, align 8
  %72 = shl i64 %71, 8
  %73 = add nsw i64 %70, %72
  store i64 %73, i64* %4, align 8
  %74 = load i64, i64* %4, align 8
  %75 = load i64, i64* %4, align 8
  %76 = ashr i64 %75, 14
  %77 = xor i64 %74, %76
  store i64 %77, i64* %4, align 8
  %78 = load i64, i64* %4, align 8
  %79 = load i64, i64* %4, align 8
  %80 = shl i64 %79, 2
  %81 = add nsw i64 %78, %80
  %82 = load i64, i64* %4, align 8
  %83 = shl i64 %82, 4
  %84 = add nsw i64 %81, %83
  store i64 %84, i64* %4, align 8
  %85 = load i64, i64* %4, align 8
  %86 = load i64, i64* %4, align 8
  %87 = ashr i64 %86, 28
  %88 = xor i64 %85, %87
  store i64 %88, i64* %4, align 8
  %89 = load i64, i64* %4, align 8
  %90 = load i64, i64* %4, align 8
  %91 = shl i64 %90, 31
  %92 = add nsw i64 %89, %91
  store i64 %92, i64* %4, align 8
  br label %93

93:                                               ; preds = %51
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %48

96:                                               ; preds = %48
  %97 = load i64, i64* %4, align 8
  ret i64 %97
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
