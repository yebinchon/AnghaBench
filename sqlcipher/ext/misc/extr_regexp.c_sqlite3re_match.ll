; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_regexp.c_sqlite3re_match.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_regexp.c_sqlite3re_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8*, i32, i32 (%struct.TYPE_8__*)*, i32*, i32* }
%struct.TYPE_8__ = type { i8*, i32, i32 }
%struct.TYPE_7__ = type { i32*, i32 }

@RE_EOF = common dso_local global i32 0, align 4
@RE_OP_CC_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32)* @re_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @re_match(%struct.TYPE_9__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x %struct.TYPE_7__], align 16
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca [100 x i32], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_8__, align 8
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %24 = load i32, i32* @RE_EOF, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  store i32 0, i32* %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %7, align 4
  br label %37

33:                                               ; preds = %3
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @strlen(i8* %34)
  %36 = trunc i64 %35 to i32
  br label %37

37:                                               ; preds = %33, %31
  %38 = phi i32 [ %32, %31 ], [ %36, %33 ]
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %105

44:                                               ; preds = %37
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  store i8 %49, i8* %19, align 1
  br label %50

50:                                               ; preds = %89, %44
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %52, %55
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp sle i32 %56, %58
  br i1 %59, label %60, label %87

60:                                               ; preds = %50
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* %19, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp ne i32 %67, %69
  br i1 %70, label %85, label %71

71:                                               ; preds = %60
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @strncmp(i8* %76, i8* %79, i32 %82)
  %84 = icmp ne i64 %83, 0
  br label %85

85:                                               ; preds = %71, %60
  %86 = phi i1 [ true, %60 ], [ %84, %71 ]
  br label %87

87:                                               ; preds = %85, %50
  %88 = phi i1 [ false, %50 ], [ %86, %85 ]
  br i1 %88, label %89, label %93

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  br label %50

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %95, %98
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = icmp sgt i32 %99, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  store i32 0, i32* %4, align 4
  br label %460

104:                                              ; preds = %93
  br label %105

105:                                              ; preds = %104, %37
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = icmp ule i64 %109, 50
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  store i32* null, i32** %12, align 8
  %112 = getelementptr inbounds [100 x i32], [100 x i32]* %11, i64 0, i64 0
  %113 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %8, i64 0, i64 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  store i32* %112, i32** %114, align 16
  br label %130

115:                                              ; preds = %105
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = mul i64 8, %119
  %121 = trunc i64 %120 to i32
  %122 = call i32* @sqlite3_malloc64(i32 %121)
  store i32* %122, i32** %12, align 8
  %123 = load i32*, i32** %12, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %115
  store i32 -1, i32* %4, align 4
  br label %460

126:                                              ; preds = %115
  %127 = load i32*, i32** %12, align 8
  %128 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %8, i64 0, i64 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  store i32* %127, i32** %129, align 16
  br label %130

130:                                              ; preds = %126, %111
  %131 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %8, i64 0, i64 0
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 16
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %133, i64 %137
  %139 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %8, i64 0, i64 1
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  store i32* %138, i32** %140, align 16
  %141 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %8, i64 0, i64 1
  store %struct.TYPE_7__* %141, %struct.TYPE_7__** %10, align 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  store i32 0, i32* %143, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %145 = call i32 @re_add_state(%struct.TYPE_7__* %144, i32 0)
  br label %146

146:                                              ; preds = %427, %130
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* @RE_EOF, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = icmp ugt i32 %153, 0
  br label %155

155:                                              ; preds = %150, %146
  %156 = phi i1 [ false, %146 ], [ %154, %150 ]
  br i1 %156, label %157, label %428

157:                                              ; preds = %155
  %158 = load i32, i32* %15, align 4
  store i32 %158, i32* %16, align 4
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 3
  %161 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %160, align 8
  %162 = call i32 %161(%struct.TYPE_8__* %18)
  store i32 %162, i32* %15, align 4
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %163, %struct.TYPE_7__** %9, align 8
  %164 = load i32, i32* %14, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %8, i64 0, i64 %165
  store %struct.TYPE_7__* %166, %struct.TYPE_7__** %10, align 8
  %167 = load i32, i32* %14, align 4
  %168 = sub i32 1, %167
  store i32 %168, i32* %14, align 4
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 1
  store i32 0, i32* %170, align 8
  store i32 0, i32* %13, align 4
  br label %171

171:                                              ; preds = %424, %157
  %172 = load i32, i32* %13, align 4
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = icmp ult i32 %172, %175
  br i1 %176, label %177, label %427

177:                                              ; preds = %171
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %13, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %20, align 4
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 4
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %20, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  switch i32 %191, label %423 [
    i32 133, label %192
    i32 141, label %208
    i32 128, label %213
    i32 130, label %223
    i32 136, label %233
    i32 132, label %243
    i32 129, label %253
    i32 131, label %263
    i32 139, label %273
    i32 140, label %285
    i32 135, label %293
    i32 134, label %309
    i32 142, label %321
    i32 137, label %322
    i32 138, label %322
  ]

192:                                              ; preds = %177
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 5
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %20, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %15, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %207

202:                                              ; preds = %192
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %204 = load i32, i32* %20, align 4
  %205 = add nsw i32 %204, 1
  %206 = call i32 @re_add_state(%struct.TYPE_7__* %203, i32 %205)
  br label %207

207:                                              ; preds = %202, %192
  br label %423

208:                                              ; preds = %177
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %210 = load i32, i32* %20, align 4
  %211 = add nsw i32 %210, 1
  %212 = call i32 @re_add_state(%struct.TYPE_7__* %209, i32 %211)
  br label %423

213:                                              ; preds = %177
  %214 = load i32, i32* %15, align 4
  %215 = call i32 @re_word_char(i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %213
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %219 = load i32, i32* %20, align 4
  %220 = add nsw i32 %219, 1
  %221 = call i32 @re_add_state(%struct.TYPE_7__* %218, i32 %220)
  br label %222

222:                                              ; preds = %217, %213
  br label %423

223:                                              ; preds = %177
  %224 = load i32, i32* %15, align 4
  %225 = call i32 @re_word_char(i32 %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %232, label %227

227:                                              ; preds = %223
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %229 = load i32, i32* %20, align 4
  %230 = add nsw i32 %229, 1
  %231 = call i32 @re_add_state(%struct.TYPE_7__* %228, i32 %230)
  br label %232

232:                                              ; preds = %227, %223
  br label %423

233:                                              ; preds = %177
  %234 = load i32, i32* %15, align 4
  %235 = call i32 @re_digit_char(i32 %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %233
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %239 = load i32, i32* %20, align 4
  %240 = add nsw i32 %239, 1
  %241 = call i32 @re_add_state(%struct.TYPE_7__* %238, i32 %240)
  br label %242

242:                                              ; preds = %237, %233
  br label %423

243:                                              ; preds = %177
  %244 = load i32, i32* %15, align 4
  %245 = call i32 @re_digit_char(i32 %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %252, label %247

247:                                              ; preds = %243
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %249 = load i32, i32* %20, align 4
  %250 = add nsw i32 %249, 1
  %251 = call i32 @re_add_state(%struct.TYPE_7__* %248, i32 %250)
  br label %252

252:                                              ; preds = %247, %243
  br label %423

253:                                              ; preds = %177
  %254 = load i32, i32* %15, align 4
  %255 = call i32 @re_space_char(i32 %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %253
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %259 = load i32, i32* %20, align 4
  %260 = add nsw i32 %259, 1
  %261 = call i32 @re_add_state(%struct.TYPE_7__* %258, i32 %260)
  br label %262

262:                                              ; preds = %257, %253
  br label %423

263:                                              ; preds = %177
  %264 = load i32, i32* %15, align 4
  %265 = call i32 @re_space_char(i32 %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %272, label %267

267:                                              ; preds = %263
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %269 = load i32, i32* %20, align 4
  %270 = add nsw i32 %269, 1
  %271 = call i32 @re_add_state(%struct.TYPE_7__* %268, i32 %270)
  br label %272

272:                                              ; preds = %267, %263
  br label %423

273:                                              ; preds = %177
  %274 = load i32, i32* %15, align 4
  %275 = call i32 @re_word_char(i32 %274)
  %276 = load i32, i32* %16, align 4
  %277 = call i32 @re_word_char(i32 %276)
  %278 = icmp ne i32 %275, %277
  br i1 %278, label %279, label %284

279:                                              ; preds = %273
  %280 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %281 = load i32, i32* %20, align 4
  %282 = add nsw i32 %281, 1
  %283 = call i32 @re_add_state(%struct.TYPE_7__* %280, i32 %282)
  br label %284

284:                                              ; preds = %279, %273
  br label %423

285:                                              ; preds = %177
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %287 = load i32, i32* %20, align 4
  %288 = call i32 @re_add_state(%struct.TYPE_7__* %286, i32 %287)
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %290 = load i32, i32* %20, align 4
  %291 = add nsw i32 %290, 1
  %292 = call i32 @re_add_state(%struct.TYPE_7__* %289, i32 %291)
  br label %423

293:                                              ; preds = %177
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %295 = load i32, i32* %20, align 4
  %296 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 5
  %298 = load i32*, i32** %297, align 8
  %299 = load i32, i32* %20, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = add nsw i32 %295, %302
  %304 = call i32 @re_add_state(%struct.TYPE_7__* %294, i32 %303)
  %305 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %306 = load i32, i32* %20, align 4
  %307 = add nsw i32 %306, 1
  %308 = call i32 @re_add_state(%struct.TYPE_7__* %305, i32 %307)
  br label %423

309:                                              ; preds = %177
  %310 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %311 = load i32, i32* %20, align 4
  %312 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 5
  %314 = load i32*, i32** %313, align 8
  %315 = load i32, i32* %20, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = add nsw i32 %311, %318
  %320 = call i32 @re_add_state(%struct.TYPE_7__* %310, i32 %319)
  br label %423

321:                                              ; preds = %177
  store i32 1, i32* %17, align 4
  br label %456

322:                                              ; preds = %177, %177
  store i32 1, i32* %21, align 4
  %323 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %323, i32 0, i32 5
  %325 = load i32*, i32** %324, align 8
  %326 = load i32, i32* %20, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  %329 = load i32, i32* %328, align 4
  store i32 %329, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 1, i32* %21, align 4
  br label %330

330:                                              ; preds = %396, %322
  %331 = load i32, i32* %21, align 4
  %332 = icmp sgt i32 %331, 0
  br i1 %332, label %333, label %337

333:                                              ; preds = %330
  %334 = load i32, i32* %21, align 4
  %335 = load i32, i32* %22, align 4
  %336 = icmp slt i32 %334, %335
  br label %337

337:                                              ; preds = %333, %330
  %338 = phi i1 [ false, %330 ], [ %336, %333 ]
  br i1 %338, label %339, label %399

339:                                              ; preds = %337
  %340 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %340, i32 0, i32 4
  %342 = load i32*, i32** %341, align 8
  %343 = load i32, i32* %20, align 4
  %344 = load i32, i32* %21, align 4
  %345 = add nsw i32 %343, %344
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %342, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @RE_OP_CC_VALUE, align 4
  %350 = icmp eq i32 %348, %349
  br i1 %350, label %351, label %365

351:                                              ; preds = %339
  %352 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %352, i32 0, i32 5
  %354 = load i32*, i32** %353, align 8
  %355 = load i32, i32* %20, align 4
  %356 = load i32, i32* %21, align 4
  %357 = add nsw i32 %355, %356
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %354, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* %15, align 4
  %362 = icmp eq i32 %360, %361
  br i1 %362, label %363, label %364

363:                                              ; preds = %351
  store i32 1, i32* %23, align 4
  store i32 -1, i32* %21, align 4
  br label %364

364:                                              ; preds = %363, %351
  br label %395

365:                                              ; preds = %339
  %366 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %366, i32 0, i32 5
  %368 = load i32*, i32** %367, align 8
  %369 = load i32, i32* %20, align 4
  %370 = load i32, i32* %21, align 4
  %371 = add nsw i32 %369, %370
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %368, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = load i32, i32* %15, align 4
  %376 = icmp sle i32 %374, %375
  br i1 %376, label %377, label %391

377:                                              ; preds = %365
  %378 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %378, i32 0, i32 5
  %380 = load i32*, i32** %379, align 8
  %381 = load i32, i32* %20, align 4
  %382 = load i32, i32* %21, align 4
  %383 = add nsw i32 %381, %382
  %384 = add nsw i32 %383, 1
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, i32* %380, i64 %385
  %387 = load i32, i32* %386, align 4
  %388 = load i32, i32* %15, align 4
  %389 = icmp sge i32 %387, %388
  br i1 %389, label %390, label %391

390:                                              ; preds = %377
  store i32 1, i32* %23, align 4
  store i32 -1, i32* %21, align 4
  br label %394

391:                                              ; preds = %377, %365
  %392 = load i32, i32* %21, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %21, align 4
  br label %394

394:                                              ; preds = %391, %390
  br label %395

395:                                              ; preds = %394, %364
  br label %396

396:                                              ; preds = %395
  %397 = load i32, i32* %21, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %21, align 4
  br label %330

399:                                              ; preds = %337
  %400 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %401 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %400, i32 0, i32 4
  %402 = load i32*, i32** %401, align 8
  %403 = load i32, i32* %20, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %402, i64 %404
  %406 = load i32, i32* %405, align 4
  %407 = icmp eq i32 %406, 138
  br i1 %407, label %408, label %413

408:                                              ; preds = %399
  %409 = load i32, i32* %23, align 4
  %410 = icmp ne i32 %409, 0
  %411 = xor i1 %410, true
  %412 = zext i1 %411 to i32
  store i32 %412, i32* %23, align 4
  br label %413

413:                                              ; preds = %408, %399
  %414 = load i32, i32* %23, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %422

416:                                              ; preds = %413
  %417 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %418 = load i32, i32* %20, align 4
  %419 = load i32, i32* %22, align 4
  %420 = add nsw i32 %418, %419
  %421 = call i32 @re_add_state(%struct.TYPE_7__* %417, i32 %420)
  br label %422

422:                                              ; preds = %416, %413
  br label %423

423:                                              ; preds = %177, %422, %309, %293, %285, %284, %272, %262, %252, %242, %232, %222, %208, %207
  br label %424

424:                                              ; preds = %423
  %425 = load i32, i32* %13, align 4
  %426 = add i32 %425, 1
  store i32 %426, i32* %13, align 4
  br label %171

427:                                              ; preds = %171
  br label %146

428:                                              ; preds = %155
  store i32 0, i32* %13, align 4
  br label %429

429:                                              ; preds = %452, %428
  %430 = load i32, i32* %13, align 4
  %431 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %432 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 8
  %434 = icmp ult i32 %430, %433
  br i1 %434, label %435, label %455

435:                                              ; preds = %429
  %436 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %437 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %436, i32 0, i32 4
  %438 = load i32*, i32** %437, align 8
  %439 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %440 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %439, i32 0, i32 0
  %441 = load i32*, i32** %440, align 8
  %442 = load i32, i32* %13, align 4
  %443 = zext i32 %442 to i64
  %444 = getelementptr inbounds i32, i32* %441, i64 %443
  %445 = load i32, i32* %444, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds i32, i32* %438, i64 %446
  %448 = load i32, i32* %447, align 4
  %449 = icmp eq i32 %448, 142
  br i1 %449, label %450, label %451

450:                                              ; preds = %435
  store i32 1, i32* %17, align 4
  br label %455

451:                                              ; preds = %435
  br label %452

452:                                              ; preds = %451
  %453 = load i32, i32* %13, align 4
  %454 = add i32 %453, 1
  store i32 %454, i32* %13, align 4
  br label %429

455:                                              ; preds = %450, %429
  br label %456

456:                                              ; preds = %455, %321
  %457 = load i32*, i32** %12, align 8
  %458 = call i32 @sqlite3_free(i32* %457)
  %459 = load i32, i32* %17, align 4
  store i32 %459, i32* %4, align 4
  br label %460

460:                                              ; preds = %456, %125, %103
  %461 = load i32, i32* %4, align 4
  ret i32 %461
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32* @sqlite3_malloc64(i32) #1

declare dso_local i32 @re_add_state(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @re_word_char(i32) #1

declare dso_local i32 @re_digit_char(i32) #1

declare dso_local i32 @re_space_char(i32) #1

declare dso_local i32 @sqlite3_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
