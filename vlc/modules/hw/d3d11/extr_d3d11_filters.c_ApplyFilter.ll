; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/d3d11/extr_d3d11_filters.c_ApplyFilter.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/d3d11/extr_d3d11_filters.c_ApplyFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.filter_level = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i64, i64, i64, i64 }
%struct.TYPE_16__ = type { i64, i64, i64, i64 }
%struct.TYPE_17__ = type { i32*, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32, %struct.filter_level*, i32*, i32*, %struct.TYPE_14__*)* @ApplyFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ApplyFilter(%struct.TYPE_15__* %0, i32 %1, %struct.filter_level* %2, i32* %3, i32* %4, %struct.TYPE_14__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.filter_level*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_16__, align 8
  %17 = alloca %struct.TYPE_17__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.filter_level* %2, %struct.filter_level** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.TYPE_14__* %5, %struct.TYPE_14__** %13, align 8
  %18 = load %struct.filter_level*, %struct.filter_level** %10, align 8
  %19 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %18, i32 0, i32 1
  %20 = call i32 @atomic_load(i32* %19)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = load %struct.filter_level*, %struct.filter_level** %10, align 8
  %23 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %110

28:                                               ; preds = %6
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @TRUE, align 4
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @ID3D11VideoContext_VideoProcessorSetStreamFilter(i32 %32, i32 %36, i32 0, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @FALSE, align 4
  %50 = call i32 @ID3D11VideoContext_VideoProcessorSetStreamAutoProcessingMode(i32 %44, i32 %48, i32 0, i32 %49)
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 2
  store i64 %53, i64* %54, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  store i64 %57, i64* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 3
  store i64 %64, i64* %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  store i64 %71, i64* %72, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @TRUE, align 4
  %82 = call i32 @ID3D11VideoContext_VideoProcessorSetStreamSourceRect(i32 %76, i32 %80, i32 0, i32 %81, %struct.TYPE_16__* %16)
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @TRUE, align 4
  %92 = call i32 @ID3D11VideoContext_VideoProcessorSetStreamDestRect(i32 %86, i32 %90, i32 0, i32 %91, %struct.TYPE_16__* %16)
  %93 = bitcast %struct.TYPE_17__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %93, i8 0, i64 16, i1 false)
  %94 = load i32, i32* @TRUE, align 4
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 1
  store i32 %94, i32* %95, align 8
  %96 = load i32*, i32** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  store i32* %96, i32** %97, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %12, align 8
  %107 = call i32 @ID3D11VideoContext_VideoProcessorBlt(i32 %101, i32 %105, i32* %106, i32 0, i32 1, %struct.TYPE_17__* %17)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = call i32 @SUCCEEDED(i32 %108)
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %28, %27
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

declare dso_local i32 @atomic_load(i32*) #1

declare dso_local i32 @ID3D11VideoContext_VideoProcessorSetStreamFilter(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ID3D11VideoContext_VideoProcessorSetStreamAutoProcessingMode(i32, i32, i32, i32) #1

declare dso_local i32 @ID3D11VideoContext_VideoProcessorSetStreamSourceRect(i32, i32, i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @ID3D11VideoContext_VideoProcessorSetStreamDestRect(i32, i32, i32, i32, %struct.TYPE_16__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ID3D11VideoContext_VideoProcessorBlt(i32, i32, i32*, i32, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @SUCCEEDED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
