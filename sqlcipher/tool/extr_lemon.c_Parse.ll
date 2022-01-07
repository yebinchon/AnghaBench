; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_Parse.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_Parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lemon = type { i64, i32, i32 }
%struct.pstate = type { i8*, i32, i64, i32, i32, i32, %struct.lemon* }

@INITIALIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Can't open this file for reading.\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Input file too large.\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Can't read in all %d bytes of this file.\00", align 1
@.str.4 = private unnamed_addr constant [75 x i8] c"String starting on this line is not terminated before the end of the file.\00", align 1
@.str.5 = private unnamed_addr constant [75 x i8] c"C code starting on this line is not terminated before the end of the file.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Parse(%struct.lemon* %0) #0 {
  %2 = alloca %struct.lemon*, align 8
  %3 = alloca %struct.pstate, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.lemon* %0, %struct.lemon** %2, align 8
  store i32 0, i32* %11, align 4
  %16 = call i32 @memset(%struct.pstate* %3, i8 signext 0, i32 48)
  %17 = load %struct.lemon*, %struct.lemon** %2, align 8
  %18 = getelementptr inbounds %struct.pstate, %struct.pstate* %3, i32 0, i32 6
  store %struct.lemon* %17, %struct.lemon** %18, align 8
  %19 = load %struct.lemon*, %struct.lemon** %2, align 8
  %20 = getelementptr inbounds %struct.lemon, %struct.lemon* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.pstate, %struct.pstate* %3, i32 0, i32 4
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.pstate, %struct.pstate* %3, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @INITIALIZE, align 4
  %25 = getelementptr inbounds %struct.pstate, %struct.pstate* %3, i32 0, i32 5
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.pstate, %struct.pstate* %3, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32* @fopen(i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %1
  %32 = getelementptr inbounds %struct.pstate, %struct.pstate* %3, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i32, i8*, ...) @ErrorMsg(i32 %33, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.lemon*, %struct.lemon** %2, align 8
  %36 = getelementptr inbounds %struct.lemon, %struct.lemon* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  br label %520

39:                                               ; preds = %1
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @fseek(i32* %40, i32 0, i32 2)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @ftell(i32* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @rewind(i32* %44)
  %46 = load i32, i32* %6, align 4
  %47 = add i32 %46, 1
  %48 = call i64 @malloc(i32 %47)
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = icmp ugt i32 %50, 100000000
  br i1 %51, label %55, label %52

52:                                               ; preds = %39
  %53 = load i8*, i8** %5, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %52, %39
  %56 = getelementptr inbounds %struct.pstate, %struct.pstate* %3, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i32, i8*, ...) @ErrorMsg(i32 %57, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load %struct.lemon*, %struct.lemon** %2, align 8
  %62 = getelementptr inbounds %struct.lemon, %struct.lemon* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %62, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @fclose(i32* %65)
  br label %520

67:                                               ; preds = %52
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @fread(i8* %68, i32 1, i32 %69, i32* %70)
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.pstate, %struct.pstate* %3, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 (i32, i32, i8*, ...) @ErrorMsg(i32 %76, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 @free(i8* %79)
  %81 = load %struct.lemon*, %struct.lemon** %2, align 8
  %82 = getelementptr inbounds %struct.lemon, %struct.lemon* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %82, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @fclose(i32* %85)
  br label %520

87:                                               ; preds = %67
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @fclose(i32* %88)
  %90 = load i8*, i8** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  store i8 0, i8* %93, align 1
  %94 = load i8*, i8** %5, align 8
  %95 = call i32 @preprocess_input(i8* %94)
  store i32 1, i32* %7, align 4
  %96 = load i8*, i8** %5, align 8
  store i8* %96, i8** %9, align 8
  br label %97

97:                                               ; preds = %499, %186, %140, %112, %87
  %98 = load i8*, i8** %9, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  store i32 %100, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %509

102:                                              ; preds = %97
  %103 = load i32, i32* %8, align 4
  %104 = icmp eq i32 %103, 10
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i32, i32* %8, align 4
  %110 = call i64 @ISSPACE(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i8*, i8** %9, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %9, align 8
  br label %97

115:                                              ; preds = %108
  %116 = load i32, i32* %8, align 4
  %117 = icmp eq i32 %116, 47
  br i1 %117, label %118, label %141

118:                                              ; preds = %115
  %119 = load i8*, i8** %9, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 47
  br i1 %123, label %124, label %141

124:                                              ; preds = %118
  %125 = load i8*, i8** %9, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 2
  store i8* %126, i8** %9, align 8
  br label %127

127:                                              ; preds = %137, %124
  %128 = load i8*, i8** %9, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  store i32 %130, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 10
  br label %135

135:                                              ; preds = %132, %127
  %136 = phi i1 [ false, %127 ], [ %134, %132 ]
  br i1 %136, label %137, label %140

137:                                              ; preds = %135
  %138 = load i8*, i8** %9, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %9, align 8
  br label %127

140:                                              ; preds = %135
  br label %97

141:                                              ; preds = %118, %115
  %142 = load i32, i32* %8, align 4
  %143 = icmp eq i32 %142, 47
  br i1 %143, label %144, label %187

144:                                              ; preds = %141
  %145 = load i8*, i8** %9, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 42
  br i1 %149, label %150, label %187

150:                                              ; preds = %144
  %151 = load i8*, i8** %9, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 2
  store i8* %152, i8** %9, align 8
  br label %153

153:                                              ; preds = %177, %150
  %154 = load i8*, i8** %9, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  store i32 %156, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %153
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 47
  br i1 %160, label %167, label %161

161:                                              ; preds = %158
  %162 = load i8*, i8** %9, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 -1
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 42
  br label %167

167:                                              ; preds = %161, %158
  %168 = phi i1 [ true, %158 ], [ %166, %161 ]
  br label %169

169:                                              ; preds = %167, %153
  %170 = phi i1 [ false, %153 ], [ %168, %167 ]
  br i1 %170, label %171, label %180

171:                                              ; preds = %169
  %172 = load i32, i32* %8, align 4
  %173 = icmp eq i32 %172, 10
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i32, i32* %7, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %7, align 4
  br label %177

177:                                              ; preds = %174, %171
  %178 = load i8*, i8** %9, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %9, align 8
  br label %153

180:                                              ; preds = %169
  %181 = load i32, i32* %8, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i8*, i8** %9, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %185, i8** %9, align 8
  br label %186

186:                                              ; preds = %183, %180
  br label %97

187:                                              ; preds = %144, %141
  %188 = load i8*, i8** %9, align 8
  %189 = getelementptr inbounds %struct.pstate, %struct.pstate* %3, i32 0, i32 0
  store i8* %188, i8** %189, align 8
  %190 = load i32, i32* %7, align 4
  %191 = getelementptr inbounds %struct.pstate, %struct.pstate* %3, i32 0, i32 1
  store i32 %190, i32* %191, align 8
  %192 = load i32, i32* %8, align 4
  %193 = icmp eq i32 %192, 34
  br i1 %193, label %194, label %232

194:                                              ; preds = %187
  %195 = load i8*, i8** %9, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %196, i8** %9, align 8
  br label %197

197:                                              ; preds = %213, %194
  %198 = load i8*, i8** %9, align 8
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  store i32 %200, i32* %8, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %197
  %203 = load i32, i32* %8, align 4
  %204 = icmp ne i32 %203, 34
  br label %205

205:                                              ; preds = %202, %197
  %206 = phi i1 [ false, %197 ], [ %204, %202 ]
  br i1 %206, label %207, label %216

207:                                              ; preds = %205
  %208 = load i32, i32* %8, align 4
  %209 = icmp eq i32 %208, 10
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load i32, i32* %7, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %7, align 4
  br label %213

213:                                              ; preds = %210, %207
  %214 = load i8*, i8** %9, align 8
  %215 = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %215, i8** %9, align 8
  br label %197

216:                                              ; preds = %205
  %217 = load i32, i32* %8, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %228

219:                                              ; preds = %216
  %220 = getelementptr inbounds %struct.pstate, %struct.pstate* %3, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %11, align 4
  %223 = call i32 (i32, i32, i8*, ...) @ErrorMsg(i32 %221, i32 %222, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i64 0, i64 0))
  %224 = getelementptr inbounds %struct.pstate, %struct.pstate* %3, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = add nsw i64 %225, 1
  store i64 %226, i64* %224, align 8
  %227 = load i8*, i8** %9, align 8
  store i8* %227, i8** %10, align 8
  br label %231

228:                                              ; preds = %216
  %229 = load i8*, i8** %9, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 1
  store i8* %230, i8** %10, align 8
  br label %231

231:                                              ; preds = %228, %219
  br label %499

232:                                              ; preds = %187
  %233 = load i32, i32* %8, align 4
  %234 = icmp eq i32 %233, 123
  br i1 %234, label %235, label %410

235:                                              ; preds = %232
  %236 = load i8*, i8** %9, align 8
  %237 = getelementptr inbounds i8, i8* %236, i32 1
  store i8* %237, i8** %9, align 8
  store i32 1, i32* %12, align 4
  br label %238

238:                                              ; preds = %390, %235
  %239 = load i8*, i8** %9, align 8
  %240 = load i8, i8* %239, align 1
  %241 = sext i8 %240 to i32
  store i32 %241, i32* %8, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %251

243:                                              ; preds = %238
  %244 = load i32, i32* %12, align 4
  %245 = icmp sgt i32 %244, 1
  br i1 %245, label %249, label %246

246:                                              ; preds = %243
  %247 = load i32, i32* %8, align 4
  %248 = icmp ne i32 %247, 125
  br label %249

249:                                              ; preds = %246, %243
  %250 = phi i1 [ true, %243 ], [ %248, %246 ]
  br label %251

251:                                              ; preds = %249, %238
  %252 = phi i1 [ false, %238 ], [ %250, %249 ]
  br i1 %252, label %253, label %393

253:                                              ; preds = %251
  %254 = load i32, i32* %8, align 4
  %255 = icmp eq i32 %254, 10
  br i1 %255, label %256, label %259

256:                                              ; preds = %253
  %257 = load i32, i32* %7, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %7, align 4
  br label %389

259:                                              ; preds = %253
  %260 = load i32, i32* %8, align 4
  %261 = icmp eq i32 %260, 123
  br i1 %261, label %262, label %265

262:                                              ; preds = %259
  %263 = load i32, i32* %12, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %12, align 4
  br label %388

265:                                              ; preds = %259
  %266 = load i32, i32* %8, align 4
  %267 = icmp eq i32 %266, 125
  br i1 %267, label %268, label %271

268:                                              ; preds = %265
  %269 = load i32, i32* %12, align 4
  %270 = add nsw i32 %269, -1
  store i32 %270, i32* %12, align 4
  br label %387

271:                                              ; preds = %265
  %272 = load i32, i32* %8, align 4
  %273 = icmp eq i32 %272, 47
  br i1 %273, label %274, label %309

274:                                              ; preds = %271
  %275 = load i8*, i8** %9, align 8
  %276 = getelementptr inbounds i8, i8* %275, i64 1
  %277 = load i8, i8* %276, align 1
  %278 = sext i8 %277 to i32
  %279 = icmp eq i32 %278, 42
  br i1 %279, label %280, label %309

280:                                              ; preds = %274
  %281 = load i8*, i8** %9, align 8
  %282 = getelementptr inbounds i8, i8* %281, i64 2
  store i8* %282, i8** %9, align 8
  store i32 0, i32* %13, align 4
  br label %283

283:                                              ; preds = %304, %280
  %284 = load i8*, i8** %9, align 8
  %285 = load i8, i8* %284, align 1
  %286 = sext i8 %285 to i32
  store i32 %286, i32* %8, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %296

288:                                              ; preds = %283
  %289 = load i32, i32* %8, align 4
  %290 = icmp ne i32 %289, 47
  br i1 %290, label %294, label %291

291:                                              ; preds = %288
  %292 = load i32, i32* %13, align 4
  %293 = icmp ne i32 %292, 42
  br label %294

294:                                              ; preds = %291, %288
  %295 = phi i1 [ true, %288 ], [ %293, %291 ]
  br label %296

296:                                              ; preds = %294, %283
  %297 = phi i1 [ false, %283 ], [ %295, %294 ]
  br i1 %297, label %298, label %308

298:                                              ; preds = %296
  %299 = load i32, i32* %8, align 4
  %300 = icmp eq i32 %299, 10
  br i1 %300, label %301, label %304

301:                                              ; preds = %298
  %302 = load i32, i32* %7, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %7, align 4
  br label %304

304:                                              ; preds = %301, %298
  %305 = load i32, i32* %8, align 4
  store i32 %305, i32* %13, align 4
  %306 = load i8*, i8** %9, align 8
  %307 = getelementptr inbounds i8, i8* %306, i32 1
  store i8* %307, i8** %9, align 8
  br label %283

308:                                              ; preds = %296
  br label %386

309:                                              ; preds = %274, %271
  %310 = load i32, i32* %8, align 4
  %311 = icmp eq i32 %310, 47
  br i1 %311, label %312, label %341

312:                                              ; preds = %309
  %313 = load i8*, i8** %9, align 8
  %314 = getelementptr inbounds i8, i8* %313, i64 1
  %315 = load i8, i8* %314, align 1
  %316 = sext i8 %315 to i32
  %317 = icmp eq i32 %316, 47
  br i1 %317, label %318, label %341

318:                                              ; preds = %312
  %319 = load i8*, i8** %9, align 8
  %320 = getelementptr inbounds i8, i8* %319, i64 2
  store i8* %320, i8** %9, align 8
  br label %321

321:                                              ; preds = %331, %318
  %322 = load i8*, i8** %9, align 8
  %323 = load i8, i8* %322, align 1
  %324 = sext i8 %323 to i32
  store i32 %324, i32* %8, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %329

326:                                              ; preds = %321
  %327 = load i32, i32* %8, align 4
  %328 = icmp ne i32 %327, 10
  br label %329

329:                                              ; preds = %326, %321
  %330 = phi i1 [ false, %321 ], [ %328, %326 ]
  br i1 %330, label %331, label %334

331:                                              ; preds = %329
  %332 = load i8*, i8** %9, align 8
  %333 = getelementptr inbounds i8, i8* %332, i32 1
  store i8* %333, i8** %9, align 8
  br label %321

334:                                              ; preds = %329
  %335 = load i32, i32* %8, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %340

337:                                              ; preds = %334
  %338 = load i32, i32* %7, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %7, align 4
  br label %340

340:                                              ; preds = %337, %334
  br label %385

341:                                              ; preds = %312, %309
  %342 = load i32, i32* %8, align 4
  %343 = icmp eq i32 %342, 39
  br i1 %343, label %347, label %344

344:                                              ; preds = %341
  %345 = load i32, i32* %8, align 4
  %346 = icmp eq i32 %345, 34
  br i1 %346, label %347, label %384

347:                                              ; preds = %344, %341
  %348 = load i32, i32* %8, align 4
  store i32 %348, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %349 = load i8*, i8** %9, align 8
  %350 = getelementptr inbounds i8, i8* %349, i32 1
  store i8* %350, i8** %9, align 8
  br label %351

351:                                              ; preds = %380, %347
  %352 = load i8*, i8** %9, align 8
  %353 = load i8, i8* %352, align 1
  %354 = sext i8 %353 to i32
  store i32 %354, i32* %8, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %365

356:                                              ; preds = %351
  %357 = load i32, i32* %8, align 4
  %358 = load i32, i32* %14, align 4
  %359 = icmp ne i32 %357, %358
  br i1 %359, label %363, label %360

360:                                              ; preds = %356
  %361 = load i32, i32* %15, align 4
  %362 = icmp eq i32 %361, 92
  br label %363

363:                                              ; preds = %360, %356
  %364 = phi i1 [ true, %356 ], [ %362, %360 ]
  br label %365

365:                                              ; preds = %363, %351
  %366 = phi i1 [ false, %351 ], [ %364, %363 ]
  br i1 %366, label %367, label %383

367:                                              ; preds = %365
  %368 = load i32, i32* %8, align 4
  %369 = icmp eq i32 %368, 10
  br i1 %369, label %370, label %373

370:                                              ; preds = %367
  %371 = load i32, i32* %7, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %7, align 4
  br label %373

373:                                              ; preds = %370, %367
  %374 = load i32, i32* %15, align 4
  %375 = icmp eq i32 %374, 92
  br i1 %375, label %376, label %377

376:                                              ; preds = %373
  store i32 0, i32* %15, align 4
  br label %379

377:                                              ; preds = %373
  %378 = load i32, i32* %8, align 4
  store i32 %378, i32* %15, align 4
  br label %379

379:                                              ; preds = %377, %376
  br label %380

380:                                              ; preds = %379
  %381 = load i8*, i8** %9, align 8
  %382 = getelementptr inbounds i8, i8* %381, i32 1
  store i8* %382, i8** %9, align 8
  br label %351

383:                                              ; preds = %365
  br label %384

384:                                              ; preds = %383, %344
  br label %385

385:                                              ; preds = %384, %340
  br label %386

386:                                              ; preds = %385, %308
  br label %387

387:                                              ; preds = %386, %268
  br label %388

388:                                              ; preds = %387, %262
  br label %389

389:                                              ; preds = %388, %256
  br label %390

390:                                              ; preds = %389
  %391 = load i8*, i8** %9, align 8
  %392 = getelementptr inbounds i8, i8* %391, i32 1
  store i8* %392, i8** %9, align 8
  br label %238

393:                                              ; preds = %251
  %394 = load i32, i32* %8, align 4
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %406

396:                                              ; preds = %393
  %397 = getelementptr inbounds %struct.pstate, %struct.pstate* %3, i32 0, i32 4
  %398 = load i32, i32* %397, align 4
  %399 = getelementptr inbounds %struct.pstate, %struct.pstate* %3, i32 0, i32 1
  %400 = load i32, i32* %399, align 8
  %401 = call i32 (i32, i32, i8*, ...) @ErrorMsg(i32 %398, i32 %400, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i64 0, i64 0))
  %402 = getelementptr inbounds %struct.pstate, %struct.pstate* %3, i32 0, i32 2
  %403 = load i64, i64* %402, align 8
  %404 = add nsw i64 %403, 1
  store i64 %404, i64* %402, align 8
  %405 = load i8*, i8** %9, align 8
  store i8* %405, i8** %10, align 8
  br label %409

406:                                              ; preds = %393
  %407 = load i8*, i8** %9, align 8
  %408 = getelementptr inbounds i8, i8* %407, i64 1
  store i8* %408, i8** %10, align 8
  br label %409

409:                                              ; preds = %406, %396
  br label %498

410:                                              ; preds = %232
  %411 = load i32, i32* %8, align 4
  %412 = call i64 @ISALNUM(i32 %411)
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %414, label %436

414:                                              ; preds = %410
  br label %415

415:                                              ; preds = %431, %414
  %416 = load i8*, i8** %9, align 8
  %417 = load i8, i8* %416, align 1
  %418 = sext i8 %417 to i32
  store i32 %418, i32* %8, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %429

420:                                              ; preds = %415
  %421 = load i32, i32* %8, align 4
  %422 = call i64 @ISALNUM(i32 %421)
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %427, label %424

424:                                              ; preds = %420
  %425 = load i32, i32* %8, align 4
  %426 = icmp eq i32 %425, 95
  br label %427

427:                                              ; preds = %424, %420
  %428 = phi i1 [ true, %420 ], [ %426, %424 ]
  br label %429

429:                                              ; preds = %427, %415
  %430 = phi i1 [ false, %415 ], [ %428, %427 ]
  br i1 %430, label %431, label %434

431:                                              ; preds = %429
  %432 = load i8*, i8** %9, align 8
  %433 = getelementptr inbounds i8, i8* %432, i32 1
  store i8* %433, i8** %9, align 8
  br label %415

434:                                              ; preds = %429
  %435 = load i8*, i8** %9, align 8
  store i8* %435, i8** %10, align 8
  br label %497

436:                                              ; preds = %410
  %437 = load i32, i32* %8, align 4
  %438 = icmp eq i32 %437, 58
  br i1 %438, label %439, label %455

439:                                              ; preds = %436
  %440 = load i8*, i8** %9, align 8
  %441 = getelementptr inbounds i8, i8* %440, i64 1
  %442 = load i8, i8* %441, align 1
  %443 = sext i8 %442 to i32
  %444 = icmp eq i32 %443, 58
  br i1 %444, label %445, label %455

445:                                              ; preds = %439
  %446 = load i8*, i8** %9, align 8
  %447 = getelementptr inbounds i8, i8* %446, i64 2
  %448 = load i8, i8* %447, align 1
  %449 = sext i8 %448 to i32
  %450 = icmp eq i32 %449, 61
  br i1 %450, label %451, label %455

451:                                              ; preds = %445
  %452 = load i8*, i8** %9, align 8
  %453 = getelementptr inbounds i8, i8* %452, i64 3
  store i8* %453, i8** %9, align 8
  %454 = load i8*, i8** %9, align 8
  store i8* %454, i8** %10, align 8
  br label %496

455:                                              ; preds = %445, %439, %436
  %456 = load i32, i32* %8, align 4
  %457 = icmp eq i32 %456, 47
  br i1 %457, label %461, label %458

458:                                              ; preds = %455
  %459 = load i32, i32* %8, align 4
  %460 = icmp eq i32 %459, 124
  br i1 %460, label %461, label %491

461:                                              ; preds = %458, %455
  %462 = load i8*, i8** %9, align 8
  %463 = getelementptr inbounds i8, i8* %462, i64 1
  %464 = load i8, i8* %463, align 1
  %465 = call i64 @ISALPHA(i8 signext %464)
  %466 = icmp ne i64 %465, 0
  br i1 %466, label %467, label %491

467:                                              ; preds = %461
  %468 = load i8*, i8** %9, align 8
  %469 = getelementptr inbounds i8, i8* %468, i64 2
  store i8* %469, i8** %9, align 8
  br label %470

470:                                              ; preds = %486, %467
  %471 = load i8*, i8** %9, align 8
  %472 = load i8, i8* %471, align 1
  %473 = sext i8 %472 to i32
  store i32 %473, i32* %8, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %484

475:                                              ; preds = %470
  %476 = load i32, i32* %8, align 4
  %477 = call i64 @ISALNUM(i32 %476)
  %478 = icmp ne i64 %477, 0
  br i1 %478, label %482, label %479

479:                                              ; preds = %475
  %480 = load i32, i32* %8, align 4
  %481 = icmp eq i32 %480, 95
  br label %482

482:                                              ; preds = %479, %475
  %483 = phi i1 [ true, %475 ], [ %481, %479 ]
  br label %484

484:                                              ; preds = %482, %470
  %485 = phi i1 [ false, %470 ], [ %483, %482 ]
  br i1 %485, label %486, label %489

486:                                              ; preds = %484
  %487 = load i8*, i8** %9, align 8
  %488 = getelementptr inbounds i8, i8* %487, i32 1
  store i8* %488, i8** %9, align 8
  br label %470

489:                                              ; preds = %484
  %490 = load i8*, i8** %9, align 8
  store i8* %490, i8** %10, align 8
  br label %495

491:                                              ; preds = %461, %458
  %492 = load i8*, i8** %9, align 8
  %493 = getelementptr inbounds i8, i8* %492, i32 1
  store i8* %493, i8** %9, align 8
  %494 = load i8*, i8** %9, align 8
  store i8* %494, i8** %10, align 8
  br label %495

495:                                              ; preds = %491, %489
  br label %496

496:                                              ; preds = %495, %451
  br label %497

497:                                              ; preds = %496, %434
  br label %498

498:                                              ; preds = %497, %409
  br label %499

499:                                              ; preds = %498, %231
  %500 = load i8*, i8** %9, align 8
  %501 = load i8, i8* %500, align 1
  %502 = sext i8 %501 to i32
  store i32 %502, i32* %8, align 4
  %503 = load i8*, i8** %9, align 8
  store i8 0, i8* %503, align 1
  %504 = call i32 @parseonetoken(%struct.pstate* %3)
  %505 = load i32, i32* %8, align 4
  %506 = trunc i32 %505 to i8
  %507 = load i8*, i8** %9, align 8
  store i8 %506, i8* %507, align 1
  %508 = load i8*, i8** %10, align 8
  store i8* %508, i8** %9, align 8
  br label %97

509:                                              ; preds = %97
  %510 = load i8*, i8** %5, align 8
  %511 = call i32 @free(i8* %510)
  %512 = getelementptr inbounds %struct.pstate, %struct.pstate* %3, i32 0, i32 3
  %513 = load i32, i32* %512, align 8
  %514 = load %struct.lemon*, %struct.lemon** %2, align 8
  %515 = getelementptr inbounds %struct.lemon, %struct.lemon* %514, i32 0, i32 1
  store i32 %513, i32* %515, align 8
  %516 = getelementptr inbounds %struct.pstate, %struct.pstate* %3, i32 0, i32 2
  %517 = load i64, i64* %516, align 8
  %518 = load %struct.lemon*, %struct.lemon** %2, align 8
  %519 = getelementptr inbounds %struct.lemon, %struct.lemon* %518, i32 0, i32 0
  store i64 %517, i64* %519, align 8
  br label %520

520:                                              ; preds = %509, %74, %55, %31
  ret void
}

declare dso_local i32 @memset(%struct.pstate*, i8 signext, i32) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @ErrorMsg(i32, i32, i8*, ...) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @preprocess_input(i8*) #1

declare dso_local i64 @ISSPACE(i32) #1

declare dso_local i64 @ISALNUM(i32) #1

declare dso_local i64 @ISALPHA(i8 signext) #1

declare dso_local i32 @parseonetoken(%struct.pstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
