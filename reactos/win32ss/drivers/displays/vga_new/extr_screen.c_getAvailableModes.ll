; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/drivers/displays/vga_new/extr_screen.c_getAvailableModes.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/drivers/displays/vga_new/extr_screen.c_getAvailableModes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i64 }

@IOCTL_VIDEO_QUERY_NUM_AVAIL_MODES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"getAvailableModes failed VIDEO_QUERY_NUM_AVAIL_MODES\0A\00", align 1
@ALLOC_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"getAvailableModes failed EngAllocMem\0A\00", align 1
@IOCTL_VIDEO_QUERY_AVAIL_MODES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"getAvailableModes failed VIDEO_QUERY_AVAIL_MODES\0A\00", align 1
@VIDEO_MODE_GRAPHICS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getAvailableModes(i32 %0, %struct.TYPE_6__** %1, i32* %2) #0 {
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
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i32 @DISPDBG(i32 ptrtoint ([54 x i8]* @.str to i32))
  store i32 0, i32* %4, align 4
  br label %98

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 %22, %24
  %26 = load i32, i32* @ALLOC_TAG, align 4
  %27 = call i64 @EngAllocMem(i32 0, i32 %25, i32 %26)
  %28 = inttoptr i64 %27 to %struct.TYPE_6__*
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %29, align 8
  %30 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = icmp eq %struct.TYPE_6__* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %17
  %34 = call i32 @DISPDBG(i32 ptrtoint ([38 x i8]* @.str.1 to i32))
  store i32 0, i32* %4, align 4
  br label %98

35:                                               ; preds = %17
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @IOCTL_VIDEO_QUERY_AVAIL_MODES, align 4
  %38 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 %41, %43
  %45 = call i64 @EngDeviceIoControl(i32 %36, i32 %37, i32* null, i32 0, %struct.TYPE_6__* %39, i32 %44, i32* %8)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %35
  %48 = call i32 @DISPDBG(i32 ptrtoint ([50 x i8]* @.str.2 to i32))
  %49 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = call i32 @EngFreeMem(%struct.TYPE_6__* %50)
  %52 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %52, align 8
  store i32 0, i32* %4, align 4
  br label %98

53:                                               ; preds = %35
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %8, align 4
  %56 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %10, align 8
  br label %58

58:                                               ; preds = %87, %53
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %8, align 4
  %61 = icmp ne i32 %59, 0
  br i1 %61, label %62, label %95

62:                                               ; preds = %58
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 4
  br i1 %66, label %84, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @VIDEO_MODE_GRAPHICS, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %67
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 1
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %82, 800
  br i1 %83, label %84, label %87

84:                                               ; preds = %79, %74, %67, %62
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 6
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %84, %79
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %89 = ptrtoint %struct.TYPE_6__* %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %89, %92
  %94 = inttoptr i64 %93 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %94, %struct.TYPE_6__** %10, align 8
  br label %58

95:                                               ; preds = %58
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %95, %47, %33, %15
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i64 @EngDeviceIoControl(i32, i32, i32*, i32, %struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @DISPDBG(i32) #1

declare dso_local i64 @EngAllocMem(i32, i32, i32) #1

declare dso_local i32 @EngFreeMem(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
