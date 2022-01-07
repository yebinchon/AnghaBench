; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts.c_ConvertPESBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts.c_ConvertPESBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_18__, %struct.TYPE_19__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64, i8*, i64, i64 }

@VLC_CODEC_SUBT = common dso_local global i64 0, align 8
@VLC_CODEC_TELETEXT = common dso_local global i64 0, align 8
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@CLOCK_FREQ = common dso_local global i64 0, align 8
@VLC_CODEC_ARIB_A = common dso_local global i64 0, align 8
@VLC_CODEC_ARIB_C = common dso_local global i64 0, align 8
@VLC_CODEC_OPUS = common dso_local global i64 0, align 8
@VLC_CODEC_JPEG2000 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (i32*, %struct.TYPE_20__*, i64, i32, %struct.TYPE_21__*)* @ConvertPESBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @ConvertPESBlock(i32* %0, %struct.TYPE_20__* %1, i64 %2, i32 %3, %struct.TYPE_21__* %4) #0 {
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_21__* %4, %struct.TYPE_21__** %11, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %16 = icmp ne %struct.TYPE_21__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %6, align 8
  br label %237

18:                                               ; preds = %5
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VLC_CODEC_SUBT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %58

25:                                               ; preds = %18
  %26 = load i64, i64* %9, align 8
  %27 = icmp ugt i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %34, %28, %25
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, 1
  %44 = trunc i64 %43 to i32
  %45 = call %struct.TYPE_21__* @block_Realloc(%struct.TYPE_21__* %39, i32 0, i32 %44)
  store %struct.TYPE_21__* %45, %struct.TYPE_21__** %11, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %47 = icmp ne %struct.TYPE_21__* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %38
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 %54, 1
  %56 = getelementptr inbounds i8, i8* %51, i64 %55
  store i8 0, i8* %56, align 1
  br label %57

57:                                               ; preds = %48, %38
  br label %235

58:                                               ; preds = %18
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @VLC_CODEC_TELETEXT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %142

65:                                               ; preds = %58
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %67, align 8
  store %struct.TYPE_19__* %68, %struct.TYPE_19__** %12, align 8
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @VLC_TICK_INVALID, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %111

74:                                               ; preds = %65
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %78, -1
  br i1 %79, label %80, label %111

80:                                               ; preds = %74
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @TimeStampWrapAround(i32 %84, i32 %88)
  %90 = call i64 @FROM_SCALE(i32 %89)
  store i64 %90, i64* %13, align 8
  %91 = load i64, i64* %13, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %91, %94
  br i1 %95, label %104, label %96

96:                                               ; preds = %80
  %97 = load i64, i64* %13, align 8
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %97, %100
  %102 = load i64, i64* @CLOCK_FREQ, align 8
  %103 = icmp sgt i64 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %96, %80
  %105 = load i64, i64* @VLC_TICK_INVALID, align 8
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 2
  store i64 %105, i64* %107, align 8
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 3
  store i64 %105, i64* %109, align 8
  br label %110

110:                                              ; preds = %104, %96
  br label %111

111:                                              ; preds = %110, %74, %65
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @VLC_TICK_INVALID, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %141

117:                                              ; preds = %111
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %119, align 8
  %121 = call i32 @GetTimeForUntimed(%struct.TYPE_19__* %120)
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %14, align 4
  %123 = call i64 @SETANDVALID(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %117
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @TimeStampWrapAround(i32 %129, i32 %130)
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = call i64 @FROM_SCALE(i32 %132)
  %134 = call i64 @VLC_TICK_FROM_MS(i32 40)
  %135 = add nsw i64 %133, %134
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 2
  store i64 %135, i64* %137, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 3
  store i64 %135, i64* %139, align 8
  br label %140

140:                                              ; preds = %125, %117
  br label %141

141:                                              ; preds = %140, %111
  br label %234

142:                                              ; preds = %58
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @VLC_CODEC_ARIB_A, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %156, label %149

149:                                              ; preds = %142
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @VLC_CODEC_ARIB_C, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %196

156:                                              ; preds = %149, %142
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @VLC_TICK_INVALID, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %195

162:                                              ; preds = %156
  %163 = load i64, i64* %9, align 8
  %164 = icmp ugt i64 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %162
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* %9, align 8
  %170 = icmp ugt i64 %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %165
  %172 = load i64, i64* %9, align 8
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 0
  store i64 %172, i64* %174, align 8
  br label %175

175:                                              ; preds = %171, %165, %162
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = add i64 %179, 1
  %181 = trunc i64 %180 to i32
  %182 = call %struct.TYPE_21__* @block_Realloc(%struct.TYPE_21__* %176, i32 0, i32 %181)
  store %struct.TYPE_21__* %182, %struct.TYPE_21__** %11, align 8
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %184 = icmp ne %struct.TYPE_21__* %183, null
  br i1 %184, label %185, label %194

185:                                              ; preds = %175
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 1
  %188 = load i8*, i8** %187, align 8
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = sub i64 %191, 1
  %193 = getelementptr inbounds i8, i8* %188, i64 %192
  store i8 0, i8* %193, align 1
  br label %194

194:                                              ; preds = %185, %175
  br label %195

195:                                              ; preds = %194, %156
  br label %233

196:                                              ; preds = %149
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @VLC_CODEC_OPUS, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %196
  %204 = load i32*, i32** %7, align 8
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %206 = call %struct.TYPE_21__* @Opus_Parse(i32* %204, %struct.TYPE_21__* %205)
  store %struct.TYPE_21__* %206, %struct.TYPE_21__** %11, align 8
  br label %232

207:                                              ; preds = %196
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @VLC_CODEC_JPEG2000, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %231

214:                                              ; preds = %207
  %215 = load i32, i32* %10, align 4
  %216 = icmp ne i32 %215, 189
  %217 = zext i1 %216 to i32
  %218 = call i64 @unlikely(i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %214
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %222 = call i32 @block_Release(%struct.TYPE_21__* %221)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %11, align 8
  br label %230

223:                                              ; preds = %214
  %224 = load i32*, i32** %7, align 8
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = call %struct.TYPE_21__* @J2K_Parse(i32* %224, %struct.TYPE_21__* %225, i32 %228)
  store %struct.TYPE_21__* %229, %struct.TYPE_21__** %11, align 8
  br label %230

230:                                              ; preds = %223, %220
  br label %231

231:                                              ; preds = %230, %207
  br label %232

232:                                              ; preds = %231, %203
  br label %233

233:                                              ; preds = %232, %195
  br label %234

234:                                              ; preds = %233, %141
  br label %235

235:                                              ; preds = %234, %57
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  store %struct.TYPE_21__* %236, %struct.TYPE_21__** %6, align 8
  br label %237

237:                                              ; preds = %235, %17
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  ret %struct.TYPE_21__* %238
}

declare dso_local %struct.TYPE_21__* @block_Realloc(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i64 @FROM_SCALE(i32) #1

declare dso_local i32 @TimeStampWrapAround(i32, i32) #1

declare dso_local i32 @GetTimeForUntimed(%struct.TYPE_19__*) #1

declare dso_local i64 @SETANDVALID(i32) #1

declare dso_local i64 @VLC_TICK_FROM_MS(i32) #1

declare dso_local %struct.TYPE_21__* @Opus_Parse(i32*, %struct.TYPE_21__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @J2K_Parse(i32*, %struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
