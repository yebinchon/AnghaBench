; ModuleID = '/home/carl/AnghaBench/vlc/modules/services_discovery/extr_sap.c_ParseSAP.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/services_discovery/extr_sap.c_ParseSAP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_17__**, i32, i64 }
%struct.TYPE_17__ = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i8*, i8*, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"encrypted packet, unsupported\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"strict mode, discarding announce with null id hash\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"decompression of SAP packet failed\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"v=0\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"application/sdp\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"unsupported content type: %s\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"sdp://%s\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i64)* @ParseSAP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseSAP(%struct.TYPE_14__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca [4 x i32], align 16
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_17__*, align 8
  %25 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %8, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i64, i64* %7, align 8
  %41 = icmp ult i64 %40, 4
  br i1 %41, label %42, label %44

42:                                               ; preds = %3
  %43 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %43, i32* %4, align 4
  br label %365

44:                                               ; preds = %3
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  store i8 %47, i8* %13, align 1
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  store i8 %50, i8* %14, align 1
  %51 = load i8, i8* %13, align 1
  %52 = sext i8 %51 to i32
  %53 = ashr i32 %52, 5
  %54 = icmp ne i32 %53, 1
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %56, i32* %4, align 4
  br label %365

57:                                               ; preds = %44
  %58 = load i8, i8* %13, align 1
  %59 = sext i8 %58 to i32
  %60 = and i32 %59, 16
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %15, align 4
  %63 = load i8, i8* %13, align 1
  %64 = sext i8 %63 to i32
  %65 = and i32 %64, 4
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %16, align 4
  %68 = load i8, i8* %13, align 1
  %69 = sext i8 %68 to i32
  %70 = and i32 %69, 2
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %57
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %74 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Dbg(%struct.TYPE_14__* %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %75, i32* %4, align 4
  br label %365

76:                                               ; preds = %57
  %77 = load i8, i8* %13, align 1
  %78 = sext i8 %77 to i32
  %79 = and i32 %78, 1
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %17, align 4
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  %84 = call i64 @U16_AT(i8* %83)
  store i64 %84, i64* %18, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %76
  %90 = load i64, i64* %18, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %94 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Dbg(%struct.TYPE_14__* %93, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %95, i32* %4, align 4
  br label %365

96:                                               ; preds = %89, %76
  %97 = load i8*, i8** %6, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 4
  store i8* %98, i8** %6, align 8
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %96
  store i32 0, i32* %19, align 4
  br label %102

102:                                              ; preds = %111, %101
  %103 = load i32, i32* %19, align 4
  %104 = icmp slt i32 %103, 4
  br i1 %104, label %105, label %116

105:                                              ; preds = %102
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 @U32_AT(i8* %106)
  %108 = load i32, i32* %19, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %109
  store i32 %107, i32* %110, align 4
  br label %111

111:                                              ; preds = %105
  %112 = load i32, i32* %19, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %19, align 4
  %114 = load i8*, i8** %6, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 4
  store i8* %115, i8** %6, align 8
  br label %102

116:                                              ; preds = %102
  br label %125

117:                                              ; preds = %96
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %119 = call i32 @memset(i32* %118, i32 0, i32 16)
  %120 = load i8*, i8** %6, align 8
  %121 = call i32 @U32_AT(i8* %120)
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  store i32 %121, i32* %122, align 4
  %123 = load i8*, i8** %6, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 4
  store i8* %124, i8** %6, align 8
  br label %125

125:                                              ; preds = %117, %116
  %126 = load i8, i8* %14, align 1
  %127 = sext i8 %126 to i32
  %128 = load i8*, i8** %6, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  store i8* %130, i8** %6, align 8
  %131 = load i8*, i8** %6, align 8
  %132 = load i8*, i8** %10, align 8
  %133 = icmp ugt i8* %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %125
  %135 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %135, i32* %4, align 4
  br label %365

136:                                              ; preds = %125
  store i8* null, i8** %20, align 8
  %137 = load i32, i32* %17, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %166

139:                                              ; preds = %136
  %140 = load i8*, i8** %6, align 8
  %141 = load i8*, i8** %10, align 8
  %142 = load i8*, i8** %6, align 8
  %143 = ptrtoint i8* %141 to i64
  %144 = ptrtoint i8* %142 to i64
  %145 = sub i64 %143, %144
  %146 = trunc i64 %145 to i32
  %147 = call i32 @Decompress(i8* %140, i8** %20, i32 %146)
  store i32 %147, i32* %21, align 4
  %148 = load i32, i32* %21, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %139
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %152 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Dbg(%struct.TYPE_14__* %151, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %153 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %153, i32* %4, align 4
  br label %365

154:                                              ; preds = %139
  %155 = load i8*, i8** %20, align 8
  %156 = load i32, i32* %21, align 4
  %157 = add nsw i32 %156, 1
  %158 = call i8* @xrealloc(i8* %155, i32 %157)
  store i8* %158, i8** %20, align 8
  %159 = load i8*, i8** %20, align 8
  %160 = load i32, i32* %21, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  store i8 0, i8* %162, align 1
  %163 = load i8*, i8** %20, align 8
  store i8* %163, i8** %9, align 8
  %164 = load i32, i32* %21, align 4
  %165 = sext i32 %164 to i64
  store i64 %165, i64* %7, align 8
  br label %173

166:                                              ; preds = %136
  %167 = load i8*, i8** %6, align 8
  store i8* %167, i8** %9, align 8
  %168 = load i8*, i8** %10, align 8
  %169 = load i8*, i8** %6, align 8
  %170 = ptrtoint i8* %168 to i64
  %171 = ptrtoint i8* %169 to i64
  %172 = sub i64 %170, %171
  store i64 %172, i64* %7, align 8
  br label %173

173:                                              ; preds = %166, %154
  %174 = load i8*, i8** %9, align 8
  %175 = load i64, i64* %7, align 8
  %176 = getelementptr inbounds i8, i8* %174, i64 %175
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 0
  %180 = zext i1 %179 to i32
  %181 = call i32 @assert(i32 %180)
  %182 = load i8*, i8** %9, align 8
  %183 = call i64 @strncmp(i8* %182, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %209

185:                                              ; preds = %173
  %186 = load i8*, i8** %9, align 8
  %187 = call i32 @strlen(i8* %186)
  %188 = add nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  store i64 %189, i64* %22, align 8
  %190 = load i8*, i8** %9, align 8
  %191 = call i64 @strcmp(i8* %190, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %185
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %195 = load i8*, i8** %9, align 8
  %196 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Dbg(%struct.TYPE_14__* %194, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %195)
  br label %361

197:                                              ; preds = %185
  %198 = load i64, i64* %7, align 8
  %199 = load i64, i64* %22, align 8
  %200 = icmp ule i64 %198, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %197
  br label %361

202:                                              ; preds = %197
  %203 = load i64, i64* %22, align 8
  %204 = load i64, i64* %7, align 8
  %205 = sub i64 %204, %203
  store i64 %205, i64* %7, align 8
  %206 = load i64, i64* %22, align 8
  %207 = load i8*, i8** %9, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 %206
  store i8* %208, i8** %9, align 8
  br label %209

209:                                              ; preds = %202, %173
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %211 = call i32 @VLC_OBJECT(%struct.TYPE_14__* %210)
  %212 = load i8*, i8** %9, align 8
  %213 = call %struct.TYPE_16__* @ParseSDP(i32 %211, i8* %212)
  store %struct.TYPE_16__* %213, %struct.TYPE_16__** %11, align 8
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %215 = icmp eq %struct.TYPE_16__* %214, null
  br i1 %215, label %216, label %217

216:                                              ; preds = %209
  br label %361

217:                                              ; preds = %209
  %218 = load i8*, i8** %9, align 8
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 0
  store i8* %218, i8** %220, align 8
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %222 = call i32 @VLC_OBJECT(%struct.TYPE_14__* %221)
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %224 = call i64 @ParseConnection(i32 %222, %struct.TYPE_16__* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %217
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 1
  store i8* null, i8** %228, align 8
  br label %229

229:                                              ; preds = %226, %217
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @IsWellKnownPayload(i32 %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %229
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %256, label %240

240:                                              ; preds = %235, %229
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 1
  %243 = load i8*, i8** %242, align 8
  %244 = call i32 @free(i8* %243)
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 0
  %249 = load i8*, i8** %248, align 8
  %250 = call i32 @asprintf(i8** %246, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %249)
  %251 = icmp eq i32 %250, -1
  br i1 %251, label %252, label %255

252:                                              ; preds = %240
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 1
  store i8* null, i8** %254, align 8
  br label %255

255:                                              ; preds = %252, %240
  br label %256

256:                                              ; preds = %255, %235
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 1
  %259 = load i8*, i8** %258, align 8
  %260 = icmp eq i8* %259, null
  br i1 %260, label %261, label %264

261:                                              ; preds = %256
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %263 = call i32 @FreeSDP(%struct.TYPE_16__* %262)
  br label %361

264:                                              ; preds = %256
  store i32 0, i32* %23, align 4
  br label %265

265:                                              ; preds = %349, %264
  %266 = load i32, i32* %23, align 4
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = icmp slt i32 %266, %269
  br i1 %270, label %271, label %352

271:                                              ; preds = %265
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 1
  %274 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %273, align 8
  %275 = load i32, i32* %23, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %274, i64 %276
  %278 = load %struct.TYPE_17__*, %struct.TYPE_17__** %277, align 8
  store %struct.TYPE_17__* %278, %struct.TYPE_17__** %24, align 8
  %279 = load i64, i64* %18, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %288, label %281

281:                                              ; preds = %271
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %283 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %282, i32 0, i32 5
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %286 = call i64 @IsSameSession(i32 %284, %struct.TYPE_16__* %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %304, label %288

288:                                              ; preds = %281, %271
  %289 = load i64, i64* %18, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %348

291:                                              ; preds = %288
  %292 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %293 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* %18, align 8
  %296 = icmp eq i64 %294, %295
  br i1 %296, label %297, label %348

297:                                              ; preds = %291
  %298 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %299 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %298, i32 0, i32 4
  %300 = load i32, i32* %299, align 4
  %301 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %302 = call i32 @memcmp(i32 %300, i32* %301, i32 16)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %348, label %304

304:                                              ; preds = %297, %281
  %305 = load i32, i32* %16, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %342, label %307

307:                                              ; preds = %304
  %308 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %309 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  %311 = icmp sle i32 %310, 5
  br i1 %311, label %312, label %317

312:                                              ; preds = %307
  %313 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %314 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %314, align 8
  br label %317

317:                                              ; preds = %312, %307
  %318 = call i32 (...) @vlc_tick_now()
  store i32 %318, i32* %25, align 4
  %319 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %320 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %323 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 8
  %325 = sub nsw i32 %324, 1
  %326 = mul nsw i32 %321, %325
  %327 = load i32, i32* %25, align 4
  %328 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %329 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 8
  %331 = sub nsw i32 %327, %330
  %332 = add nsw i32 %326, %331
  %333 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %334 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 8
  %336 = sdiv i32 %332, %335
  %337 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %338 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %337, i32 0, i32 2
  store i32 %336, i32* %338, align 4
  %339 = load i32, i32* %25, align 4
  %340 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %341 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %340, i32 0, i32 3
  store i32 %339, i32* %341, align 8
  br label %342

342:                                              ; preds = %317, %304
  %343 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %344 = call i32 @FreeSDP(%struct.TYPE_16__* %343)
  %345 = load i8*, i8** %20, align 8
  %346 = call i32 @free(i8* %345)
  %347 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %347, i32* %4, align 4
  br label %365

348:                                              ; preds = %297, %291, %288
  br label %349

349:                                              ; preds = %348
  %350 = load i32, i32* %23, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %23, align 4
  br label %265

352:                                              ; preds = %265
  %353 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %354 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %355 = load i64, i64* %18, align 8
  %356 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %357 = call i32 @CreateAnnounce(%struct.TYPE_14__* %353, i32* %354, i64 %355, %struct.TYPE_16__* %356)
  %358 = load i8*, i8** %20, align 8
  %359 = call i32 @free(i8* %358)
  %360 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %360, i32* %4, align 4
  br label %365

361:                                              ; preds = %261, %216, %201, %193
  %362 = load i8*, i8** %20, align 8
  %363 = call i32 @free(i8* %362)
  %364 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %364, i32* %4, align 4
  br label %365

365:                                              ; preds = %361, %352, %342, %150, %134, %92, %72, %55, %42
  %366 = load i32, i32* %4, align 4
  ret i32 %366
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i64 @U16_AT(i8*) #1

declare dso_local i32 @U32_AT(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @Decompress(i8*, i8**, i32) #1

declare dso_local i8* @xrealloc(i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_16__* @ParseSDP(i32, i8*) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_14__*) #1

declare dso_local i64 @ParseConnection(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @IsWellKnownPayload(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @FreeSDP(%struct.TYPE_16__*) #1

declare dso_local i64 @IsSameSession(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @memcmp(i32, i32*, i32) #1

declare dso_local i32 @vlc_tick_now(...) #1

declare dso_local i32 @CreateAnnounce(%struct.TYPE_14__*, i32*, i64, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
