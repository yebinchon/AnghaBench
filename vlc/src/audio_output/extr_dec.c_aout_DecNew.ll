; ModuleID = '/home/carl/AnghaBench/vlc/src/audio_output/extr_dec.c_aout_DecNew.c'
source_filename = "/home/carl/AnghaBench/vlc/src/audio_output/extr_dec.c_aout_DecNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i64, i32, i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_23__, i32, i32, %struct.TYPE_22__, i32, i32*, i32*, i32, %struct.TYPE_24__, %struct.TYPE_24__, %struct.TYPE_24__, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { float, i32, i64, i64, i32, %struct.TYPE_24__* }

@AOUT_CHAN_MAX = common dso_local global i32 0, align 4
@INPUT_CHAN_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"invalid audio channels count\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"excessive audio sample frequency (%u)\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"too low audio sample frequency (%u)\00", align 1
@memory_order_relaxed = common dso_local global i32 0, align 4
@AOUT_FILTERS_CFG_INIT = common dso_local global i32 0, align 4
@AOUT_RESAMPLING_NONE = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aout_DecNew(%struct.TYPE_24__* %0, %struct.TYPE_24__* %1, i32 %2, %struct.TYPE_24__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %15 = call i32 @assert(%struct.TYPE_24__* %14)
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %17 = call i32 @assert(%struct.TYPE_24__* %16)
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %19 = call i32 @assert(%struct.TYPE_24__* %18)
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %5
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %26 = call i32 @aout_FormatNbChannels(%struct.TYPE_24__* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @AOUT_CHAN_MAX, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @INPUT_CHAN_MAX, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38, %34, %29
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %46 = call i32 (%struct.TYPE_24__*, i8*, ...) @msg_Err(%struct.TYPE_24__* %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %175

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %5
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 384000
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (%struct.TYPE_24__*, i8*, ...) @msg_Err(%struct.TYPE_24__* %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  store i32 -1, i32* %6, align 4
  br label %175

59:                                               ; preds = %48
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %62, 4000
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (%struct.TYPE_24__*, i8*, ...) @msg_Err(%struct.TYPE_24__* %65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  store i32 -1, i32* %6, align 4
  br label %175

70:                                               ; preds = %59
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %72 = call %struct.TYPE_25__* @aout_owner(%struct.TYPE_24__* %71)
  store %struct.TYPE_25__* %72, %struct.TYPE_25__** %13, align 8
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = call i32* @aout_volume_New(%struct.TYPE_24__* %73, i32* %74)
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 6
  store i32* %75, i32** %77, align 8
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 12
  %80 = load i32, i32* @memory_order_relaxed, align 4
  %81 = call i32 @atomic_store_explicit(i32* %79, i32 0, i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 10
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 9
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 11
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %92 = bitcast %struct.TYPE_24__* %90 to i8*
  %93 = bitcast %struct.TYPE_24__* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 8 %93, i64 24, i1 false)
  %94 = bitcast %struct.TYPE_24__* %88 to i8*
  %95 = bitcast %struct.TYPE_24__* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %94, i8* align 8 %95, i64 24, i1 false)
  %96 = bitcast %struct.TYPE_24__* %86 to i8*
  %97 = bitcast %struct.TYPE_24__* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 8 %97, i64 24, i1 false)
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 5
  store %struct.TYPE_24__* %98, %struct.TYPE_24__** %101, align 8
  %102 = load i32, i32* @AOUT_FILTERS_CFG_INIT, align 4
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 8
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %106 = call i64 @aout_OutputNew(%struct.TYPE_24__* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %70
  br label %137

109:                                              ; preds = %70
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 6
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 9
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @aout_volume_SetFormat(i32* %112, i32 %116)
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %119 = call i32 @VLC_OBJECT(%struct.TYPE_24__* %118)
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 10
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 9
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 8
  %127 = call i32* @aout_FiltersNewWithClock(i32 %119, %struct.TYPE_24__* %120, %struct.TYPE_24__* %122, %struct.TYPE_24__* %124, i32* %126)
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 7
  store i32* %127, i32** %129, align 8
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 7
  %132 = load i32*, i32** %131, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %134, label %144

134:                                              ; preds = %109
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %136 = call i32 @aout_OutputDelete(%struct.TYPE_24__* %135)
  br label %137

137:                                              ; preds = %134, %108
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 6
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @aout_volume_Delete(i32* %140)
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %142, i32 0, i32 6
  store i32* null, i32** %143, align 8
  store i32 -1, i32* %6, align 4
  br label %175

144:                                              ; preds = %109
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 0
  store float 1.000000e+00, float* %147, align 8
  %148 = load i32, i32* @AOUT_RESAMPLING_NONE, align 4
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 4
  store i32 %148, i32* %151, align 8
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 1
  store i32 1, i32* %154, align 4
  %155 = load i32, i32* @VLC_TICK_INVALID, align 4
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 5
  store i32 %155, i32* %157, align 8
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 2
  store i64 0, i64* %160, align 8
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 3
  store i64 0, i64* %163, align 8
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i32 0, i32 3
  %166 = call i32 @atomic_init(i32* %165, i32 0)
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %167, i32 0, i32 2
  %169 = call i32 @atomic_init(i32* %168, i32 0)
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 0
  %173 = load i32, i32* @memory_order_relaxed, align 4
  %174 = call i32 @atomic_store_explicit(i32* %172, i32 1, i32 %173)
  store i32 0, i32* %6, align 4
  br label %175

175:                                              ; preds = %144, %137, %64, %53, %44
  %176 = load i32, i32* %6, align 4
  ret i32 %176
}

declare dso_local i32 @assert(%struct.TYPE_24__*) #1

declare dso_local i32 @aout_FormatNbChannels(%struct.TYPE_24__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_24__*, i8*, ...) #1

declare dso_local %struct.TYPE_25__* @aout_owner(%struct.TYPE_24__*) #1

declare dso_local i32* @aout_volume_New(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @atomic_store_explicit(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @aout_OutputNew(%struct.TYPE_24__*) #1

declare dso_local i32 @aout_volume_SetFormat(i32*, i32) #1

declare dso_local i32* @aout_FiltersNewWithClock(i32, %struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32*) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_24__*) #1

declare dso_local i32 @aout_OutputDelete(%struct.TYPE_24__*) #1

declare dso_local i32 @aout_volume_Delete(i32*) #1

declare dso_local i32 @atomic_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
