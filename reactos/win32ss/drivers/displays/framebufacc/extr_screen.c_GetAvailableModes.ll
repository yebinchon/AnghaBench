; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/drivers/displays/framebufacc/extr_screen.c_GetAvailableModes.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/drivers/displays/framebufacc/extr_screen.c_GetAvailableModes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i64 }

@IOCTL_VIDEO_QUERY_NUM_AVAIL_MODES = common dso_local global i32 0, align 4
@ALLOC_TAG = common dso_local global i32 0, align 4
@IOCTL_VIDEO_QUERY_AVAIL_MODES = common dso_local global i32 0, align 4
@VIDEO_MODE_GRAPHICS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetAvailableModes(i32 %0, %struct.TYPE_6__** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @IOCTL_VIDEO_QUERY_NUM_AVAIL_MODES, align 4
  %13 = call i64 @EngDeviceIoControl(i32 %11, i32 %12, i32* null, i32 0, %struct.TYPE_6__* %9, i32 32, i32* %8)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %105

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %21, %23
  %25 = load i32, i32* @ALLOC_TAG, align 4
  %26 = call i64 @EngAllocMem(i32 0, i32 %24, i32 %25)
  %27 = inttoptr i64 %26 to %struct.TYPE_6__*
  %28 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %28, align 8
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = icmp eq %struct.TYPE_6__* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %105

33:                                               ; preds = %16
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @IOCTL_VIDEO_QUERY_AVAIL_MODES, align 4
  %36 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %39, %41
  %43 = call i64 @EngDeviceIoControl(i32 %34, i32 %35, i32* null, i32 0, %struct.TYPE_6__* %37, i32 %42, i32* %8)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %33
  %46 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = call i32 @EngFreeMem(%struct.TYPE_6__* %47)
  %49 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %49, align 8
  store i32 0, i32* %4, align 4
  br label %105

50:                                               ; preds = %33
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %8, align 4
  %53 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** %10, align 8
  br label %55

55:                                               ; preds = %94, %50
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %8, align 4
  %58 = icmp ne i32 %56, 0
  br i1 %58, label %59, label %102

59:                                               ; preds = %55
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 1
  br i1 %63, label %91, label %64

64:                                               ; preds = %59
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @VIDEO_MODE_GRAPHICS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %64
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 8
  br i1 %75, label %76, label %94

76:                                               ; preds = %71
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 16
  br i1 %80, label %81, label %94

81:                                               ; preds = %76
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 24
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 32
  br i1 %90, label %91, label %94

91:                                               ; preds = %86, %64, %59
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 5
  store i64 0, i64* %93, align 8
  br label %94

94:                                               ; preds = %91, %86, %81, %76, %71
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %96 = ptrtoint %struct.TYPE_6__* %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %96, %99
  %101 = inttoptr i64 %100 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %101, %struct.TYPE_6__** %10, align 8
  br label %55

102:                                              ; preds = %55
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %102, %45, %32, %15
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i64 @EngDeviceIoControl(i32, i32, i32*, i32, %struct.TYPE_6__*, i32, i32*) #1

declare dso_local i64 @EngAllocMem(i32, i32, i32) #1

declare dso_local i32 @EngFreeMem(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
