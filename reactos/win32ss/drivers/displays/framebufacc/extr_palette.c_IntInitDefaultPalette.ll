; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/drivers/displays/framebufacc/extr_palette.c_IntInitDefaultPalette.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/drivers/displays/framebufacc/extr_palette.c_IntInitDefaultPalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, %struct.TYPE_9__*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i32* }

@PAL_BITFIELDS = common dso_local global i32 0, align 4
@ALLOC_TAG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@BASEPALETTE = common dso_local global i64 0, align 8
@PAL_INDEXED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IntInitDefaultPalette(%struct.TYPE_8__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sgt i32 %10, 8
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = load i32, i32* @PAL_BITFIELDS, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @EngCreatePalette(i32 %13, i32 0, i32* null, i32 %16, i32 %19, i32 %22)
  %24 = bitcast i8* %23 to i32*
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  store i32* %24, i32** %28, align 8
  br label %99

29:                                               ; preds = %2
  %30 = load i32, i32* @ALLOC_TAG, align 4
  %31 = call %struct.TYPE_9__* @EngAllocMem(i32 0, i32 1024, i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %33, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = icmp eq %struct.TYPE_9__* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %3, align 4
  br label %105

40:                                               ; preds = %29
  store i32 256, i32* %6, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  store %struct.TYPE_9__* %43, %struct.TYPE_9__** %7, align 8
  br label %44

44:                                               ; preds = %70, %40
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %75

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = ashr i32 %48, 5
  %50 = and i32 %49, 7
  %51 = mul nsw i32 %50, 255
  %52 = sdiv i32 %51, 7
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %6, align 4
  %56 = ashr i32 %55, 3
  %57 = and i32 %56, 3
  %58 = mul nsw i32 %57, 255
  %59 = sdiv i32 %58, 3
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, 7
  %64 = mul nsw i32 %63, 255
  %65 = sdiv i32 %64, 7
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 3
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %47
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %6, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 1
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %7, align 8
  br label %44

75:                                               ; preds = %44
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = load i64, i64* @BASEPALETTE, align 8
  %80 = call i32 @memcpy(%struct.TYPE_9__* %78, i64 %79, i32 40)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i64 246
  %85 = load i64, i64* @BASEPALETTE, align 8
  %86 = add nsw i64 %85, 10
  %87 = call i32 @memcpy(%struct.TYPE_9__* %84, i64 %86, i32 40)
  %88 = load i32, i32* @PAL_INDEXED, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = bitcast %struct.TYPE_9__* %91 to i32*
  %93 = call i8* @EngCreatePalette(i32 %88, i32 256, i32* %92, i32 0, i32 0, i32 0)
  %94 = bitcast i8* %93 to i32*
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  store i32* %94, i32** %96, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  store i32* %94, i32** %98, align 8
  br label %99

99:                                               ; preds = %75, %12
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %99, %38
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i8* @EngCreatePalette(i32, i32, i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_9__* @EngAllocMem(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_9__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
