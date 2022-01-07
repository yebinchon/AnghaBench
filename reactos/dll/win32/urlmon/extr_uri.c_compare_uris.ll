; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_compare_uris.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_compare_uris.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i64, i8*, i32, i64, i32, i64, i64, i32, i64, i32, i64, i32, i64, i64 }

@URL_SCHEME_UNKNOWN = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@URL_SCHEME_FILE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_6__*, i32*)* @compare_uris to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_uris(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @URL_SCHEME_UNKNOWN, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, -1
  br label %27

27:                                               ; preds = %22, %3
  %28 = phi i1 [ false, %3 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @FALSE, align 4
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load i32, i32* @S_OK, align 4
  store i32 %40, i32* %4, align 4
  br label %514

41:                                               ; preds = %27
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %99, label %44

44:                                               ; preds = %41
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %49, label %87

49:                                               ; preds = %44
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %87

54:                                               ; preds = %49
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %87

62:                                               ; preds = %54
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 4
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %65, i64 %69
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 4
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %73, i64 %77
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @StrCmpNW(i8* %70, i8* %78, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %62
  %85 = load i32, i32* @S_OK, align 4
  store i32 %85, i32* %4, align 4
  br label %514

86:                                               ; preds = %62
  br label %98

87:                                               ; preds = %54, %49, %44
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i32, i32* @S_OK, align 4
  store i32 %96, i32* %4, align 4
  br label %514

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97, %86
  br label %99

99:                                               ; preds = %98, %41
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = icmp sgt i32 %102, -1
  br i1 %103, label %104, label %142

104:                                              ; preds = %99
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = icmp sgt i32 %107, -1
  br i1 %108, label %109, label %142

109:                                              ; preds = %104
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 6
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 6
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %112, %115
  br i1 %116, label %117, label %142

117:                                              ; preds = %109
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 4
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %120, i64 %124
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 4
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %128, i64 %132
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = call i64 @StrCmpNW(i8* %125, i8* %133, i64 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %117
  %140 = load i32, i32* @S_OK, align 4
  store i32 %140, i32* %4, align 4
  br label %514

141:                                              ; preds = %117
  br label %153

142:                                              ; preds = %109, %104, %99
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 6
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 6
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %145, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %142
  %151 = load i32, i32* @S_OK, align 4
  store i32 %151, i32* %4, align 4
  br label %514

152:                                              ; preds = %142
  br label %153

153:                                              ; preds = %152, %141
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 8
  %157 = icmp sgt i32 %156, -1
  br i1 %157, label %158, label %225

158:                                              ; preds = %153
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 8
  %162 = icmp sgt i32 %161, -1
  br i1 %162, label %163, label %225

163:                                              ; preds = %158
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 8
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 8
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %166, %169
  br i1 %170, label %171, label %225

171:                                              ; preds = %163
  %172 = load i32, i32* %8, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %199

174:                                              ; preds = %171
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 4
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 7
  %180 = load i32, i32* %179, align 8
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %177, i64 %181
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 4
  %185 = load i8*, i8** %184, align 8
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 7
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %185, i64 %189
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 8
  %193 = load i64, i64* %192, align 8
  %194 = call i64 @StrCmpNIW(i8* %182, i8* %190, i64 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %174
  %197 = load i32, i32* @S_OK, align 4
  store i32 %197, i32* %4, align 4
  br label %514

198:                                              ; preds = %174
  br label %224

199:                                              ; preds = %171
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 4
  %202 = load i8*, i8** %201, align 8
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 7
  %205 = load i32, i32* %204, align 8
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %202, i64 %206
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 4
  %210 = load i8*, i8** %209, align 8
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 7
  %213 = load i32, i32* %212, align 8
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %210, i64 %214
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 8
  %218 = load i64, i64* %217, align 8
  %219 = call i64 @StrCmpNW(i8* %207, i8* %215, i64 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %199
  %222 = load i32, i32* @S_OK, align 4
  store i32 %222, i32* %4, align 4
  br label %514

223:                                              ; preds = %199
  br label %224

224:                                              ; preds = %223, %198
  br label %236

225:                                              ; preds = %163, %158, %153
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 8
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 8
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %228, %231
  br i1 %232, label %233, label %235

233:                                              ; preds = %225
  %234 = load i32, i32* @S_OK, align 4
  store i32 %234, i32* %4, align 4
  br label %514

235:                                              ; preds = %225
  br label %236

236:                                              ; preds = %235, %224
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 16
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %257

241:                                              ; preds = %236
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 16
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %257

246:                                              ; preds = %241
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 9
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 9
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %249, %252
  br i1 %253, label %254, label %256

254:                                              ; preds = %246
  %255 = load i32, i32* @S_OK, align 4
  store i32 %255, i32* %4, align 4
  br label %514

256:                                              ; preds = %246
  br label %270

257:                                              ; preds = %241, %236
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 16
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %267, label %262

262:                                              ; preds = %257
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 16
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %262, %257
  %268 = load i32, i32* @S_OK, align 4
  store i32 %268, i32* %4, align 4
  br label %514

269:                                              ; preds = %262
  br label %270

270:                                              ; preds = %269, %256
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @URL_SCHEME_FILE, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %276, label %289

276:                                              ; preds = %270
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %279 = call i32 @compare_file_paths(%struct.TYPE_6__* %277, %struct.TYPE_6__* %278, i32* %11)
  store i32 %279, i32* %10, align 4
  %280 = load i32, i32* %10, align 4
  %281 = call i64 @FAILED(i32 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %286, label %283

283:                                              ; preds = %276
  %284 = load i32, i32* %11, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %288, label %286

286:                                              ; preds = %283, %276
  %287 = load i32, i32* %10, align 4
  store i32 %287, i32* %4, align 4
  br label %514

288:                                              ; preds = %283
  br label %402

289:                                              ; preds = %270
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 10
  %292 = load i32, i32* %291, align 8
  %293 = icmp sgt i32 %292, -1
  br i1 %293, label %294, label %332

294:                                              ; preds = %289
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 10
  %297 = load i32, i32* %296, align 8
  %298 = icmp sgt i32 %297, -1
  br i1 %298, label %299, label %332

299:                                              ; preds = %294
  %300 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 11
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 11
  %305 = load i64, i64* %304, align 8
  %306 = icmp eq i64 %302, %305
  br i1 %306, label %307, label %332

307:                                              ; preds = %299
  %308 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 4
  %310 = load i8*, i8** %309, align 8
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 10
  %313 = load i32, i32* %312, align 8
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i8, i8* %310, i64 %314
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 4
  %318 = load i8*, i8** %317, align 8
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 10
  %321 = load i32, i32* %320, align 8
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i8, i8* %318, i64 %322
  %324 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i32 0, i32 11
  %326 = load i64, i64* %325, align 8
  %327 = call i64 @StrCmpNW(i8* %315, i8* %323, i64 %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %307
  %330 = load i32, i32* @S_OK, align 4
  store i32 %330, i32* %4, align 4
  br label %514

331:                                              ; preds = %307
  br label %401

332:                                              ; preds = %299, %294, %289
  %333 = load i32, i32* %9, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %360

335:                                              ; preds = %332
  %336 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 11
  %338 = load i64, i64* %337, align 8
  %339 = icmp eq i64 %338, -1
  br i1 %339, label %340, label %360

340:                                              ; preds = %335
  %341 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i32 0, i32 11
  %343 = load i64, i64* %342, align 8
  %344 = icmp eq i64 %343, 0
  br i1 %344, label %345, label %360

345:                                              ; preds = %340
  %346 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 4
  %348 = load i8*, i8** %347, align 8
  %349 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %349, i32 0, i32 10
  %351 = load i32, i32* %350, align 8
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i8, i8* %348, i64 %352
  %354 = load i8, i8* %353, align 1
  %355 = sext i8 %354 to i32
  %356 = icmp ne i32 %355, 47
  br i1 %356, label %357, label %359

357:                                              ; preds = %345
  %358 = load i32, i32* @S_OK, align 4
  store i32 %358, i32* %4, align 4
  br label %514

359:                                              ; preds = %345
  br label %400

360:                                              ; preds = %340, %335, %332
  %361 = load i32, i32* %9, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %388

363:                                              ; preds = %360
  %364 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 11
  %366 = load i64, i64* %365, align 8
  %367 = icmp eq i64 %366, 1
  br i1 %367, label %368, label %388

368:                                              ; preds = %363
  %369 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %370 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %369, i32 0, i32 11
  %371 = load i64, i64* %370, align 8
  %372 = icmp eq i64 %371, 0
  br i1 %372, label %373, label %388

373:                                              ; preds = %368
  %374 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 4
  %376 = load i8*, i8** %375, align 8
  %377 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %378 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %377, i32 0, i32 10
  %379 = load i32, i32* %378, align 8
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i8, i8* %376, i64 %380
  %382 = load i8, i8* %381, align 1
  %383 = sext i8 %382 to i32
  %384 = icmp ne i32 %383, 47
  br i1 %384, label %385, label %387

385:                                              ; preds = %373
  %386 = load i32, i32* @S_OK, align 4
  store i32 %386, i32* %4, align 4
  br label %514

387:                                              ; preds = %373
  br label %399

388:                                              ; preds = %368, %363, %360
  %389 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i32 0, i32 11
  %391 = load i64, i64* %390, align 8
  %392 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 11
  %394 = load i64, i64* %393, align 8
  %395 = icmp ne i64 %391, %394
  br i1 %395, label %396, label %398

396:                                              ; preds = %388
  %397 = load i32, i32* @S_OK, align 4
  store i32 %397, i32* %4, align 4
  br label %514

398:                                              ; preds = %388
  br label %399

399:                                              ; preds = %398, %387
  br label %400

400:                                              ; preds = %399, %359
  br label %401

401:                                              ; preds = %400, %331
  br label %402

402:                                              ; preds = %401, %288
  %403 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %404 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %403, i32 0, i32 12
  %405 = load i32, i32* %404, align 8
  %406 = icmp sgt i32 %405, -1
  br i1 %406, label %407, label %445

407:                                              ; preds = %402
  %408 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %409 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %408, i32 0, i32 12
  %410 = load i32, i32* %409, align 8
  %411 = icmp sgt i32 %410, -1
  br i1 %411, label %412, label %445

412:                                              ; preds = %407
  %413 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %414 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %413, i32 0, i32 13
  %415 = load i64, i64* %414, align 8
  %416 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %417 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %416, i32 0, i32 13
  %418 = load i64, i64* %417, align 8
  %419 = icmp eq i64 %415, %418
  br i1 %419, label %420, label %445

420:                                              ; preds = %412
  %421 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %422 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %421, i32 0, i32 4
  %423 = load i8*, i8** %422, align 8
  %424 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %425 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %424, i32 0, i32 12
  %426 = load i32, i32* %425, align 8
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i8, i8* %423, i64 %427
  %429 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %430 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %429, i32 0, i32 4
  %431 = load i8*, i8** %430, align 8
  %432 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %433 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %432, i32 0, i32 12
  %434 = load i32, i32* %433, align 8
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i8, i8* %431, i64 %435
  %437 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %437, i32 0, i32 13
  %439 = load i64, i64* %438, align 8
  %440 = call i64 @StrCmpNW(i8* %428, i8* %436, i64 %439)
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %444

442:                                              ; preds = %420
  %443 = load i32, i32* @S_OK, align 4
  store i32 %443, i32* %4, align 4
  br label %514

444:                                              ; preds = %420
  br label %456

445:                                              ; preds = %412, %407, %402
  %446 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %447 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %446, i32 0, i32 13
  %448 = load i64, i64* %447, align 8
  %449 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %450 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %449, i32 0, i32 13
  %451 = load i64, i64* %450, align 8
  %452 = icmp ne i64 %448, %451
  br i1 %452, label %453, label %455

453:                                              ; preds = %445
  %454 = load i32, i32* @S_OK, align 4
  store i32 %454, i32* %4, align 4
  br label %514

455:                                              ; preds = %445
  br label %456

456:                                              ; preds = %455, %444
  %457 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %458 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %457, i32 0, i32 14
  %459 = load i32, i32* %458, align 8
  %460 = icmp sgt i32 %459, -1
  br i1 %460, label %461, label %499

461:                                              ; preds = %456
  %462 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %463 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %462, i32 0, i32 14
  %464 = load i32, i32* %463, align 8
  %465 = icmp sgt i32 %464, -1
  br i1 %465, label %466, label %499

466:                                              ; preds = %461
  %467 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %468 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %467, i32 0, i32 15
  %469 = load i64, i64* %468, align 8
  %470 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %471 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %470, i32 0, i32 15
  %472 = load i64, i64* %471, align 8
  %473 = icmp eq i64 %469, %472
  br i1 %473, label %474, label %499

474:                                              ; preds = %466
  %475 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %476 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %475, i32 0, i32 4
  %477 = load i8*, i8** %476, align 8
  %478 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %479 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %478, i32 0, i32 14
  %480 = load i32, i32* %479, align 8
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i8, i8* %477, i64 %481
  %483 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %484 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %483, i32 0, i32 4
  %485 = load i8*, i8** %484, align 8
  %486 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %487 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %486, i32 0, i32 14
  %488 = load i32, i32* %487, align 8
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i8, i8* %485, i64 %489
  %491 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %492 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %491, i32 0, i32 15
  %493 = load i64, i64* %492, align 8
  %494 = call i64 @StrCmpNW(i8* %482, i8* %490, i64 %493)
  %495 = icmp ne i64 %494, 0
  br i1 %495, label %496, label %498

496:                                              ; preds = %474
  %497 = load i32, i32* @S_OK, align 4
  store i32 %497, i32* %4, align 4
  br label %514

498:                                              ; preds = %474
  br label %510

499:                                              ; preds = %466, %461, %456
  %500 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %501 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %500, i32 0, i32 15
  %502 = load i64, i64* %501, align 8
  %503 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %504 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %503, i32 0, i32 15
  %505 = load i64, i64* %504, align 8
  %506 = icmp ne i64 %502, %505
  br i1 %506, label %507, label %509

507:                                              ; preds = %499
  %508 = load i32, i32* @S_OK, align 4
  store i32 %508, i32* %4, align 4
  br label %514

509:                                              ; preds = %499
  br label %510

510:                                              ; preds = %509, %498
  %511 = load i32, i32* @TRUE, align 4
  %512 = load i32*, i32** %7, align 8
  store i32 %511, i32* %512, align 4
  %513 = load i32, i32* @S_OK, align 4
  store i32 %513, i32* %4, align 4
  br label %514

514:                                              ; preds = %510, %507, %496, %453, %442, %396, %385, %357, %329, %286, %267, %254, %233, %221, %196, %150, %139, %95, %84, %39
  %515 = load i32, i32* %4, align 4
  ret i32 %515
}

declare dso_local i64 @StrCmpNW(i8*, i8*, i64) #1

declare dso_local i64 @StrCmpNIW(i8*, i8*, i64) #1

declare dso_local i32 @compare_file_paths(%struct.TYPE_6__*, %struct.TYPE_6__*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
