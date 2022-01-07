; ModuleID = '/home/carl/AnghaBench/vlc/modules/spu/extr_audiobargraph_v.c_FilterSub.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/spu/extr_audiobargraph_v.c_FilterSub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i64, %struct.TYPE_22__*, i64, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i64, i64, i32, i32, i32, i32 }

@VLC_CODEC_YUVA = common dso_local global i32 0, align 4
@Y_PLANE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"cannot allocate SPU region\00", align 1
@SUBPICTURE_ALIGN_RIGHT = common dso_local global i32 0, align 4
@SUBPICTURE_ALIGN_TOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_24__*, i32)* @FilterSub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @FilterSub(%struct.TYPE_24__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_20__, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  store %struct.TYPE_25__* %14, %struct.TYPE_25__** %6, align 8
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 6
  store %struct.TYPE_26__* %16, %struct.TYPE_26__** %7, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 2
  %19 = call i32 @vlc_mutex_lock(i32* %18)
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 2
  %27 = call i32 @vlc_mutex_unlock(i32* %26)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %3, align 8
  br label %141

28:                                               ; preds = %2
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %30, align 8
  store %struct.TYPE_23__* %31, %struct.TYPE_23__** %11, align 8
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %33 = call %struct.TYPE_21__* @filter_NewSubpicture(%struct.TYPE_24__* %32)
  store %struct.TYPE_21__* %33, %struct.TYPE_21__** %8, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %35 = icmp ne %struct.TYPE_21__* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  br label %136

37:                                               ; preds = %28
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 4
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %51 = icmp ne %struct.TYPE_23__* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %37
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52, %37
  br label %136

58:                                               ; preds = %52
  %59 = load i32, i32* @VLC_CODEC_YUVA, align 4
  %60 = call i32 @video_format_Init(%struct.TYPE_20__* %10, i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %64, align 8
  %66 = load i64, i64* @Y_PLANE, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 6
  store i32 %69, i32* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 7
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %73, align 8
  %75 = load i64, i64* @Y_PLANE, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 4
  store i32 %78, i32* %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 2
  store i64 0, i64* %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = call %struct.TYPE_22__* @subpicture_region_New(%struct.TYPE_20__* %10)
  store %struct.TYPE_22__* %83, %struct.TYPE_22__** %9, align 8
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %85 = icmp ne %struct.TYPE_22__* %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %58
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %88 = call i32 @msg_Err(%struct.TYPE_24__* %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %90 = call i32 @subpicture_Delete(%struct.TYPE_21__* %89)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %8, align 8
  br label %136

91:                                               ; preds = %58
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %96 = call i32 @picture_Copy(i32 %94, %struct.TYPE_23__* %95)
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %91
  %102 = load i32, i32* @SUBPICTURE_ALIGN_RIGHT, align 4
  %103 = load i32, i32* @SUBPICTURE_ALIGN_TOP, align 4
  %104 = or i32 %102, %103
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  br label %117

109:                                              ; preds = %91
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  store i32 0, i32* %116, align 8
  br label %117

117:                                              ; preds = %109, %101
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 4
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 3
  store %struct.TYPE_22__* %128, %struct.TYPE_22__** %130, align 8
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 2
  store i64 %133, i64* %135, align 8
  br label %136

136:                                              ; preds = %117, %86, %57, %36
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 2
  %139 = call i32 @vlc_mutex_unlock(i32* %138)
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  store %struct.TYPE_21__* %140, %struct.TYPE_21__** %3, align 8
  br label %141

141:                                              ; preds = %136, %24
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  ret %struct.TYPE_21__* %142
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_21__* @filter_NewSubpicture(%struct.TYPE_24__*) #1

declare dso_local i32 @video_format_Init(%struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_22__* @subpicture_region_New(%struct.TYPE_20__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_24__*, i8*) #1

declare dso_local i32 @subpicture_Delete(%struct.TYPE_21__*) #1

declare dso_local i32 @picture_Copy(i32, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
