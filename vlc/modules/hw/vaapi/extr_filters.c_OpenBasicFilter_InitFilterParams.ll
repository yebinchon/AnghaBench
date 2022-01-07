; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_filters.c_OpenBasicFilter_InitFilterParams.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_filters.c_OpenBasicFilter_InitFilterParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.basic_filter_data = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*, i8**, i32*, i32*)* @OpenBasicFilter_InitFilterParams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenBasicFilter_InitFilterParams(%struct.TYPE_16__* %0, i8* %1, i8** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.basic_filter_data*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_19__, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to %struct.basic_filter_data*
  store %struct.basic_filter_data* %20, %struct.basic_filter_data** %12, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  store %struct.TYPE_17__* %23, %struct.TYPE_17__** %13, align 8
  store i32 1, i32* %15, align 4
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %25 = call i32 @VLC_OBJECT(%struct.TYPE_16__* %24)
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.basic_filter_data*, %struct.basic_filter_data** %12, align 8
  %35 = getelementptr inbounds %struct.basic_filter_data, %struct.basic_filter_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @vlc_vaapi_QueryVideoProcFilterCaps(i32 %25, i32 %29, i32 %33, i32 %36, %struct.TYPE_19__* %14, i32* %15)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %5
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39, %5
  %43 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %43, i32* %6, align 4
  br label %103

44:                                               ; preds = %39
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %46 = load %struct.basic_filter_data*, %struct.basic_filter_data** %12, align 8
  %47 = getelementptr inbounds %struct.basic_filter_data, %struct.basic_filter_data* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @var_InheritFloat(%struct.TYPE_16__* %45, i32 %49)
  %51 = load %struct.basic_filter_data*, %struct.basic_filter_data** %12, align 8
  %52 = getelementptr inbounds %struct.basic_filter_data, %struct.basic_filter_data* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.basic_filter_data*, %struct.basic_filter_data** %12, align 8
  %58 = getelementptr inbounds %struct.basic_filter_data, %struct.basic_filter_data* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call float @VLC_CLIP(i32 %50, i32 %56, i32 %62)
  store float %63, float* %16, align 4
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.basic_filter_data*, %struct.basic_filter_data** %12, align 8
  %67 = getelementptr inbounds %struct.basic_filter_data, %struct.basic_filter_data* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load float, float* %16, align 4
  %70 = load %struct.basic_filter_data*, %struct.basic_filter_data** %12, align 8
  %71 = getelementptr inbounds %struct.basic_filter_data, %struct.basic_filter_data* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = load %struct.basic_filter_data*, %struct.basic_filter_data** %12, align 8
  %75 = getelementptr inbounds %struct.basic_filter_data, %struct.basic_filter_data* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = bitcast %struct.TYPE_13__* %73 to i64*
  %79 = load i64, i64* %78, align 4
  %80 = call float @GET_DRV_SIGMA(float %69, i64 %79, i32 %77)
  store float %80, float* %17, align 4
  %81 = load %struct.basic_filter_data*, %struct.basic_filter_data** %12, align 8
  %82 = getelementptr inbounds %struct.basic_filter_data, %struct.basic_filter_data* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load float, float* %17, align 4
  %85 = call i32 @vlc_atomic_init_float(i32* %83, float %84)
  %86 = load i32*, i32** %10, align 8
  store i32 4, i32* %86, align 4
  %87 = load i32*, i32** %11, align 8
  store i32 1, i32* %87, align 4
  %88 = call %struct.TYPE_18__* @calloc(i32 1, i32 4)
  store %struct.TYPE_18__* %88, %struct.TYPE_18__** %18, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %90 = icmp ne %struct.TYPE_18__* %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %44
  %92 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %92, i32* %6, align 4
  br label %103

93:                                               ; preds = %44
  %94 = load %struct.basic_filter_data*, %struct.basic_filter_data** %12, align 8
  %95 = getelementptr inbounds %struct.basic_filter_data, %struct.basic_filter_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %100 = bitcast %struct.TYPE_18__* %99 to i8*
  %101 = load i8**, i8*** %9, align 8
  store i8* %100, i8** %101, align 8
  %102 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %93, %91, %42
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i64 @vlc_vaapi_QueryVideoProcFilterCaps(i32, i32, i32, i32, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_16__*) #1

declare dso_local float @VLC_CLIP(i32, i32, i32) #1

declare dso_local i32 @var_InheritFloat(%struct.TYPE_16__*, i32) #1

declare dso_local float @GET_DRV_SIGMA(float, i64, i32) #1

declare dso_local i32 @vlc_atomic_init_float(i32*, float) #1

declare dso_local %struct.TYPE_18__* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
