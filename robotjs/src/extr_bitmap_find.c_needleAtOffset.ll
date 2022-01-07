; ModuleID = '/home/carl/AnghaBench/robotjs/src/extr_bitmap_find.c_needleAtOffset.c'
source_filename = "/home/carl/AnghaBench/robotjs/src/extr_bitmap_find.c_needleAtOffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_9__*, i64, i64, float)* @needleAtOffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @needleAtOffset(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, i64 %2, i64 %3, float %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca float, align 4
  %11 = alloca %struct.TYPE_8__, align 8
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = bitcast %struct.TYPE_8__* %7 to { i64, i64 }*
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 0
  store i64 %2, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 1
  store i64 %3, i64* %17, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %9, align 8
  store float %4, float* %10, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %20, 1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %24, 1
  %26 = call { i64, i64 } @MMPointMake(i64 %21, i64 %25)
  %27 = bitcast %struct.TYPE_8__* %11 to { i64, i64 }*
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %27, i32 0, i32 0
  %29 = extractvalue { i64, i64 } %26, 0
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %27, i32 0, i32 1
  %31 = extractvalue { i64, i64 } %26, 1
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  br label %35

35:                                               ; preds = %80, %5
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  store i64 %37, i64* %38, align 8
  br label %39

39:                                               ; preds = %70, %35
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @MMRGBHexAtPoint(%struct.TYPE_9__* %40, i64 %42, i64 %44)
  store i32 %45, i32* %13, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %48, %50
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %53, %55
  %57 = call i32 @MMRGBHexAtPoint(%struct.TYPE_9__* %46, i64 %51, i64 %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load float, float* %10, align 4
  %61 = call i32 @MMRGBHexSimilarToColor(i32 %58, i32 %59, float %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %85

64:                                               ; preds = %39
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %74

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, -1
  store i64 %73, i64* %71, align 8
  br label %39

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %84

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %79
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, -1
  store i64 %83, i64* %81, align 8
  br label %35

84:                                               ; preds = %78
  store i32 1, i32* %6, align 4
  br label %85

85:                                               ; preds = %84, %63
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local { i64, i64 } @MMPointMake(i64, i64) #1

declare dso_local i32 @MMRGBHexAtPoint(%struct.TYPE_9__*, i64, i64) #1

declare dso_local i32 @MMRGBHexSimilarToColor(i32, i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
