; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_x265.c_Encode.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_x265.c_Encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i64, i64, i32, i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_22__, %struct.TYPE_27__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_27__ = type { i64, float, i64, i32, i32 }
%struct.TYPE_25__ = type { i64, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_23__ = type { i64, i32, i32, i32*, i32* }
%struct.TYPE_24__ = type { i32, i64 }

@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@BLOCK_FLAG_TYPE_I = common dso_local global i32 0, align 4
@BLOCK_FLAG_TYPE_P = common dso_local global i32 0, align 4
@BLOCK_FLAG_TYPE_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%zu bytes (frame %u, %.2ffps)\00", align 1
@CLOCK_FREQ = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_28__* (%struct.TYPE_26__*, %struct.TYPE_25__*)* @Encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_28__* @Encode(%struct.TYPE_26__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_23__, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  store %struct.TYPE_27__* %16, %struct.TYPE_27__** %6, align 8
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 4
  %19 = call i32 @x265_picture_init(i32* %18, %struct.TYPE_23__* %7)
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %21 = call i64 @likely(%struct.TYPE_25__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %83

23:                                               ; preds = %2
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @VLC_TICK_INVALID, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %23
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = call float (...) @vlc_tick_now()
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 1
  store float %42, float* %44, align 8
  br label %45

45:                                               ; preds = %36, %23
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %79, %45
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %82

52:                                               ; preds = %46
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %60, i32* %65, align 4
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %73, i32* %78, align 4
  br label %79

79:                                               ; preds = %52
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %46

82:                                               ; preds = %46
  br label %83

83:                                               ; preds = %82, %2
  store i64 0, i64* %10, align 8
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %88 = call i64 @likely(%struct.TYPE_25__* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %92

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %91, %90
  %93 = phi %struct.TYPE_23__* [ %7, %90 ], [ null, %91 ]
  %94 = call i32 @x265_encoder_encode(i32 %86, %struct.TYPE_24__** %9, i64* %10, %struct.TYPE_23__* %93, %struct.TYPE_23__* %7)
  %95 = load i64, i64* %10, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %3, align 8
  br label %215

98:                                               ; preds = %92
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  br label %99

99:                                               ; preds = %113, %98
  %100 = load i64, i64* %12, align 8
  %101 = load i64, i64* %10, align 8
  %102 = icmp ult i64 %100, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %99
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %105 = load i64, i64* %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, %108
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %103
  %114 = load i64, i64* %12, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %12, align 8
  br label %99

116:                                              ; preds = %99
  %117 = load i32, i32* %11, align 4
  %118 = call %struct.TYPE_28__* @block_Alloc(i32 %117)
  store %struct.TYPE_28__* %118, %struct.TYPE_28__** %13, align 8
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %120 = icmp ne %struct.TYPE_28__* %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %116
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %3, align 8
  br label %215

122:                                              ; preds = %116
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @memcpy(i32 %125, i32 %129, i32 %130)
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @vlc_tick_from_samples(i32 %136, i32 %141)
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = mul nsw i32 %149, %152
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %147, %154
  %156 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %156, i32 0, i32 1
  store i64 %155, i64* %157, align 8
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, 1
  store i64 %164, i64* %162, align 8
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = mul nsw i64 %163, %168
  %170 = add nsw i64 %160, %169
  %171 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %171, i32 0, i32 2
  store i64 %170, i64* %172, align 8
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  switch i32 %174, label %193 [
    i32 130, label %175
    i32 129, label %175
    i32 128, label %181
    i32 132, label %187
    i32 131, label %187
  ]

175:                                              ; preds = %122, %122
  %176 = load i32, i32* @BLOCK_FLAG_TYPE_I, align 4
  %177 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 4
  br label %193

181:                                              ; preds = %122
  %182 = load i32, i32* @BLOCK_FLAG_TYPE_P, align 4
  %183 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 4
  br label %193

187:                                              ; preds = %122, %122
  %188 = load i32, i32* @BLOCK_FLAG_TYPE_B, align 4
  %189 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %190 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %122, %187, %181, %175
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %195 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %196 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = sitofp i64 %203 to float
  %205 = load float, float* @CLOCK_FREQ, align 4
  %206 = fmul float %204, %205
  %207 = call float (...) @vlc_tick_now()
  %208 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %208, i32 0, i32 1
  %210 = load float, float* %209, align 8
  %211 = fsub float %207, %210
  %212 = fdiv float %206, %211
  %213 = call i32 @msg_Dbg(%struct.TYPE_26__* %194, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %197, i64 %200, float %212)
  %214 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  store %struct.TYPE_28__* %214, %struct.TYPE_28__** %3, align 8
  br label %215

215:                                              ; preds = %193, %121, %97
  %216 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  ret %struct.TYPE_28__* %216
}

declare dso_local i32 @x265_picture_init(i32*, %struct.TYPE_23__*) #1

declare dso_local i64 @likely(%struct.TYPE_25__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local float @vlc_tick_now(...) #1

declare dso_local i32 @x265_encoder_encode(i32, %struct.TYPE_24__**, i64*, %struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_28__* @block_Alloc(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @vlc_tick_from_samples(i32, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_26__*, i8*, i32, i64, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
