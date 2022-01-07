; ModuleID = '/home/carl/AnghaBench/vlc/src/audio_output/extr_dec.c_aout_DecPlay.c'
source_filename = "/home/carl/AnghaBench/vlc/src/audio_output/extr_dec.c_aout_DecPlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 (%struct.TYPE_24__*, %struct.TYPE_23__*, i64)* }
%struct.TYPE_23__ = type { i64, i32, i32, i32 }
%struct.TYPE_25__ = type { i64, i32, %struct.TYPE_22__, i32, i32, i32, %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_22__ = type { i32, i64, i64, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i32 }

@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@AOUT_DEC_FAILED = common dso_local global i32 0, align 4
@BLOCK_FLAG_DISCONTINUITY = common dso_local global i32 0, align 4
@memory_order_relaxed = common dso_local global i32 0, align 4
@INT64_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aout_DecPlay(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %13 = call %struct.TYPE_25__* @aout_owner(%struct.TYPE_24__* %12)
  store %struct.TYPE_25__* %13, %struct.TYPE_25__** %6, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VLC_TICK_INVALID, align 8
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 7
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @vlc_tick_from_samples(i32 %23, i32 %27)
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %32 = call i32 @aout_CheckReady(%struct.TYPE_24__* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @AOUT_DEC_FAILED, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %2
  br label %205

40:                                               ; preds = %2
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load i64, i64* @VLC_TICK_INVALID, align 8
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %47, %40
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 1
  %58 = load i32, i32* @memory_order_relaxed, align 4
  %59 = call i64 @atomic_load_explicit(i32* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %54
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 6
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = call i32 @vlc_mutex_lock(i32* %64)
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 2
  %72 = call i32 @aout_FiltersChangeViewpoint(i32 %68, i32* %71)
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 1
  %76 = load i32, i32* @memory_order_relaxed, align 4
  %77 = call i32 @atomic_store_explicit(i32* %75, i32 0, i32 %76)
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 6
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  %81 = call i32 @vlc_mutex_unlock(i32* %80)
  br label %82

82:                                               ; preds = %61, %54
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @VLC_TICK_INVALID, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %88, %82
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call %struct.TYPE_23__* @aout_FiltersPlay(i32 %97, %struct.TYPE_23__* %98, i32 %102)
  store %struct.TYPE_23__* %103, %struct.TYPE_23__** %5, align 8
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %105 = icmp eq %struct.TYPE_23__* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %94
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %3, align 4
  br label %219

108:                                              ; preds = %94
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %8, align 8
  %112 = load i64, i64* @VLC_TICK_INVALID, align 8
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %119 = call i32 @aout_volume_Amplify(i32 %117, %struct.TYPE_23__* %118)
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %123, %127
  br i1 %128, label %129, label %164

129:                                              ; preds = %108
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 2
  store i64 %133, i64* %136, align 8
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = call i64 @vlc_clock_SetDelay(i32 %140, i64 %144)
  store i64 %145, i64* %9, align 8
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @aout_FiltersSetClockDelay(i32 %148, i64 %152)
  %154 = load i64, i64* %9, align 8
  %155 = icmp sgt i64 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %129
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %158 = load i64, i64* %9, align 8
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @aout_DecSilence(%struct.TYPE_24__* %157, i64 %158, i64 %161)
  br label %163

163:                                              ; preds = %156, %129
  br label %164

164:                                              ; preds = %163, %108
  %165 = call i64 (...) @vlc_tick_now()
  store i64 %165, i64* %10, align 8
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %167 = load i64, i64* %10, align 8
  %168 = load i64, i64* %8, align 8
  %169 = call i32 @aout_DecSynchronize(%struct.TYPE_24__* %166, i64 %167, i64 %168)
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  %174 = load i64, i64* %10, align 8
  %175 = load i64, i64* %8, align 8
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = call i64 @vlc_clock_ConvertToSystem(i32 %173, i64 %174, i64 %175, i32 %179)
  store i64 %180, i64* %11, align 8
  %181 = load i64, i64* %11, align 8
  %182 = load i64, i64* @INT64_MAX, align 8
  %183 = icmp eq i64 %181, %182
  %184 = zext i1 %183 to i32
  %185 = call i64 @unlikely(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %164
  %188 = load i64, i64* %10, align 8
  store i64 %188, i64* %11, align 8
  br label %189

189:                                              ; preds = %187, %164
  %190 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 0
  store i32 0, i32* %192, align 8
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i32 0, i32 0
  %195 = load i32 (%struct.TYPE_24__*, %struct.TYPE_23__*, i64)*, i32 (%struct.TYPE_24__*, %struct.TYPE_23__*, i64)** %194, align 8
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %198 = load i64, i64* %11, align 8
  %199 = call i32 %195(%struct.TYPE_24__* %196, %struct.TYPE_23__* %197, i64 %198)
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %200, i32 0, i32 3
  %202 = load i32, i32* @memory_order_relaxed, align 4
  %203 = call i32 @atomic_fetch_add_explicit(i32* %201, i32 1, i32 %202)
  %204 = load i32, i32* %7, align 4
  store i32 %204, i32* %3, align 4
  br label %219

205:                                              ; preds = %39
  %206 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %207, i32 0, i32 0
  store i32 1, i32* %208, align 8
  %209 = load i64, i64* @VLC_TICK_INVALID, align 8
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %210, i32 0, i32 0
  store i64 %209, i64* %211, align 8
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %213 = call i32 @block_Release(%struct.TYPE_23__* %212)
  %214 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %214, i32 0, i32 1
  %216 = load i32, i32* @memory_order_relaxed, align 4
  %217 = call i32 @atomic_fetch_add_explicit(i32* %215, i32 1, i32 %216)
  %218 = load i32, i32* %7, align 4
  store i32 %218, i32* %3, align 4
  br label %219

219:                                              ; preds = %205, %189, %106
  %220 = load i32, i32* %3, align 4
  ret i32 %220
}

declare dso_local %struct.TYPE_25__* @aout_owner(%struct.TYPE_24__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_tick_from_samples(i32, i32) #1

declare dso_local i32 @aout_CheckReady(%struct.TYPE_24__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @atomic_load_explicit(i32*, i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @aout_FiltersChangeViewpoint(i32, i32*) #1

declare dso_local i32 @atomic_store_explicit(i32*, i32, i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_23__* @aout_FiltersPlay(i32, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @aout_volume_Amplify(i32, %struct.TYPE_23__*) #1

declare dso_local i64 @vlc_clock_SetDelay(i32, i64) #1

declare dso_local i32 @aout_FiltersSetClockDelay(i32, i64) #1

declare dso_local i32 @aout_DecSilence(%struct.TYPE_24__*, i64, i64) #1

declare dso_local i64 @vlc_tick_now(...) #1

declare dso_local i32 @aout_DecSynchronize(%struct.TYPE_24__*, i64, i64) #1

declare dso_local i64 @vlc_clock_ConvertToSystem(i32, i64, i64, i32) #1

declare dso_local i32 @atomic_fetch_add_explicit(i32*, i32, i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
