; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_t2.c_opj_t2_encode_packets.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_t2.c_opj_t2_encode_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { %struct.TYPE_28__*, %struct.TYPE_27__* }
%struct.TYPE_28__ = type { i64, %struct.TYPE_32__, %struct.TYPE_34__* }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i64, i32 }
%struct.TYPE_34__ = type { i64, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_29__ = type { i64, %struct.TYPE_33__*, i64 }
%struct.TYPE_33__ = type { i32, %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i32, i32, i32 }
%struct.TYPE_37__ = type { i64, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i64 }

@OPJ_PROFILE_CINEMA_4K = common dso_local global i64 0, align 8
@OPJ_FALSE = common dso_local global i32 0, align 4
@THRESH_CALC = common dso_local global i32 0, align 4
@OPJ_PROG_UNKNOWN = common dso_local global i64 0, align 8
@OPJ_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opj_t2_encode_packets(%struct.TYPE_36__* %0, i64 %1, %struct.TYPE_35__* %2, i64 %3, i32* %4, i64* %5, i64 %6, %struct.TYPE_29__* %7, i64 %8, i32 %9, i64 %10, i32 %11, i32* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_36__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_35__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_29__*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca %struct.TYPE_37__*, align 8
  %33 = alloca %struct.TYPE_37__*, align 8
  %34 = alloca %struct.TYPE_27__*, align 8
  %35 = alloca %struct.TYPE_28__*, align 8
  %36 = alloca %struct.TYPE_34__*, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca %struct.TYPE_33__*, align 8
  %43 = alloca %struct.TYPE_38__*, align 8
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %15, align 8
  store i64 %1, i64* %16, align 8
  store %struct.TYPE_35__* %2, %struct.TYPE_35__** %17, align 8
  store i64 %3, i64* %18, align 8
  store i32* %4, i32** %19, align 8
  store i64* %5, i64** %20, align 8
  store i64 %6, i64* %21, align 8
  store %struct.TYPE_29__* %7, %struct.TYPE_29__** %22, align 8
  store i64 %8, i64* %23, align 8
  store i32 %9, i32* %24, align 4
  store i64 %10, i64* %25, align 8
  store i32 %11, i32* %26, align 4
  store i32* %12, i32** %27, align 8
  %44 = load i32*, i32** %19, align 8
  store i32* %44, i32** %28, align 8
  store i64 0, i64* %29, align 8
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %32, align 8
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %33, align 8
  %45 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %46, align 8
  store %struct.TYPE_27__* %47, %struct.TYPE_27__** %34, align 8
  %48 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %49, align 8
  store %struct.TYPE_28__* %50, %struct.TYPE_28__** %35, align 8
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %35, align 8
  %52 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_34__*, %struct.TYPE_34__** %52, align 8
  %54 = load i64, i64* %16, align 8
  %55 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %53, i64 %54
  store %struct.TYPE_34__* %55, %struct.TYPE_34__** %36, align 8
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %35, align 8
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @OPJ_PROFILE_CINEMA_4K, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 2, i32 1
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %37, align 8
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %35, align 8
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %13
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %34, align 8
  %72 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  br label %75

74:                                               ; preds = %13
  br label %75

75:                                               ; preds = %74, %70
  %76 = phi i32 [ %73, %70 ], [ 1, %74 ]
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %38, align 8
  %78 = load %struct.TYPE_34__*, %struct.TYPE_34__** %36, align 8
  %79 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %39, align 8
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %34, align 8
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %35, align 8
  %84 = load i64, i64* %16, align 8
  %85 = load i32, i32* %26, align 4
  %86 = call %struct.TYPE_37__* @opj_pi_initialise_encode(%struct.TYPE_27__* %82, %struct.TYPE_28__* %83, i64 %84, i32 %85)
  store %struct.TYPE_37__* %86, %struct.TYPE_37__** %32, align 8
  %87 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %88 = icmp ne %struct.TYPE_37__* %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %75
  %90 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %90, i32* %14, align 4
  br label %369

91:                                               ; preds = %75
  %92 = load i64*, i64** %20, align 8
  store i64 0, i64* %92, align 8
  %93 = load i32, i32* %26, align 4
  %94 = load i32, i32* @THRESH_CALC, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %204

96:                                               ; preds = %91
  %97 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  store %struct.TYPE_37__* %97, %struct.TYPE_37__** %33, align 8
  store i64 0, i64* %30, align 8
  br label %98

98:                                               ; preds = %200, %96
  %99 = load i64, i64* %30, align 8
  %100 = load i64, i64* %38, align 8
  %101 = icmp ult i64 %99, %100
  br i1 %101, label %102, label %203

102:                                              ; preds = %98
  store i64 0, i64* %40, align 8
  %103 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  store %struct.TYPE_37__* %103, %struct.TYPE_37__** %33, align 8
  store i64 0, i64* %31, align 8
  br label %104

104:                                              ; preds = %196, %102
  %105 = load i64, i64* %31, align 8
  %106 = load i64, i64* %37, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %199

108:                                              ; preds = %104
  %109 = load i64, i64* %30, align 8
  store i64 %109, i64* %41, align 8
  %110 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %35, align 8
  %112 = load i64, i64* %16, align 8
  %113 = load i64, i64* %31, align 8
  %114 = load i64, i64* %41, align 8
  %115 = load i32, i32* %24, align 4
  %116 = load i32, i32* %26, align 4
  %117 = call i32 @opj_pi_create_encode(%struct.TYPE_37__* %110, %struct.TYPE_28__* %111, i64 %112, i64 %113, i64 %114, i32 %115, i32 %116)
  %118 = load %struct.TYPE_37__*, %struct.TYPE_37__** %33, align 8
  %119 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @OPJ_PROG_UNKNOWN, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %108
  %125 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %126 = load i64, i64* %39, align 8
  %127 = call i32 @opj_pi_destroy(%struct.TYPE_37__* %125, i64 %126)
  %128 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %128, i32* %14, align 4
  br label %369

129:                                              ; preds = %108
  br label %130

130:                                              ; preds = %171, %129
  %131 = load %struct.TYPE_37__*, %struct.TYPE_37__** %33, align 8
  %132 = call i64 @opj_pi_next(%struct.TYPE_37__* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %172

134:                                              ; preds = %130
  %135 = load %struct.TYPE_37__*, %struct.TYPE_37__** %33, align 8
  %136 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %18, align 8
  %139 = icmp ult i64 %137, %138
  br i1 %139, label %140, label %171

140:                                              ; preds = %134
  store i64 0, i64* %29, align 8
  %141 = load i64, i64* %16, align 8
  %142 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %143 = load %struct.TYPE_34__*, %struct.TYPE_34__** %36, align 8
  %144 = load %struct.TYPE_37__*, %struct.TYPE_37__** %33, align 8
  %145 = load i32*, i32** %28, align 8
  %146 = load i64, i64* %21, align 8
  %147 = load %struct.TYPE_29__*, %struct.TYPE_29__** %22, align 8
  %148 = load i32, i32* %26, align 4
  %149 = load i32*, i32** %27, align 8
  %150 = call i32 @opj_t2_encode_packet(i64 %141, %struct.TYPE_35__* %142, %struct.TYPE_34__* %143, %struct.TYPE_37__* %144, i32* %145, i64* %29, i64 %146, %struct.TYPE_29__* %147, i32 %148, i32* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %140
  %153 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %154 = load i64, i64* %39, align 8
  %155 = call i32 @opj_pi_destroy(%struct.TYPE_37__* %153, i64 %154)
  %156 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %156, i32* %14, align 4
  br label %369

157:                                              ; preds = %140
  %158 = load i64, i64* %29, align 8
  %159 = load i64, i64* %40, align 8
  %160 = add i64 %159, %158
  store i64 %160, i64* %40, align 8
  %161 = load i64, i64* %29, align 8
  %162 = load i32*, i32** %28, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 %161
  store i32* %163, i32** %28, align 8
  %164 = load i64, i64* %29, align 8
  %165 = load i64, i64* %21, align 8
  %166 = sub i64 %165, %164
  store i64 %166, i64* %21, align 8
  %167 = load i64, i64* %29, align 8
  %168 = load i64*, i64** %20, align 8
  %169 = load i64, i64* %168, align 8
  %170 = add i64 %169, %167
  store i64 %170, i64* %168, align 8
  br label %171

171:                                              ; preds = %157, %134
  br label %130

172:                                              ; preds = %130
  %173 = load %struct.TYPE_28__*, %struct.TYPE_28__** %35, align 8
  %174 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %193

179:                                              ; preds = %172
  %180 = load i64, i64* %40, align 8
  %181 = load %struct.TYPE_28__*, %struct.TYPE_28__** %35, align 8
  %182 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ugt i64 %180, %185
  br i1 %186, label %187, label %192

187:                                              ; preds = %179
  %188 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %189 = load i64, i64* %39, align 8
  %190 = call i32 @opj_pi_destroy(%struct.TYPE_37__* %188, i64 %189)
  %191 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %191, i32* %14, align 4
  br label %369

192:                                              ; preds = %179
  br label %193

193:                                              ; preds = %192, %172
  %194 = load %struct.TYPE_37__*, %struct.TYPE_37__** %33, align 8
  %195 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %194, i32 1
  store %struct.TYPE_37__* %195, %struct.TYPE_37__** %33, align 8
  br label %196

196:                                              ; preds = %193
  %197 = load i64, i64* %31, align 8
  %198 = add i64 %197, 1
  store i64 %198, i64* %31, align 8
  br label %104

199:                                              ; preds = %104
  br label %200

200:                                              ; preds = %199
  %201 = load i64, i64* %30, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %30, align 8
  br label %98

203:                                              ; preds = %98
  br label %364

204:                                              ; preds = %91
  %205 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %206 = load %struct.TYPE_28__*, %struct.TYPE_28__** %35, align 8
  %207 = load i64, i64* %16, align 8
  %208 = load i64, i64* %25, align 8
  %209 = load i64, i64* %23, align 8
  %210 = load i32, i32* %24, align 4
  %211 = load i32, i32* %26, align 4
  %212 = call i32 @opj_pi_create_encode(%struct.TYPE_37__* %205, %struct.TYPE_28__* %206, i64 %207, i64 %208, i64 %209, i32 %210, i32 %211)
  %213 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %214 = load i64, i64* %25, align 8
  %215 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %213, i64 %214
  store %struct.TYPE_37__* %215, %struct.TYPE_37__** %33, align 8
  %216 = load %struct.TYPE_37__*, %struct.TYPE_37__** %33, align 8
  %217 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @OPJ_PROG_UNKNOWN, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %227

222:                                              ; preds = %204
  %223 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %224 = load i64, i64* %39, align 8
  %225 = call i32 @opj_pi_destroy(%struct.TYPE_37__* %223, i64 %224)
  %226 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %226, i32* %14, align 4
  br label %369

227:                                              ; preds = %204
  br label %228

228:                                              ; preds = %362, %227
  %229 = load %struct.TYPE_37__*, %struct.TYPE_37__** %33, align 8
  %230 = call i64 @opj_pi_next(%struct.TYPE_37__* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %363

232:                                              ; preds = %228
  %233 = load %struct.TYPE_37__*, %struct.TYPE_37__** %33, align 8
  %234 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* %18, align 8
  %237 = icmp ult i64 %235, %236
  br i1 %237, label %238, label %362

238:                                              ; preds = %232
  store i64 0, i64* %29, align 8
  %239 = load i64, i64* %16, align 8
  %240 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %241 = load %struct.TYPE_34__*, %struct.TYPE_34__** %36, align 8
  %242 = load %struct.TYPE_37__*, %struct.TYPE_37__** %33, align 8
  %243 = load i32*, i32** %28, align 8
  %244 = load i64, i64* %21, align 8
  %245 = load %struct.TYPE_29__*, %struct.TYPE_29__** %22, align 8
  %246 = load i32, i32* %26, align 4
  %247 = load i32*, i32** %27, align 8
  %248 = call i32 @opj_t2_encode_packet(i64 %239, %struct.TYPE_35__* %240, %struct.TYPE_34__* %241, %struct.TYPE_37__* %242, i32* %243, i64* %29, i64 %244, %struct.TYPE_29__* %245, i32 %246, i32* %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %255, label %250

250:                                              ; preds = %238
  %251 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %252 = load i64, i64* %39, align 8
  %253 = call i32 @opj_pi_destroy(%struct.TYPE_37__* %251, i64 %252)
  %254 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %254, i32* %14, align 4
  br label %369

255:                                              ; preds = %238
  %256 = load i64, i64* %29, align 8
  %257 = load i32*, i32** %28, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 %256
  store i32* %258, i32** %28, align 8
  %259 = load i64, i64* %29, align 8
  %260 = load i64, i64* %21, align 8
  %261 = sub i64 %260, %259
  store i64 %261, i64* %21, align 8
  %262 = load i64, i64* %29, align 8
  %263 = load i64*, i64** %20, align 8
  %264 = load i64, i64* %263, align 8
  %265 = add i64 %264, %262
  store i64 %265, i64* %263, align 8
  %266 = load %struct.TYPE_29__*, %struct.TYPE_29__** %22, align 8
  %267 = icmp ne %struct.TYPE_29__* %266, null
  br i1 %267, label %268, label %357

268:                                              ; preds = %255
  %269 = load %struct.TYPE_29__*, %struct.TYPE_29__** %22, align 8
  %270 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %352

273:                                              ; preds = %268
  %274 = load %struct.TYPE_29__*, %struct.TYPE_29__** %22, align 8
  %275 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %274, i32 0, i32 1
  %276 = load %struct.TYPE_33__*, %struct.TYPE_33__** %275, align 8
  %277 = load i64, i64* %16, align 8
  %278 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %276, i64 %277
  store %struct.TYPE_33__* %278, %struct.TYPE_33__** %42, align 8
  %279 = load %struct.TYPE_33__*, %struct.TYPE_33__** %42, align 8
  %280 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %279, i32 0, i32 1
  %281 = load %struct.TYPE_38__*, %struct.TYPE_38__** %280, align 8
  %282 = load %struct.TYPE_29__*, %struct.TYPE_29__** %22, align 8
  %283 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %281, i64 %284
  store %struct.TYPE_38__* %285, %struct.TYPE_38__** %43, align 8
  %286 = load %struct.TYPE_29__*, %struct.TYPE_29__** %22, align 8
  %287 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %297, label %290

290:                                              ; preds = %273
  %291 = load %struct.TYPE_33__*, %struct.TYPE_33__** %42, align 8
  %292 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = add nsw i32 %293, 1
  %295 = load %struct.TYPE_38__*, %struct.TYPE_38__** %43, align 8
  %296 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %295, i32 0, i32 0
  store i32 %294, i32* %296, align 4
  br label %333

297:                                              ; preds = %273
  %298 = load %struct.TYPE_28__*, %struct.TYPE_28__** %35, align 8
  %299 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.TYPE_34__*, %struct.TYPE_34__** %36, align 8
  %304 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = or i32 %302, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %317

308:                                              ; preds = %297
  %309 = load %struct.TYPE_38__*, %struct.TYPE_38__** %43, align 8
  %310 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %308
  %314 = load %struct.TYPE_38__*, %struct.TYPE_38__** %43, align 8
  %315 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  br label %329

317:                                              ; preds = %308, %297
  %318 = load %struct.TYPE_33__*, %struct.TYPE_33__** %42, align 8
  %319 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %318, i32 0, i32 1
  %320 = load %struct.TYPE_38__*, %struct.TYPE_38__** %319, align 8
  %321 = load %struct.TYPE_29__*, %struct.TYPE_29__** %22, align 8
  %322 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = sub i64 %323, 1
  %325 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %320, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = add nsw i32 %327, 1
  br label %329

329:                                              ; preds = %317, %313
  %330 = phi i32 [ %316, %313 ], [ %328, %317 ]
  %331 = load %struct.TYPE_38__*, %struct.TYPE_38__** %43, align 8
  %332 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %331, i32 0, i32 0
  store i32 %330, i32* %332, align 4
  br label %333

333:                                              ; preds = %329, %290
  %334 = load %struct.TYPE_38__*, %struct.TYPE_38__** %43, align 8
  %335 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = sext i32 %336 to i64
  %338 = load i64, i64* %29, align 8
  %339 = add i64 %337, %338
  %340 = sub i64 %339, 1
  %341 = trunc i64 %340 to i32
  %342 = load %struct.TYPE_38__*, %struct.TYPE_38__** %43, align 8
  %343 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %342, i32 0, i32 1
  store i32 %341, i32* %343, align 4
  %344 = load %struct.TYPE_38__*, %struct.TYPE_38__** %43, align 8
  %345 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = sub nsw i32 %346, 1
  %348 = load %struct.TYPE_38__*, %struct.TYPE_38__** %43, align 8
  %349 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %348, i32 0, i32 2
  %350 = load i32, i32* %349, align 4
  %351 = add nsw i32 %350, %347
  store i32 %351, i32* %349, align 4
  br label %352

352:                                              ; preds = %333, %268
  %353 = load %struct.TYPE_29__*, %struct.TYPE_29__** %22, align 8
  %354 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = add i64 %355, 1
  store i64 %356, i64* %354, align 8
  br label %357

357:                                              ; preds = %352, %255
  %358 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %359 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %359, align 4
  br label %362

362:                                              ; preds = %357, %232
  br label %228

363:                                              ; preds = %228
  br label %364

364:                                              ; preds = %363, %203
  %365 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %366 = load i64, i64* %39, align 8
  %367 = call i32 @opj_pi_destroy(%struct.TYPE_37__* %365, i64 %366)
  %368 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %368, i32* %14, align 4
  br label %369

369:                                              ; preds = %364, %250, %222, %187, %152, %124, %89
  %370 = load i32, i32* %14, align 4
  ret i32 %370
}

declare dso_local %struct.TYPE_37__* @opj_pi_initialise_encode(%struct.TYPE_27__*, %struct.TYPE_28__*, i64, i32) #1

declare dso_local i32 @opj_pi_create_encode(%struct.TYPE_37__*, %struct.TYPE_28__*, i64, i64, i64, i32, i32) #1

declare dso_local i32 @opj_pi_destroy(%struct.TYPE_37__*, i64) #1

declare dso_local i64 @opj_pi_next(%struct.TYPE_37__*) #1

declare dso_local i32 @opj_t2_encode_packet(i64, %struct.TYPE_35__*, %struct.TYPE_34__*, %struct.TYPE_37__*, i32*, i64*, i64, %struct.TYPE_29__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
