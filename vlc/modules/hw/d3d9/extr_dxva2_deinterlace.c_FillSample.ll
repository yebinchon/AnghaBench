; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/d3d9/extr_dxva2_deinterlace.c_FillSample.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/d3d9/extr_dxva2_deinterlace.c_FillSample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.deinterlace_ctx = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32 }

@DXVA2_SampleFieldInterleavedEvenFirst = common dso_local global i32 0, align 4
@DXVA2_SampleFieldInterleavedOddFirst = common dso_local global i32 0, align 4
@DXVA2_SampleData_RFF_TFF_Present = common dso_local global i32 0, align 4
@DXVA2_SampleData_TFF = common dso_local global i32 0, align 4
@DXVA2_SampleData_RFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.deinterlace_ctx*, %struct.TYPE_10__*, i32*, i32*, i32)* @FillSample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FillSample(%struct.TYPE_12__* %0, %struct.deinterlace_ctx* %1, %struct.TYPE_10__* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.deinterlace_ctx*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store %struct.deinterlace_ctx* %1, %struct.deinterlace_ctx** %8, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %15 = call %struct.TYPE_11__* @ActiveD3D9PictureSys(%struct.TYPE_10__* %14)
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %13, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* @DXVA2_SampleFieldInterleavedEvenFirst, align 4
  br label %29

27:                                               ; preds = %6
  %28 = load i32, i32* @DXVA2_SampleFieldInterleavedOddFirst, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 6
  %37 = call i32 @FillExtendedFormat(i32* %34, %struct.TYPE_13__* %36)
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 5
  store i64 0, i64* %39, align 8
  %40 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %8, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %43 = call i32 @GetFieldDuration(%struct.deinterlace_ctx* %40, i32* %41, %struct.TYPE_10__* %42)
  %44 = call i32 @MSFTIME_FROM_VLC_TICK(i32 %43)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @DXVA2_SampleData_RFF_TFF_Present, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %29
  %53 = load i32, i32* @DXVA2_SampleData_TFF, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %64

58:                                               ; preds = %29
  %59 = load i32, i32* @DXVA2_SampleData_RFF, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58, %52
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  store i32 %66, i32* %70, align 8
  %71 = call i32 (...) @DXVA2_Fixed32OpaqueAlpha()
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  ret void
}

declare dso_local %struct.TYPE_11__* @ActiveD3D9PictureSys(%struct.TYPE_10__*) #1

declare dso_local i32 @FillExtendedFormat(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @MSFTIME_FROM_VLC_TICK(i32) #1

declare dso_local i32 @GetFieldDuration(%struct.deinterlace_ctx*, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @DXVA2_Fixed32OpaqueAlpha(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
