; ModuleID = '/home/carl/AnghaBench/robotjs/src/extr_bitmap_find.c_initBadShiftTable.c'
source_filename = "/home/carl/AnghaBench/robotjs/src/extr_bitmap_find.c_initBadShiftTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*)* @initBadShiftTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initBadShiftTable(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub i64 %16, 1
  %18 = call { i64, i32 } @MMPointMake(i32 %13, i64 %17)
  %19 = bitcast %struct.TYPE_7__* %5 to { i64, i32 }*
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 0
  %21 = extractvalue { i64, i32 } %18, 0
  store i64 %21, i64* %20, align 8
  %22 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 1
  %23 = extractvalue { i64, i32 } %18, 1
  store i32 %23, i32* %22, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = mul i64 %27, %30
  store i64 %31, i64* %6, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @initHashTable(i32* %32, i64 %33, i32 4)
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i64 %36, i64* %37, align 8
  br label %38

38:                                               ; preds = %96, %2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i32 %40, i32* %41, align 8
  br label %42

42:                                               ; preds = %86, %38
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @MMRGBHexAtPoint(%struct.TYPE_8__* %43, i32 %45, i64 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @tableHasKey(i32* %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %80, label %53

53:                                               ; preds = %42
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %58, %60
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub i64 %64, %66
  %68 = call { i64, i32 } @MMPointMake(i32 %61, i64 %67)
  %69 = bitcast %struct.TYPE_7__* %9 to { i64, i32 }*
  %70 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %69, i32 0, i32 0
  %71 = extractvalue { i64, i32 } %68, 0
  store i64 %71, i64* %70, align 8
  %72 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %69, i32 0, i32 1
  %73 = extractvalue { i64, i32 } %68, 1
  store i32 %73, i32* %72, align 8
  %74 = bitcast %struct.TYPE_7__* %9 to { i64, i32 }*
  %75 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %74, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @addNodeToTable(i32* %54, i32 %55, i64 %76, i32 %78)
  br label %80

80:                                               ; preds = %53, %42
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %90

85:                                               ; preds = %80
  br label %86

86:                                               ; preds = %85
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %87, align 8
  br label %42

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %100

95:                                               ; preds = %90
  br label %96

96:                                               ; preds = %95
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, -1
  store i64 %99, i64* %97, align 8
  br label %38

100:                                              ; preds = %94
  ret void
}

declare dso_local { i64, i32 } @MMPointMake(i32, i64) #1

declare dso_local i32 @initHashTable(i32*, i64, i32) #1

declare dso_local i32 @MMRGBHexAtPoint(%struct.TYPE_8__*, i32, i64) #1

declare dso_local i32 @tableHasKey(i32*, i32) #1

declare dso_local i32 @addNodeToTable(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
