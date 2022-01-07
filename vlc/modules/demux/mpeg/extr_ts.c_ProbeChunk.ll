; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts.c_ProbeChunk.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts.c_ProbeChunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_29__ = type { i64, i32*, i32 }
%struct.TYPE_25__ = type { i64, i32, %struct.TYPE_33__, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_26__*, %struct.TYPE_32__* }
%struct.TYPE_26__ = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i32, %struct.TYPE_35__** }
%struct.TYPE_35__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i32, i32, i32, %struct.TYPE_37__, i32 }
%struct.TYPE_37__ = type { i32, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i64 }

@PROBE_CHUNK_COUNT = common dso_local global i32 0, align 4
@TS_PACKET_SIZE_188 = common dso_local global i64 0, align 8
@FLAG_SEEN = common dso_local global i32 0, align 4
@TYPE_STREAM = common dso_local global i64 0, align 8
@UNKNOWN_ES = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, i32, i32, i32*, i32*)* @ProbeChunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ProbeChunk(%struct.TYPE_27__* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_29__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_25__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_26__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_38__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %26, align 8
  store %struct.TYPE_28__* %27, %struct.TYPE_28__** %11, align 8
  store i32 0, i32* %12, align 4
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %13, align 8
  br label %28

28:                                               ; preds = %289, %53, %5
  %29 = load i32*, i32** %9, align 8
  store i32 -1, i32* %29, align 4
  %30 = load i32, i32* %12, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* @PROBE_CHUNK_COUNT, align 4
  %33 = icmp sgt i32 %30, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %36 = call %struct.TYPE_29__* @ReadTSPacket(%struct.TYPE_27__* %35)
  store %struct.TYPE_29__* %36, %struct.TYPE_29__** %13, align 8
  %37 = icmp ne %struct.TYPE_29__* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34, %28
  br label %292

39:                                               ; preds = %34
  %40 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TS_PACKET_SIZE_188, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 128
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %55 = call i32 @block_Release(%struct.TYPE_29__* %54)
  br label %28

56:                                               ; preds = %45, %39
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %58 = call i32 @PIDGet(%struct.TYPE_29__* %57)
  store i32 %58, i32* %14, align 4
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %60 = load i32, i32* %14, align 4
  %61 = call %struct.TYPE_25__* @GetPID(%struct.TYPE_28__* %59, i32 %60)
  store %struct.TYPE_25__* %61, %struct.TYPE_25__** %15, align 8
  %62 = load i32, i32* @FLAG_SEEN, align 4
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 8191
  br i1 %68, label %69, label %289

69:                                               ; preds = %56
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 128
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %289

77:                                               ; preds = %69
  store i32 1, i32* %16, align 4
  %78 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 3
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 32
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %17, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %77
  %87 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp sge i32 %89, 11
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %93 = call i32 @GetPCR(%struct.TYPE_29__* %92)
  %94 = load i32*, i32** %9, align 8
  store i32 %93, i32* %94, align 4
  br label %95

95:                                               ; preds = %91, %86, %77
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %180

99:                                               ; preds = %95
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 192
  %106 = icmp eq i32 %105, 64
  br i1 %106, label %107, label %180

107:                                              ; preds = %99
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 3
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 208
  %114 = icmp eq i32 %113, 16
  br i1 %114, label %115, label %180

115:                                              ; preds = %107
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @TYPE_STREAM, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %180

121:                                              ; preds = %115
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_32__*, %struct.TYPE_32__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_31__*, %struct.TYPE_31__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @UNKNOWN_ES, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %180

133:                                              ; preds = %121
  store i32 0, i32* %16, align 4
  store i32 -1, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  store i32 4, i32* %21, align 4
  %134 = load i32, i32* %17, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %148

136:                                              ; preds = %133
  %137 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 4
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @__MIN(i32 %141, i32 182)
  %143 = add nsw i64 1, %142
  %144 = load i32, i32* %21, align 4
  %145 = zext i32 %144 to i64
  %146 = add nsw i64 %145, %143
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %21, align 4
  br label %148

148:                                              ; preds = %136, %133
  %149 = load i64, i64* @VLC_SUCCESS, align 8
  %150 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %151 = call i32 @VLC_OBJECT(%struct.TYPE_27__* %150)
  %152 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %21, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %21, align 4
  %162 = sub i32 %160, %161
  %163 = call i64 @ParsePESHeader(i32 %151, i32* %157, i32 %162, i32* %21, i32* %18, i32* %19, i32* %20, i32* null)
  %164 = icmp eq i64 %149, %163
  br i1 %164, label %165, label %179

165:                                              ; preds = %148
  %166 = load i32, i32* %18, align 4
  %167 = icmp ne i32 %166, -1
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i32, i32* %18, align 4
  %170 = load i32*, i32** %9, align 8
  store i32 %169, i32* %170, align 4
  br label %178

171:                                              ; preds = %165
  %172 = load i32, i32* %19, align 4
  %173 = icmp ne i32 %172, -1
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i32, i32* %19, align 4
  %176 = load i32*, i32** %9, align 8
  store i32 %175, i32* %176, align 4
  br label %177

177:                                              ; preds = %174, %171
  br label %178

178:                                              ; preds = %177, %168
  br label %179

179:                                              ; preds = %178, %148
  br label %180

180:                                              ; preds = %179, %121, %115, %107, %99, %95
  %181 = load i32*, i32** %9, align 8
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, -1
  br i1 %183, label %184, label %288

184:                                              ; preds = %180
  %185 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %186 = call %struct.TYPE_25__* @GetPID(%struct.TYPE_28__* %185, i32 0)
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %188, align 8
  store %struct.TYPE_26__* %189, %struct.TYPE_26__** %22, align 8
  store i32 0, i32* %23, align 4
  br label %190

190:                                              ; preds = %284, %184
  %191 = load i32, i32* %23, align 4
  %192 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %193 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp slt i32 %191, %195
  br i1 %196, label %197, label %287

197:                                              ; preds = %190
  %198 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_35__**, %struct.TYPE_35__*** %200, align 8
  %202 = load i32, i32* %23, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_35__*, %struct.TYPE_35__** %201, i64 %203
  %205 = load %struct.TYPE_35__*, %struct.TYPE_35__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_38__*, %struct.TYPE_38__** %207, align 8
  store %struct.TYPE_38__* %208, %struct.TYPE_38__** %24, align 8
  %209 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %210 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %213 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = icmp eq i32 %211, %214
  br i1 %215, label %228, label %216

216:                                              ; preds = %197
  %217 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %218 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = icmp eq i32 %219, 8191
  br i1 %220, label %221, label %283

221:                                              ; preds = %216
  %222 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %223 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %224 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = call i64 @PIDReferencedByProgram(%struct.TYPE_38__* %222, i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %283

228:                                              ; preds = %221, %197
  %229 = load i32, i32* %8, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %242

231:                                              ; preds = %228
  %232 = load i32*, i32** %9, align 8
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %235 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %234, i32 0, i32 1
  store i32 %233, i32* %235, align 4
  %236 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %237 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @vlc_stream_Tell(i32 %238)
  %240 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %241 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %240, i32 0, i32 4
  store i32 %239, i32* %241, align 4
  br label %271

242:                                              ; preds = %228
  %243 = load i32, i32* %16, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %257

245:                                              ; preds = %242
  %246 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %247 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %246, i32 0, i32 3
  %248 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = icmp eq i32 %249, -1
  br i1 %250, label %251, label %257

251:                                              ; preds = %245
  %252 = load i32*, i32** %9, align 8
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %255 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %254, i32 0, i32 3
  %256 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %255, i32 0, i32 0
  store i32 %253, i32* %256, align 4
  br label %270

257:                                              ; preds = %245, %242
  %258 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %259 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %258, i32 0, i32 3
  %260 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = icmp eq i32 %261, -1
  br i1 %262, label %263, label %269

263:                                              ; preds = %257
  %264 = load i32*, i32** %9, align 8
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %267 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %266, i32 0, i32 3
  %268 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %267, i32 0, i32 1
  store i32 %265, i32* %268, align 4
  br label %269

269:                                              ; preds = %263, %257
  br label %270

270:                                              ; preds = %269, %251
  br label %271

271:                                              ; preds = %270, %231
  %272 = load i32, i32* %7, align 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %280, label %274

274:                                              ; preds = %271
  %275 = load i32, i32* %7, align 4
  %276 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %277 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 4
  %279 = icmp eq i32 %275, %278
  br i1 %279, label %280, label %282

280:                                              ; preds = %274, %271
  %281 = load i32*, i32** %10, align 8
  store i32 1, i32* %281, align 4
  br label %282

282:                                              ; preds = %280, %274
  br label %283

283:                                              ; preds = %282, %221, %216
  br label %284

284:                                              ; preds = %283
  %285 = load i32, i32* %23, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %23, align 4
  br label %190

287:                                              ; preds = %190
  br label %288

288:                                              ; preds = %287, %180
  br label %289

289:                                              ; preds = %288, %69, %56
  %290 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %291 = call i32 @block_Release(%struct.TYPE_29__* %290)
  br label %28

292:                                              ; preds = %38
  %293 = load i32, i32* %12, align 4
  ret i32 %293
}

declare dso_local %struct.TYPE_29__* @ReadTSPacket(%struct.TYPE_27__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_29__*) #1

declare dso_local i32 @PIDGet(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_25__* @GetPID(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @GetPCR(%struct.TYPE_29__*) #1

declare dso_local i64 @__MIN(i32, i32) #1

declare dso_local i64 @ParsePESHeader(i32, i32*, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_27__*) #1

declare dso_local i64 @PIDReferencedByProgram(%struct.TYPE_38__*, i32) #1

declare dso_local i32 @vlc_stream_Tell(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
