; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtpfmt.c_rtp_packetize_rawvideo.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtpfmt.c_rtp_packetize_rawvideo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i64, i64, i32 }

@rtp_packetize_rawvideo.RTP_HEADER_LEN = internal constant i32 12, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, i32)* @rtp_packetize_rawvideo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtp_packetize_rawvideo(i32* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_7__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @rtp_get_video_geometry(i32* %32, i32* %8, i32* %9)
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %37 [
    i32 128, label %35
    i32 129, label %36
  ]

35:                                               ; preds = %3
  store i32 3, i32* %10, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %39

36:                                               ; preds = %3
  store i32 6, i32* %10, align 4
  store i32 2, i32* %12, align 4
  store i32 2, i32* %11, align 4
  br label %39

37:                                               ; preds = %3
  %38 = call i32 (...) @vlc_assert_unreachable()
  br label %39

39:                                               ; preds = %37, %36, %35
  store i32 6, i32* %13, align 4
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 6, %40
  store i32 %41, i32* %14, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %45

45:                                               ; preds = %262, %39
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %278

49:                                               ; preds = %45
  %50 = load i32*, i32** %5, align 8
  %51 = call i64 @rtp_mtu(i32* %50)
  %52 = sub nsw i64 %51, 12
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %18, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = call i32 @block_Release(%struct.TYPE_7__* %57)
  %59 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %59, i32* %4, align 4
  br label %282

60:                                               ; preds = %49
  %61 = load i32, i32* %18, align 4
  %62 = add nsw i32 12, %61
  %63 = call %struct.TYPE_7__* @block_Alloc(i32 %62)
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %19, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %65 = icmp eq %struct.TYPE_7__* %64, null
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %60
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %71 = call i32 @block_Release(%struct.TYPE_7__* %70)
  %72 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %72, i32* %4, align 4
  br label %282

73:                                               ; preds = %60
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 12
  store i32* %77, i32** %20, align 8
  %78 = load i32*, i32** %20, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @rtp_get_extended_sequence(i32* %79)
  %81 = call i32 @SetWBE(i32* %78, i32 %80)
  %82 = load i32*, i32** %20, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  store i32* %83, i32** %20, align 8
  %84 = load i32, i32* %18, align 4
  %85 = sub nsw i32 %84, 2
  store i32 %85, i32* %18, align 4
  %86 = load i32*, i32** %20, align 8
  store i32* %86, i32** %21, align 8
  store i32 128, i32* %22, align 4
  br label %87

87:                                               ; preds = %172, %73
  %88 = load i32, i32* %22, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, i32* %18, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp sgt i32 %91, %92
  br label %94

94:                                               ; preds = %90, %87
  %95 = phi i1 [ false, %87 ], [ %93, %90 ]
  br i1 %95, label %96, label %173

96:                                               ; preds = %94
  %97 = load i32, i32* %18, align 4
  %98 = sub nsw i32 %97, 6
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %17, align 4
  %101 = sub nsw i32 %99, %100
  store i32 %101, i32* %23, align 4
  %102 = load i32, i32* %23, align 4
  %103 = load i32, i32* %10, align 4
  %104 = mul nsw i32 %102, %103
  %105 = load i32, i32* %11, align 4
  %106 = sdiv i32 %104, %105
  store i32 %106, i32* %24, align 4
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* %24, align 4
  %109 = icmp sge i32 %107, %108
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %25, align 4
  %111 = load i32, i32* %25, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %96
  %114 = load i32, i32* %18, align 4
  %115 = load i32, i32* %10, align 4
  %116 = sdiv i32 %114, %115
  %117 = load i32, i32* %11, align 4
  %118 = mul nsw i32 %116, %117
  store i32 %118, i32* %23, align 4
  %119 = load i32, i32* %23, align 4
  %120 = load i32, i32* %10, align 4
  %121 = mul nsw i32 %119, %120
  %122 = load i32, i32* %11, align 4
  %123 = sdiv i32 %121, %122
  store i32 %123, i32* %24, align 4
  br label %124

124:                                              ; preds = %113, %96
  %125 = load i32, i32* %24, align 4
  %126 = load i32, i32* %18, align 4
  %127 = sub nsw i32 %126, %125
  store i32 %127, i32* %18, align 4
  %128 = load i32*, i32** %20, align 8
  %129 = load i32, i32* %24, align 4
  %130 = call i32 @SetWBE(i32* %128, i32 %129)
  %131 = load i32*, i32** %20, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  store i32* %132, i32** %20, align 8
  store i32 0, i32* %26, align 4
  %133 = load i32*, i32** %20, align 8
  %134 = load i32, i32* %16, align 4
  %135 = call i32 @SetWBE(i32* %133, i32 %134)
  %136 = load i32*, i32** %20, align 8
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %136, align 4
  %138 = load i32*, i32** %20, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 2
  store i32* %139, i32** %20, align 8
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* %14, align 4
  %142 = icmp sgt i32 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %124
  %144 = load i32, i32* %16, align 4
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* %12, align 4
  %147 = sub nsw i32 %145, %146
  %148 = icmp slt i32 %144, %147
  br label %149

149:                                              ; preds = %143, %124
  %150 = phi i1 [ false, %124 ], [ %148, %143 ]
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i32 128, i32 0
  store i32 %152, i32* %22, align 4
  %153 = load i32*, i32** %20, align 8
  %154 = load i32, i32* %17, align 4
  %155 = call i32 @SetWBE(i32* %153, i32 %154)
  %156 = load i32, i32* %22, align 4
  %157 = load i32*, i32** %20, align 8
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %156
  store i32 %159, i32* %157, align 4
  %160 = load i32*, i32** %20, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 2
  store i32* %161, i32** %20, align 8
  %162 = load i32, i32* %25, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %149
  store i32 0, i32* %17, align 4
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %16, align 4
  %167 = add nsw i32 %166, %165
  store i32 %167, i32* %16, align 4
  br label %172

168:                                              ; preds = %149
  %169 = load i32, i32* %23, align 4
  %170 = load i32, i32* %17, align 4
  %171 = add nsw i32 %170, %169
  store i32 %171, i32* %17, align 4
  br label %172

172:                                              ; preds = %168, %164
  br label %87

173:                                              ; preds = %94
  store i32 128, i32* %27, align 4
  br label %174

174:                                              ; preds = %239, %173
  %175 = load i32, i32* %27, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %242

177:                                              ; preds = %174
  %178 = load i32*, i32** %21, align 8
  %179 = call i32 @GetWBE(i32* %178)
  store i32 %179, i32* %28, align 4
  %180 = load i32*, i32** %21, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 2
  %182 = call i32 @GetWBE(i32* %181)
  %183 = and i32 %182, 32767
  store i32 %183, i32* %29, align 4
  %184 = load i32*, i32** %21, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 4
  %186 = call i32 @GetWBE(i32* %185)
  %187 = and i32 %186, 32767
  store i32 %187, i32* %30, align 4
  %188 = load i32*, i32** %21, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 4
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %190, 128
  store i32 %191, i32* %27, align 4
  %192 = load i32, i32* %7, align 4
  %193 = icmp eq i32 %192, 128
  br i1 %193, label %194, label %219

194:                                              ; preds = %177
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* %10, align 4
  %197 = mul nsw i32 %195, %196
  store i32 %197, i32* %31, align 4
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* %30, align 4
  %200 = sdiv i32 %199, %198
  store i32 %200, i32* %30, align 4
  %201 = load i32*, i32** %20, align 8
  %202 = load i32*, i32** %15, align 8
  %203 = load i32, i32* %29, align 4
  %204 = load i32, i32* %31, align 4
  %205 = mul nsw i32 %203, %204
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %202, i64 %206
  %208 = load i32, i32* %30, align 4
  %209 = load i32, i32* %10, align 4
  %210 = mul nsw i32 %208, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %207, i64 %211
  %213 = load i32, i32* %28, align 4
  %214 = call i32 @memcpy(i32* %201, i32* %212, i32 %213)
  %215 = load i32, i32* %28, align 4
  %216 = load i32*, i32** %20, align 8
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  store i32* %218, i32** %20, align 8
  br label %238

219:                                              ; preds = %177
  %220 = load i32, i32* %7, align 4
  %221 = icmp eq i32 %220, 129
  br i1 %221, label %222, label %235

222:                                              ; preds = %219
  %223 = load i32*, i32** %20, align 8
  %224 = load i32*, i32** %15, align 8
  %225 = load i32, i32* %28, align 4
  %226 = call i32 @memcpy(i32* %223, i32* %224, i32 %225)
  %227 = load i32, i32* %28, align 4
  %228 = load i32*, i32** %20, align 8
  %229 = sext i32 %227 to i64
  %230 = getelementptr inbounds i32, i32* %228, i64 %229
  store i32* %230, i32** %20, align 8
  %231 = load i32, i32* %28, align 4
  %232 = load i32*, i32** %15, align 8
  %233 = sext i32 %231 to i64
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  store i32* %234, i32** %15, align 8
  br label %237

235:                                              ; preds = %219
  %236 = call i32 (...) @vlc_assert_unreachable()
  br label %237

237:                                              ; preds = %235, %222
  br label %238

238:                                              ; preds = %237, %194
  br label %239

239:                                              ; preds = %238
  %240 = load i32*, i32** %21, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 6
  store i32* %241, i32** %21, align 8
  br label %174

242:                                              ; preds = %174
  %243 = load i32*, i32** %5, align 8
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %245 = load i32, i32* %16, align 4
  %246 = load i32, i32* %9, align 4
  %247 = icmp sge i32 %245, %246
  %248 = zext i1 %247 to i32
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @VLC_TICK_INVALID, align 8
  %253 = icmp ne i64 %251, %252
  br i1 %253, label %254, label %258

254:                                              ; preds = %242
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  br label %262

258:                                              ; preds = %242
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  br label %262

262:                                              ; preds = %258, %254
  %263 = phi i64 [ %257, %254 ], [ %261, %258 ]
  %264 = call i32 @rtp_packetize_common(i32* %243, %struct.TYPE_7__* %244, i32 %248, i64 %263)
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 2
  store i64 %267, i64* %269, align 8
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 3
  store i32 %272, i32* %274, align 8
  %275 = load i32*, i32** %5, align 8
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %277 = call i32 @rtp_packetize_send(i32* %275, %struct.TYPE_7__* %276)
  br label %45

278:                                              ; preds = %45
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %280 = call i32 @block_Release(%struct.TYPE_7__* %279)
  %281 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %281, i32* %4, align 4
  br label %282

282:                                              ; preds = %278, %69, %56
  %283 = load i32, i32* %4, align 4
  ret i32 %283
}

declare dso_local i32 @rtp_get_video_geometry(i32*, i32*, i32*) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

declare dso_local i64 @rtp_mtu(i32*) #1

declare dso_local i32 @block_Release(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @block_Alloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @SetWBE(i32*, i32) #1

declare dso_local i32 @rtp_get_extended_sequence(i32*) #1

declare dso_local i32 @GetWBE(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @rtp_packetize_common(i32*, %struct.TYPE_7__*, i32, i64) #1

declare dso_local i32 @rtp_packetize_send(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
