; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_encoder.c_probe_video_frame_rate.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_encoder.c_probe_video_frame_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_20__, %struct.TYPE_18__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }

@VLC_CODEC_MP4V = common dso_local global i64 0, align 8
@CLOCK_FREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Time base for probing set to %d/%d\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Time base set to %d/%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, %struct.TYPE_24__*, %struct.TYPE_25__*)* @probe_video_frame_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probe_video_frame_rate(%struct.TYPE_22__* %0, %struct.TYPE_24__* %1, %struct.TYPE_25__* %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_23__, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %6, align 8
  %9 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  br label %22

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %21, %15
  %23 = phi i32 [ %20, %15 ], [ 1, %21 ]
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %22
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  br label %51

39:                                               ; preds = %22
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @VLC_CODEC_MP4V, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @CLOCK_FREQ, align 4
  br label %49

49:                                               ; preds = %47, %46
  %50 = phi i32 [ 25, %46 ], [ %48, %47 ]
  br label %51

51:                                               ; preds = %49, %33
  %52 = phi i32 [ %38, %33 ], [ %50, %49 ]
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @msg_Dbg(%struct.TYPE_22__* %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %64)
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = icmp ne %struct.TYPE_16__* %68, null
  br i1 %69, label %70, label %174

70:                                               ; preds = %51
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %71, align 4
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 1
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %76, align 4
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = bitcast %struct.TYPE_23__* %7 to i64*
  %85 = load i64, i64* %84, align 4
  %86 = call i32 @av_find_nearest_q_idx(i64 %85, %struct.TYPE_16__* %83)
  store i32 %86, i32* %8, align 4
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %70
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  br label %106

105:                                              ; preds = %70
  br label %106

106:                                              ; preds = %105, %96
  %107 = phi i32 [ %104, %96 ], [ 1, %105 ]
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 4
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %106
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  br label %131

129:                                              ; preds = %106
  %130 = load i32, i32* @CLOCK_FREQ, align 4
  br label %131

131:                                              ; preds = %129, %120
  %132 = phi i32 [ %128, %120 ], [ %130, %129 ]
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 1
  store i32 %132, i32* %135, align 4
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %173

141:                                              ; preds = %131
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @CLOCK_FREQ, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %173

148:                                              ; preds = %141
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 0
  store i32 %152, i32* %156, align 8
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 0
  store i32 %152, i32* %160, align 8
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 1
  store i32 %164, i32* %168, align 4
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 1
  store i32 %164, i32* %172, align 4
  br label %173

173:                                              ; preds = %148, %141, %131
  br label %174

174:                                              ; preds = %173, %51
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @msg_Dbg(%struct.TYPE_22__* %175, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %179, i32 %183)
  ret void
}

declare dso_local i32 @msg_Dbg(%struct.TYPE_22__*, i8*, i32, i32) #1

declare dso_local i32 @av_find_nearest_q_idx(i64, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
