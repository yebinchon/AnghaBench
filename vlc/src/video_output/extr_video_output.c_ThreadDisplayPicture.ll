; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_video_output.c_ThreadDisplayPicture.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_video_output.c_ThreadDisplayPicture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_13__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VOUT_MWAIT_TOLERANCE = common dso_local global i64 0, align 8
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@INT64_MAX = common dso_local global i64 0, align 8
@VOUT_REDISPLAY_DELAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i64*)* @ThreadDisplayPicture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ThreadDisplayPicture(%struct.TYPE_11__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i64* %1, i64** %5, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %6, align 8
  %23 = load i64*, i64** %5, align 8
  %24 = icmp ne i64* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = icmp ne %struct.TYPE_13__* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %2
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i64 @ThreadDisplayPreparePicture(%struct.TYPE_11__* %45, i32 1, i32 %46, i32* %8)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %50, i32* %3, align 4
  br label %241

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %2
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %73, %58
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = icmp ne %struct.TYPE_13__* %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i64 @ThreadDisplayPreparePicture(%struct.TYPE_11__* %66, i32 0, i32 %67, i32* %8)
  %69 = icmp ne i64 %68, 0
  %70 = xor i1 %69, true
  br label %71

71:                                               ; preds = %65, %59
  %72 = phi i1 [ false, %59 ], [ %70, %65 ]
  br i1 %72, label %73, label %74

73:                                               ; preds = %71
  br label %59

74:                                               ; preds = %71
  br label %75

75:                                               ; preds = %74, %55
  %76 = call i64 (...) @vlc_tick_now()
  store i64 %76, i64* %10, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 3
  %79 = call i64 @vout_chrono_GetHigh(i32* %78)
  %80 = load i64, i64* @VOUT_MWAIT_TOLERANCE, align 8
  %81 = add nsw i64 %79, %80
  store i64 %81, i64* %11, align 8
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %12, align 4
  %83 = load i64, i64* @VLC_TICK_INVALID, align 8
  store i64 %83, i64* %13, align 8
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %123, label %86

86:                                               ; preds = %75
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = icmp ne %struct.TYPE_13__* %90, null
  br i1 %91, label %92, label %123

92:                                               ; preds = %86
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i64, i64* %10, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @vlc_clock_ConvertToSystem(i32 %95, i64 %96, i32 %102, i32 %105)
  store i64 %106, i64* %14, align 8
  %107 = load i64, i64* %14, align 8
  %108 = load i64, i64* @INT64_MAX, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %92
  store i32 1, i32* %8, align 4
  br label %114

114:                                              ; preds = %113, %92
  %115 = load i64, i64* %14, align 8
  %116 = load i64, i64* %11, align 8
  %117 = sub nsw i64 %115, %116
  store i64 %117, i64* %13, align 8
  %118 = load i64, i64* %13, align 8
  %119 = load i64, i64* %10, align 8
  %120 = icmp sle i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  store i32 1, i32* %12, align 4
  br label %122

122:                                              ; preds = %121, %114
  br label %123

123:                                              ; preds = %122, %86, %75
  store i32 0, i32* %15, align 4
  %124 = load i64, i64* @VLC_TICK_INVALID, align 8
  store i64 %124, i64* %16, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @VLC_TICK_INVALID, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %144

131:                                              ; preds = %123
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @VOUT_REDISPLAY_DELAY, align 8
  %137 = add nsw i64 %135, %136
  %138 = load i64, i64* %11, align 8
  %139 = sub nsw i64 %137, %138
  store i64 %139, i64* %16, align 8
  %140 = load i64, i64* %16, align 8
  %141 = load i64, i64* %10, align 8
  %142 = icmp sle i64 %140, %141
  %143 = zext i1 %142 to i32
  store i32 %143, i32* %15, align 4
  br label %144

144:                                              ; preds = %131, %123
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* %15, align 4
  %149 = icmp ne i32 %148, 0
  br label %150

150:                                              ; preds = %147, %144
  %151 = phi i1 [ false, %144 ], [ %149, %147 ]
  %152 = zext i1 %151 to i32
  store i32 %152, i32* %17, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %175, label %155

155:                                              ; preds = %150
  %156 = load i64, i64* %16, align 8
  %157 = load i64, i64* @VLC_TICK_INVALID, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load i64, i64* %16, align 8
  %161 = load i64*, i64** %5, align 8
  store i64 %160, i64* %161, align 8
  br label %162

162:                                              ; preds = %159, %155
  %163 = load i64, i64* %13, align 8
  %164 = load i64, i64* @VLC_TICK_INVALID, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %174

166:                                              ; preds = %162
  %167 = load i64, i64* %13, align 8
  %168 = load i64*, i64** %5, align 8
  %169 = load i64, i64* %168, align 8
  %170 = icmp slt i64 %167, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load i64, i64* %13, align 8
  %173 = load i64*, i64** %5, align 8
  store i64 %172, i64* %173, align 8
  br label %174

174:                                              ; preds = %171, %166, %162
  br label %175

175:                                              ; preds = %174, %150
  %176 = load i32, i32* %9, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %186, label %178

178:                                              ; preds = %175
  %179 = load i32, i32* %15, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %178
  %182 = load i32, i32* %12, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %186, label %184

184:                                              ; preds = %181
  %185 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %185, i32* %3, align 4
  br label %241

186:                                              ; preds = %181, %178, %175
  %187 = load i32, i32* %12, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %205

189:                                              ; preds = %186
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %192, align 8
  %194 = call i32 @picture_Release(%struct.TYPE_13__* %193)
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %197, align 8
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 1
  store %struct.TYPE_13__* %198, %struct.TYPE_13__** %201, align 8
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %204, align 8
  br label %205

205:                                              ; preds = %189, %186
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %208, align 8
  %210 = icmp ne %struct.TYPE_13__* %209, null
  br i1 %210, label %213, label %211

211:                                              ; preds = %205
  %212 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %212, i32* %3, align 4
  br label %241

213:                                              ; preds = %205
  %214 = load i32, i32* %7, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %227, label %216

216:                                              ; preds = %213
  %217 = load i32, i32* %17, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %227, label %219

219:                                              ; preds = %216
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br label %227

227:                                              ; preds = %219, %216, %213
  %228 = phi i1 [ true, %216 ], [ true, %213 ], [ %226, %219 ]
  %229 = zext i1 %228 to i32
  store i32 %229, i32* %18, align 4
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %231 = load i32, i32* %18, align 4
  %232 = call i32 @ThreadDisplayRenderPicture(%struct.TYPE_11__* %230, i32 %231)
  store i32 %232, i32* %19, align 4
  %233 = load i32, i32* %17, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %227
  %236 = load i32, i32* @VLC_EGENERIC, align 4
  br label %239

237:                                              ; preds = %227
  %238 = load i32, i32* %19, align 4
  br label %239

239:                                              ; preds = %237, %235
  %240 = phi i32 [ %236, %235 ], [ %238, %237 ]
  store i32 %240, i32* %3, align 4
  br label %241

241:                                              ; preds = %239, %211, %184, %49
  %242 = load i32, i32* %3, align 4
  ret i32 %242
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ThreadDisplayPreparePicture(%struct.TYPE_11__*, i32, i32, i32*) #1

declare dso_local i64 @vlc_tick_now(...) #1

declare dso_local i64 @vout_chrono_GetHigh(i32*) #1

declare dso_local i64 @vlc_clock_ConvertToSystem(i32, i64, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @picture_Release(%struct.TYPE_13__*) #1

declare dso_local i32 @ThreadDisplayRenderPicture(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
