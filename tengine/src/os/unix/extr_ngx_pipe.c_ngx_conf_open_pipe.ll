; ModuleID = '/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_pipe.c_ngx_conf_open_pipe.c'
source_filename = "/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_pipe.c_ngx_conf_open_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64, i32, i32, i8*, %struct.TYPE_16__*, i32, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { i32, i8** }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i8*, i64 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@NGX_PIPE_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@NGX_PIPE_WRITE = common dso_local global i32 0, align 4
@ngx_last_pipe = common dso_local global i32 0, align 4
@ngx_pipes = common dso_local global %struct.TYPE_14__* null, align 8
@ngx_pipe_generation = common dso_local global i64 0, align 8
@NGX_MAX_PROCESSES = common dso_local global i32 0, align 4
@NGX_INVALID_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @ngx_conf_open_pipe(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %19, align 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  %28 = call i8* @ngx_pnalloc(i32 %23, i64 %27)
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %395

32:                                               ; preds = %3
  %33 = load i8*, i8** %10, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  %41 = call i32 @ngx_cpystrn(i8* %33, i8* %36, i64 %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %8, align 8
  br label %45

45:                                               ; preds = %58, %32
  %46 = load i8*, i8** %8, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 32
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load i8*, i8** %8, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 9
  br label %55

55:                                               ; preds = %50, %45
  %56 = phi i1 [ true, %45 ], [ %54, %50 ]
  br i1 %56, label %57, label %61

57:                                               ; preds = %55
  br label %58

58:                                               ; preds = %57
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %8, align 8
  br label %45

61:                                               ; preds = %55
  %62 = load i8*, i8** %8, align 8
  store i8* %62, i8** %9, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call i64 @ngx_strcmp(i8* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @NGX_PIPE_READ, align 4
  store i32 %67, i32* %15, align 4
  br label %76

68:                                               ; preds = %61
  %69 = load i8*, i8** %7, align 8
  %70 = call i64 @ngx_strcmp(i8* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @NGX_PIPE_WRITE, align 4
  store i32 %73, i32* %15, align 4
  br label %75

74:                                               ; preds = %68
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %395

75:                                               ; preds = %72
  br label %76

76:                                               ; preds = %75, %66
  store i32 1, i32* %19, align 4
  br label %77

77:                                               ; preds = %130, %76
  %78 = load i8*, i8** %9, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %131

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %100, %82
  %84 = load i8*, i8** %9, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %83
  %89 = load i8*, i8** %9, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 32
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = load i8*, i8** %9, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 9
  br i1 %97, label %98, label %99

98:                                               ; preds = %93, %88
  br label %103

99:                                               ; preds = %93
  br label %100

100:                                              ; preds = %99
  %101 = load i8*, i8** %9, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %9, align 8
  br label %83

103:                                              ; preds = %98, %83
  %104 = load i8*, i8** %9, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i8*, i8** %9, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %9, align 8
  br label %111

111:                                              ; preds = %108, %103
  %112 = load i32, i32* %19, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %19, align 4
  br label %114

114:                                              ; preds = %127, %111
  %115 = load i8*, i8** %9, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 32
  br i1 %118, label %124, label %119

119:                                              ; preds = %114
  %120 = load i8*, i8** %9, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 9
  br label %124

124:                                              ; preds = %119, %114
  %125 = phi i1 [ true, %114 ], [ %123, %119 ]
  br i1 %125, label %126, label %130

126:                                              ; preds = %124
  br label %127

127:                                              ; preds = %126
  %128 = load i8*, i8** %9, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %9, align 8
  br label %114

130:                                              ; preds = %124
  br label %77

131:                                              ; preds = %77
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %19, align 4
  %136 = call %struct.TYPE_16__* @ngx_array_create(i32 %134, i32 %135, i32 8)
  store %struct.TYPE_16__* %136, %struct.TYPE_16__** %20, align 8
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %138 = icmp eq %struct.TYPE_16__* %137, null
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %395

140:                                              ; preds = %131
  store i32 0, i32* %17, align 4
  br label %141

141:                                              ; preds = %194, %140
  %142 = load i32, i32* %17, align 4
  %143 = load i32, i32* %19, align 4
  %144 = sub nsw i32 %143, 1
  %145 = icmp slt i32 %142, %144
  br i1 %145, label %146, label %197

146:                                              ; preds = %141
  br label %147

147:                                              ; preds = %160, %146
  %148 = load i8*, i8** %8, align 8
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 32
  br i1 %151, label %157, label %152

152:                                              ; preds = %147
  %153 = load i8*, i8** %8, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 9
  br label %157

157:                                              ; preds = %152, %147
  %158 = phi i1 [ true, %147 ], [ %156, %152 ]
  br i1 %158, label %159, label %163

159:                                              ; preds = %157
  br label %160

160:                                              ; preds = %159
  %161 = load i8*, i8** %8, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %8, align 8
  br label %147

163:                                              ; preds = %157
  %164 = load i8*, i8** %8, align 8
  store i8* %164, i8** %9, align 8
  br label %165

165:                                              ; preds = %182, %163
  %166 = load i8*, i8** %8, align 8
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %185

170:                                              ; preds = %165
  %171 = load i8*, i8** %8, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %173, 32
  br i1 %174, label %180, label %175

175:                                              ; preds = %170
  %176 = load i8*, i8** %8, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 9
  br i1 %179, label %180, label %181

180:                                              ; preds = %175, %170
  br label %185

181:                                              ; preds = %175
  br label %182

182:                                              ; preds = %181
  %183 = load i8*, i8** %8, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %8, align 8
  br label %165

185:                                              ; preds = %180, %165
  %186 = load i8*, i8** %8, align 8
  store i8 0, i8* %186, align 1
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %188 = call i64 @ngx_array_push(%struct.TYPE_16__* %187)
  %189 = inttoptr i64 %188 to i8**
  store i8** %189, i8*** %11, align 8
  %190 = load i8*, i8** %9, align 8
  %191 = load i8**, i8*** %11, align 8
  store i8* %190, i8** %191, align 8
  %192 = load i8*, i8** %8, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %8, align 8
  br label %194

194:                                              ; preds = %185
  %195 = load i32, i32* %17, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %17, align 4
  br label %141

197:                                              ; preds = %141
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %199 = call i64 @ngx_array_push(%struct.TYPE_16__* %198)
  %200 = inttoptr i64 %199 to i8**
  store i8** %200, i8*** %11, align 8
  %201 = load i8**, i8*** %11, align 8
  %202 = icmp eq i8** %201, null
  br i1 %202, label %203, label %204

203:                                              ; preds = %197
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %395

204:                                              ; preds = %197
  %205 = load i8**, i8*** %11, align 8
  store i8* null, i8** %205, align 8
  store i32 0, i32* %17, align 4
  store i32 -1, i32* %16, align 4
  br label %206

206:                                              ; preds = %304, %204
  %207 = load i32, i32* %17, align 4
  %208 = load i32, i32* @ngx_last_pipe, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %307

210:                                              ; preds = %206
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_pipes, align 8
  %212 = load i32, i32* %17, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %224, label %218

218:                                              ; preds = %210
  %219 = load i32, i32* %16, align 4
  %220 = icmp eq i32 %219, -1
  br i1 %220, label %221, label %223

221:                                              ; preds = %218
  %222 = load i32, i32* %17, align 4
  store i32 %222, i32* %16, align 4
  br label %223

223:                                              ; preds = %221, %218
  br label %304

224:                                              ; preds = %210
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_pipes, align 8
  %226 = load i32, i32* %17, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @ngx_pipe_generation, align 8
  %232 = icmp ne i64 %230, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %224
  br label %304

234:                                              ; preds = %224
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_pipes, align 8
  %239 = load i32, i32* %17, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 5
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %237, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %234
  br label %304

248:                                              ; preds = %234
  %249 = load i32, i32* %15, align 4
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_pipes, align 8
  %251 = load i32, i32* %17, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = icmp ne i32 %249, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %248
  br label %304

258:                                              ; preds = %248
  store i32 1, i32* %14, align 4
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 1
  %261 = load i8**, i8*** %260, align 8
  store i8** %261, i8*** %12, align 8
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_pipes, align 8
  %263 = load i32, i32* %17, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 5
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 1
  %269 = load i8**, i8*** %268, align 8
  store i8** %269, i8*** %13, align 8
  store i32 0, i32* %18, align 4
  br label %270

270:                                              ; preds = %292, %258
  %271 = load i32, i32* %18, align 4
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = sub nsw i32 %274, 1
  %276 = icmp slt i32 %271, %275
  br i1 %276, label %277, label %295

277:                                              ; preds = %270
  %278 = load i8**, i8*** %12, align 8
  %279 = load i32, i32* %18, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8*, i8** %278, i64 %280
  %282 = load i8*, i8** %281, align 8
  %283 = load i8**, i8*** %13, align 8
  %284 = load i32, i32* %18, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8*, i8** %283, i64 %285
  %287 = load i8*, i8** %286, align 8
  %288 = call i64 @ngx_strcmp(i8* %282, i8* %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %277
  store i32 0, i32* %14, align 4
  br label %295

291:                                              ; preds = %277
  br label %292

292:                                              ; preds = %291
  %293 = load i32, i32* %18, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %18, align 4
  br label %270

295:                                              ; preds = %290, %270
  %296 = load i32, i32* %14, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %303

298:                                              ; preds = %295
  %299 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_pipes, align 8
  %300 = load i32, i32* %17, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i64 %301
  store %struct.TYPE_14__* %302, %struct.TYPE_14__** %4, align 8
  br label %395

303:                                              ; preds = %295
  br label %304

304:                                              ; preds = %303, %257, %247, %233, %223
  %305 = load i32, i32* %17, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %17, align 4
  br label %206

307:                                              ; preds = %206
  %308 = load i32, i32* %16, align 4
  %309 = icmp eq i32 %308, -1
  br i1 %309, label %310, label %319

310:                                              ; preds = %307
  %311 = load i32, i32* @ngx_last_pipe, align 4
  %312 = load i32, i32* @NGX_MAX_PROCESSES, align 4
  %313 = icmp slt i32 %311, %312
  br i1 %313, label %314, label %317

314:                                              ; preds = %310
  %315 = load i32, i32* @ngx_last_pipe, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* @ngx_last_pipe, align 4
  store i32 %315, i32* %16, align 4
  br label %318

317:                                              ; preds = %310
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %395

318:                                              ; preds = %314
  br label %319

319:                                              ; preds = %318, %307
  %320 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_pipes, align 8
  %321 = load i32, i32* %16, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %320, i64 %322
  %324 = call i32 @ngx_memzero(%struct.TYPE_14__* %323, i32 56)
  %325 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %325, i32 0, i32 0
  %327 = call %struct.TYPE_14__* @ngx_list_push(i32* %326)
  %328 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_pipes, align 8
  %329 = load i32, i32* %16, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %328, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %331, i32 0, i32 7
  store %struct.TYPE_14__* %327, %struct.TYPE_14__** %332, align 8
  %333 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_pipes, align 8
  %334 = load i32, i32* %16, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %333, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %336, i32 0, i32 7
  %338 = load %struct.TYPE_14__*, %struct.TYPE_14__** %337, align 8
  %339 = icmp eq %struct.TYPE_14__* %338, null
  br i1 %339, label %340, label %341

340:                                              ; preds = %319
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %395

341:                                              ; preds = %319
  %342 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_pipes, align 8
  %343 = load i32, i32* %16, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %342, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %345, i32 0, i32 7
  %347 = load %struct.TYPE_14__*, %struct.TYPE_14__** %346, align 8
  %348 = call i32 @ngx_memzero(%struct.TYPE_14__* %347, i32 4)
  %349 = load i32, i32* @NGX_INVALID_FILE, align 4
  %350 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_pipes, align 8
  %351 = load i32, i32* %16, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %353, i32 0, i32 7
  %355 = load %struct.TYPE_14__*, %struct.TYPE_14__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %355, i32 0, i32 6
  store i32 %349, i32* %356, align 8
  %357 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_pipes, align 8
  %358 = load i32, i32* %16, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %360, i32 0, i32 3
  store i32 -1, i32* %361, align 4
  %362 = load i8*, i8** %10, align 8
  %363 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_pipes, align 8
  %364 = load i32, i32* %16, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %363, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %366, i32 0, i32 4
  store i8* %362, i8** %367, align 8
  %368 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %369 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_pipes, align 8
  %370 = load i32, i32* %16, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %369, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %372, i32 0, i32 5
  store %struct.TYPE_16__* %368, %struct.TYPE_16__** %373, align 8
  %374 = load i32, i32* %15, align 4
  %375 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_pipes, align 8
  %376 = load i32, i32* %16, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %375, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %378, i32 0, i32 2
  store i32 %374, i32* %379, align 8
  %380 = load i64, i64* @ngx_pipe_generation, align 8
  %381 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_pipes, align 8
  %382 = load i32, i32* %16, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %381, i64 %383
  %385 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %384, i32 0, i32 1
  store i64 %380, i64* %385, align 8
  %386 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_pipes, align 8
  %387 = load i32, i32* %16, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %386, i64 %388
  %390 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %389, i32 0, i32 0
  store i32 1, i32* %390, align 8
  %391 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_pipes, align 8
  %392 = load i32, i32* %16, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %391, i64 %393
  store %struct.TYPE_14__* %394, %struct.TYPE_14__** %4, align 8
  br label %395

395:                                              ; preds = %341, %340, %317, %298, %203, %139, %74, %31
  %396 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  ret %struct.TYPE_14__* %396
}

declare dso_local i8* @ngx_pnalloc(i32, i64) #1

declare dso_local i32 @ngx_cpystrn(i8*, i8*, i64) #1

declare dso_local i64 @ngx_strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_16__* @ngx_array_create(i32, i32, i32) #1

declare dso_local i64 @ngx_array_push(%struct.TYPE_16__*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_14__* @ngx_list_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
