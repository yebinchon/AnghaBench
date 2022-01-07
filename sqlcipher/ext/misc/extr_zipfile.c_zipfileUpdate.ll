; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_zipfile.c_zipfileUpdate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_zipfile.c_zipfileUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_19__*, i64, i32, %struct.TYPE_18__*, %struct.TYPE_16__ }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__*, %struct.TYPE_19__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_18__*, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i8*, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"sz must be NULL\00", align 1
@SQLITE_CONSTRAINT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"rawdata must be NULL\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"unknown compression method: %d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"duplicate name: \22%s\22\00", align 1
@ZIPFILE_NEWENTRY_MADEBY = common dso_local global i32 0, align 4
@ZIPFILE_NEWENTRY_REQUIRED = common dso_local global i32 0, align 4
@ZIPFILE_NEWENTRY_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32**, i32*)* @zipfileUpdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zipfileUpdate(i32* %0, i32 %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.TYPE_18__*, align 8
  %24 = alloca %struct.TYPE_18__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca %struct.TYPE_18__*, align 8
  %36 = alloca %struct.TYPE_19__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = bitcast i32* %37 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %38, %struct.TYPE_17__** %10, align 8
  %39 = load i32, i32* @SQLITE_OK, align 4
  store i32 %39, i32* %11, align 4
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i8* null, i8** %16, align 8
  store i32 0, i32* %17, align 4
  store i8* null, i8** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %23, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %24, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %4
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @zipfileBegin(i32* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @SQLITE_OK, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %5, align 4
  br label %461

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %4
  %54 = load i32**, i32*** %8, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i64 @sqlite3_value_type(i32* %56)
  %58 = load i64, i64* @SQLITE_NULL, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %112

60:                                               ; preds = %53
  %61 = load i32**, i32*** %8, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i64 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i64 @sqlite3_value_text(i32* %63)
  %65 = inttoptr i64 %64 to i8*
  store i8* %65, i8** %28, align 8
  %66 = load i8*, i8** %28, align 8
  %67 = call i64 @strlen(i8* %66)
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %29, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %87

71:                                               ; preds = %60
  %72 = load i32**, i32*** %8, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i64 1
  %74 = load i32*, i32** %73, align 8
  %75 = call i64 @sqlite3_value_text(i32* %74)
  %76 = inttoptr i64 %75 to i8*
  store i8* %76, i8** %30, align 8
  %77 = load i8*, i8** %30, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %71
  %80 = load i8*, i8** %30, align 8
  %81 = load i8*, i8** %28, align 8
  %82 = load i32, i32* %29, align 4
  %83 = call i64 @zipfileComparePath(i8* %80, i8* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i32 1, i32* %25, align 4
  br label %86

86:                                               ; preds = %85, %79, %71
  br label %87

87:                                               ; preds = %86, %60
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %89, align 8
  store %struct.TYPE_18__* %90, %struct.TYPE_18__** %23, align 8
  br label %91

91:                                               ; preds = %107, %87
  br i1 true, label %92, label %111

92:                                               ; preds = %91
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i8*, i8** %28, align 8
  %98 = load i32, i32* %29, align 4
  %99 = call i64 @zipfileComparePath(i8* %96, i8* %97, i32 %98)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %111

102:                                              ; preds = %92
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %104, align 8
  %106 = call i32 @assert(%struct.TYPE_18__* %105)
  br label %107

107:                                              ; preds = %102
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %109, align 8
  store %struct.TYPE_18__* %110, %struct.TYPE_18__** %23, align 8
  br label %91

111:                                              ; preds = %101, %91
  br label %112

112:                                              ; preds = %111, %53
  %113 = load i32, i32* %7, align 4
  %114 = icmp sgt i32 %113, 1
  br i1 %114, label %115, label %398

115:                                              ; preds = %112
  %116 = load i32**, i32*** %8, align 8
  %117 = getelementptr inbounds i32*, i32** %116, i64 5
  %118 = load i32*, i32** %117, align 8
  %119 = call i64 @sqlite3_value_type(i32* %118)
  %120 = load i64, i64* @SQLITE_NULL, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %115
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %124 = call i32 (%struct.TYPE_17__*, i8*, ...) @zipfileTableErr(%struct.TYPE_17__* %123, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %125 = load i32, i32* @SQLITE_CONSTRAINT, align 4
  store i32 %125, i32* %11, align 4
  br label %126

126:                                              ; preds = %122, %115
  %127 = load i32**, i32*** %8, align 8
  %128 = getelementptr inbounds i32*, i32** %127, i64 6
  %129 = load i32*, i32** %128, align 8
  %130 = call i64 @sqlite3_value_type(i32* %129)
  %131 = load i64, i64* @SQLITE_NULL, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %135 = call i32 (%struct.TYPE_17__*, i8*, ...) @zipfileTableErr(%struct.TYPE_17__* %134, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %136 = load i32, i32* @SQLITE_CONSTRAINT, align 4
  store i32 %136, i32* %11, align 4
  br label %137

137:                                              ; preds = %133, %126
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* @SQLITE_OK, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %216

141:                                              ; preds = %137
  %142 = load i32**, i32*** %8, align 8
  %143 = getelementptr inbounds i32*, i32** %142, i64 7
  %144 = load i32*, i32** %143, align 8
  %145 = call i64 @sqlite3_value_type(i32* %144)
  %146 = load i64, i64* @SQLITE_NULL, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  store i32 1, i32* %26, align 4
  br label %215

149:                                              ; preds = %141
  %150 = load i32**, i32*** %8, align 8
  %151 = getelementptr inbounds i32*, i32** %150, i64 7
  %152 = load i32*, i32** %151, align 8
  %153 = call i8* @sqlite3_value_blob(i32* %152)
  store i8* %153, i8** %31, align 8
  %154 = load i32**, i32*** %8, align 8
  %155 = getelementptr inbounds i32*, i32** %154, i64 7
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @sqlite3_value_bytes(i32* %156)
  store i32 %157, i32* %32, align 4
  %158 = load i32**, i32*** %8, align 8
  %159 = getelementptr inbounds i32*, i32** %158, i64 8
  %160 = load i32*, i32** %159, align 8
  %161 = call i64 @sqlite3_value_type(i32* %160)
  %162 = load i64, i64* @SQLITE_NULL, align 8
  %163 = icmp eq i64 %161, %162
  %164 = zext i1 %163 to i32
  store i32 %164, i32* %33, align 4
  %165 = load i32**, i32*** %8, align 8
  %166 = getelementptr inbounds i32*, i32** %165, i64 8
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @sqlite3_value_int(i32* %167)
  store i32 %168, i32* %20, align 4
  %169 = load i32, i32* %32, align 4
  store i32 %169, i32* %15, align 4
  %170 = load i8*, i8** %31, align 8
  store i8* %170, i8** %18, align 8
  %171 = load i32, i32* %32, align 4
  store i32 %171, i32* %19, align 4
  %172 = load i32, i32* %20, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %149
  %175 = load i32, i32* %20, align 4
  %176 = icmp ne i32 %175, 8
  br i1 %176, label %177, label %182

177:                                              ; preds = %174
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %179 = load i32, i32* %20, align 4
  %180 = call i32 (%struct.TYPE_17__*, i8*, ...) @zipfileTableErr(%struct.TYPE_17__* %178, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %179)
  %181 = load i32, i32* @SQLITE_CONSTRAINT, align 4
  store i32 %181, i32* %11, align 4
  br label %214

182:                                              ; preds = %174, %149
  %183 = load i32, i32* %33, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %182
  %186 = load i32, i32* %20, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %210

188:                                              ; preds = %185, %182
  %189 = load i8*, i8** %31, align 8
  %190 = load i32, i32* %32, align 4
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 0
  %194 = call i32 @zipfileDeflate(i8* %189, i32 %190, i8** %21, i32* %34, i32* %193)
  store i32 %194, i32* %11, align 4
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* @SQLITE_OK, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %209

198:                                              ; preds = %188
  %199 = load i32, i32* %20, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %205, label %201

201:                                              ; preds = %198
  %202 = load i32, i32* %34, align 4
  %203 = load i32, i32* %32, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %201, %198
  store i32 8, i32* %20, align 4
  %206 = load i8*, i8** %21, align 8
  store i8* %206, i8** %18, align 8
  %207 = load i32, i32* %34, align 4
  store i32 %207, i32* %19, align 4
  br label %208

208:                                              ; preds = %205, %201
  br label %209

209:                                              ; preds = %208, %188
  br label %210

210:                                              ; preds = %209, %185
  %211 = load i8*, i8** %31, align 8
  %212 = load i32, i32* %32, align 4
  %213 = call i32 @crc32(i32 0, i8* %211, i32 %212)
  store i32 %213, i32* %27, align 4
  br label %214

214:                                              ; preds = %210, %177
  br label %215

215:                                              ; preds = %214, %148
  br label %216

216:                                              ; preds = %215, %137
  %217 = load i32, i32* %11, align 4
  %218 = load i32, i32* @SQLITE_OK, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %229

220:                                              ; preds = %216
  %221 = load i32**, i32*** %8, align 8
  %222 = getelementptr inbounds i32*, i32** %221, i64 3
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %26, align 4
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 5
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 0
  %228 = call i32 @zipfileGetMode(i32* %223, i32 %224, i32* %13, i32* %227)
  store i32 %228, i32* %11, align 4
  br label %229

229:                                              ; preds = %220, %216
  %230 = load i32, i32* %11, align 4
  %231 = load i32, i32* @SQLITE_OK, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %246

233:                                              ; preds = %229
  %234 = load i32**, i32*** %8, align 8
  %235 = getelementptr inbounds i32*, i32** %234, i64 2
  %236 = load i32*, i32** %235, align 8
  %237 = call i64 @sqlite3_value_text(i32* %236)
  %238 = inttoptr i64 %237 to i8*
  store i8* %238, i8** %16, align 8
  %239 = load i8*, i8** %16, align 8
  %240 = call i64 @strlen(i8* %239)
  %241 = trunc i64 %240 to i32
  store i32 %241, i32* %17, align 4
  %242 = load i32**, i32*** %8, align 8
  %243 = getelementptr inbounds i32*, i32** %242, i64 4
  %244 = load i32*, i32** %243, align 8
  %245 = call i32 @zipfileGetTime(i32* %244)
  store i32 %245, i32* %14, align 4
  br label %246

246:                                              ; preds = %233, %229
  %247 = load i32, i32* %11, align 4
  %248 = load i32, i32* @SQLITE_OK, align 4
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %250, label %274

250:                                              ; preds = %246
  %251 = load i32, i32* %26, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %274

253:                                              ; preds = %250
  %254 = load i8*, i8** %16, align 8
  %255 = load i32, i32* %17, align 4
  %256 = sub nsw i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %254, i64 %257
  %259 = load i8, i8* %258, align 1
  %260 = sext i8 %259 to i32
  %261 = icmp ne i32 %260, 47
  br i1 %261, label %262, label %273

262:                                              ; preds = %253
  %263 = load i8*, i8** %16, align 8
  %264 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %263)
  store i8* %264, i8** %22, align 8
  %265 = load i8*, i8** %22, align 8
  %266 = icmp eq i8* %265, null
  br i1 %266, label %267, label %269

267:                                              ; preds = %262
  %268 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %268, i32* %11, align 4
  br label %269

269:                                              ; preds = %267, %262
  %270 = load i8*, i8** %22, align 8
  store i8* %270, i8** %16, align 8
  %271 = load i32, i32* %17, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %17, align 4
  br label %273

273:                                              ; preds = %269, %253
  br label %274

274:                                              ; preds = %273, %250, %246
  %275 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %276 = icmp eq %struct.TYPE_18__* %275, null
  br i1 %276, label %280, label %277

277:                                              ; preds = %274
  %278 = load i32, i32* %25, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %320

280:                                              ; preds = %277, %274
  %281 = load i32, i32* %11, align 4
  %282 = load i32, i32* @SQLITE_OK, align 4
  %283 = icmp eq i32 %281, %282
  br i1 %283, label %284, label %320

284:                                              ; preds = %280
  %285 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %285, i32 0, i32 4
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %286, align 8
  store %struct.TYPE_18__* %287, %struct.TYPE_18__** %35, align 8
  br label %288

288:                                              ; preds = %315, %284
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %35, align 8
  %290 = icmp ne %struct.TYPE_18__* %289, null
  br i1 %290, label %291, label %319

291:                                              ; preds = %288
  %292 = load %struct.TYPE_18__*, %struct.TYPE_18__** %35, align 8
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %292, i32 0, i32 2
  %294 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %293, i32 0, i32 0
  %295 = load i8*, i8** %294, align 8
  %296 = load i8*, i8** %16, align 8
  %297 = load i32, i32* %17, align 4
  %298 = call i64 @zipfileComparePath(i8* %295, i8* %296, i32 %297)
  %299 = icmp eq i64 %298, 0
  br i1 %299, label %300, label %314

300:                                              ; preds = %291
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %302 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @sqlite3_vtab_on_conflict(i32 %303)
  switch i32 %304, label %308 [
    i32 129, label %305
    i32 128, label %306
  ]

305:                                              ; preds = %300
  br label %455

306:                                              ; preds = %300
  %307 = load %struct.TYPE_18__*, %struct.TYPE_18__** %35, align 8
  store %struct.TYPE_18__* %307, %struct.TYPE_18__** %24, align 8
  br label %313

308:                                              ; preds = %300
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %310 = load i8*, i8** %16, align 8
  %311 = call i32 (%struct.TYPE_17__*, i8*, ...) @zipfileTableErr(%struct.TYPE_17__* %309, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %310)
  %312 = load i32, i32* @SQLITE_CONSTRAINT, align 4
  store i32 %312, i32* %11, align 4
  br label %313

313:                                              ; preds = %308, %306
  br label %319

314:                                              ; preds = %291
  br label %315

315:                                              ; preds = %314
  %316 = load %struct.TYPE_18__*, %struct.TYPE_18__** %35, align 8
  %317 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %316, i32 0, i32 1
  %318 = load %struct.TYPE_18__*, %struct.TYPE_18__** %317, align 8
  store %struct.TYPE_18__* %318, %struct.TYPE_18__** %35, align 8
  br label %288

319:                                              ; preds = %313, %288
  br label %320

320:                                              ; preds = %319, %280, %277
  %321 = load i32, i32* %11, align 4
  %322 = load i32, i32* @SQLITE_OK, align 4
  %323 = icmp eq i32 %321, %322
  br i1 %323, label %324, label %397

324:                                              ; preds = %320
  %325 = load i8*, i8** %16, align 8
  %326 = call %struct.TYPE_18__* @zipfileNewEntry(i8* %325)
  store %struct.TYPE_18__* %326, %struct.TYPE_18__** %12, align 8
  %327 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %328 = icmp eq %struct.TYPE_18__* %327, null
  br i1 %328, label %329, label %331

329:                                              ; preds = %324
  %330 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %330, i32* %11, align 4
  br label %396

331:                                              ; preds = %324
  %332 = load i32, i32* @ZIPFILE_NEWENTRY_MADEBY, align 4
  %333 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %334 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %333, i32 0, i32 2
  %335 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %334, i32 0, i32 10
  store i32 %332, i32* %335, align 8
  %336 = load i32, i32* @ZIPFILE_NEWENTRY_REQUIRED, align 4
  %337 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %338 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %337, i32 0, i32 2
  %339 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %338, i32 0, i32 9
  store i32 %336, i32* %339, align 4
  %340 = load i32, i32* @ZIPFILE_NEWENTRY_FLAGS, align 4
  %341 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %342 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %341, i32 0, i32 2
  %343 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %342, i32 0, i32 8
  store i32 %340, i32* %343, align 8
  %344 = load i32, i32* %20, align 4
  %345 = sext i32 %344 to i64
  %346 = inttoptr i64 %345 to i8*
  %347 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %348 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %347, i32 0, i32 2
  %349 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %348, i32 0, i32 7
  store i8* %346, i8** %349, align 8
  %350 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %351 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %350, i32 0, i32 2
  %352 = load i32, i32* %14, align 4
  %353 = call i32 @zipfileMtimeToDos(%struct.TYPE_20__* %351, i32 %352)
  %354 = load i32, i32* %27, align 4
  %355 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %356 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %355, i32 0, i32 2
  %357 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %356, i32 0, i32 1
  store i32 %354, i32* %357, align 8
  %358 = load i32, i32* %19, align 4
  %359 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %360 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %359, i32 0, i32 2
  %361 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %360, i32 0, i32 2
  store i32 %358, i32* %361, align 4
  %362 = load i32, i32* %15, align 4
  %363 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %364 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %363, i32 0, i32 2
  %365 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %364, i32 0, i32 3
  store i32 %362, i32* %365, align 8
  %366 = load i32, i32* %13, align 4
  %367 = shl i32 %366, 16
  %368 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %369 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %368, i32 0, i32 2
  %370 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %369, i32 0, i32 4
  store i32 %367, i32* %370, align 4
  %371 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %372 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %371, i32 0, i32 2
  %373 = load i64, i64* %372, align 8
  %374 = trunc i64 %373 to i32
  %375 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %376 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %375, i32 0, i32 2
  %377 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %376, i32 0, i32 5
  store i32 %374, i32* %377, align 8
  %378 = load i32, i32* %17, align 4
  %379 = sext i32 %378 to i64
  %380 = inttoptr i64 %379 to i8*
  %381 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %382 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %381, i32 0, i32 2
  %383 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %382, i32 0, i32 6
  store i8* %380, i8** %383, align 8
  %384 = load i32, i32* %14, align 4
  %385 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %386 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %385, i32 0, i32 0
  store i32 %384, i32* %386, align 8
  %387 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %388 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %389 = load i8*, i8** %18, align 8
  %390 = load i32, i32* %19, align 4
  %391 = call i32 @zipfileAppendEntry(%struct.TYPE_17__* %387, %struct.TYPE_18__* %388, i8* %389, i32 %390)
  store i32 %391, i32* %11, align 4
  %392 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %393 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %394 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %395 = call i32 @zipfileAddEntry(%struct.TYPE_17__* %392, %struct.TYPE_18__* %393, %struct.TYPE_18__* %394)
  br label %396

396:                                              ; preds = %331, %329
  br label %397

397:                                              ; preds = %396, %320
  br label %398

398:                                              ; preds = %397, %112
  %399 = load i32, i32* %11, align 4
  %400 = load i32, i32* @SQLITE_OK, align 4
  %401 = icmp eq i32 %399, %400
  br i1 %401, label %402, label %454

402:                                              ; preds = %398
  %403 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %404 = icmp ne %struct.TYPE_18__* %403, null
  br i1 %404, label %408, label %405

405:                                              ; preds = %402
  %406 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %407 = icmp ne %struct.TYPE_18__* %406, null
  br i1 %407, label %408, label %454

408:                                              ; preds = %405, %402
  %409 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %410 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %409, i32 0, i32 1
  %411 = load %struct.TYPE_19__*, %struct.TYPE_19__** %410, align 8
  store %struct.TYPE_19__* %411, %struct.TYPE_19__** %36, align 8
  br label %412

412:                                              ; preds = %443, %408
  %413 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %414 = icmp ne %struct.TYPE_19__* %413, null
  br i1 %414, label %415, label %447

415:                                              ; preds = %412
  %416 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %417 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %416, i32 0, i32 1
  %418 = load %struct.TYPE_18__*, %struct.TYPE_18__** %417, align 8
  %419 = icmp ne %struct.TYPE_18__* %418, null
  br i1 %419, label %420, label %442

420:                                              ; preds = %415
  %421 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %422 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %421, i32 0, i32 1
  %423 = load %struct.TYPE_18__*, %struct.TYPE_18__** %422, align 8
  %424 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %425 = icmp eq %struct.TYPE_18__* %423, %424
  br i1 %425, label %432, label %426

426:                                              ; preds = %420
  %427 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %428 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %427, i32 0, i32 1
  %429 = load %struct.TYPE_18__*, %struct.TYPE_18__** %428, align 8
  %430 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %431 = icmp eq %struct.TYPE_18__* %429, %430
  br i1 %431, label %432, label %442

432:                                              ; preds = %426, %420
  %433 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %434 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %433, i32 0, i32 1
  %435 = load %struct.TYPE_18__*, %struct.TYPE_18__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %435, i32 0, i32 1
  %437 = load %struct.TYPE_18__*, %struct.TYPE_18__** %436, align 8
  %438 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %439 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %438, i32 0, i32 1
  store %struct.TYPE_18__* %437, %struct.TYPE_18__** %439, align 8
  %440 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %441 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %440, i32 0, i32 0
  store i32 1, i32* %441, align 8
  br label %442

442:                                              ; preds = %432, %426, %415
  br label %443

443:                                              ; preds = %442
  %444 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %445 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %444, i32 0, i32 2
  %446 = load %struct.TYPE_19__*, %struct.TYPE_19__** %445, align 8
  store %struct.TYPE_19__* %446, %struct.TYPE_19__** %36, align 8
  br label %412

447:                                              ; preds = %412
  %448 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %449 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %450 = call i32 @zipfileRemoveEntryFromList(%struct.TYPE_17__* %448, %struct.TYPE_18__* %449)
  %451 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %452 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %453 = call i32 @zipfileRemoveEntryFromList(%struct.TYPE_17__* %451, %struct.TYPE_18__* %452)
  br label %454

454:                                              ; preds = %447, %405, %398
  br label %455

455:                                              ; preds = %454, %305
  %456 = load i8*, i8** %21, align 8
  %457 = call i32 @sqlite3_free(i8* %456)
  %458 = load i8*, i8** %22, align 8
  %459 = call i32 @sqlite3_free(i8* %458)
  %460 = load i32, i32* %11, align 4
  store i32 %460, i32* %5, align 4
  br label %461

461:                                              ; preds = %455, %50
  %462 = load i32, i32* %5, align 4
  ret i32 %462
}

declare dso_local i32 @zipfileBegin(i32*) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @zipfileComparePath(i8*, i8*, i32) #1

declare dso_local i32 @assert(%struct.TYPE_18__*) #1

declare dso_local i32 @zipfileTableErr(%struct.TYPE_17__*, i8*, ...) #1

declare dso_local i8* @sqlite3_value_blob(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i32 @sqlite3_value_int(i32*) #1

declare dso_local i32 @zipfileDeflate(i8*, i32, i8**, i32*, i32*) #1

declare dso_local i32 @crc32(i32, i8*, i32) #1

declare dso_local i32 @zipfileGetMode(i32*, i32, i32*, i32*) #1

declare dso_local i32 @zipfileGetTime(i32*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @sqlite3_vtab_on_conflict(i32) #1

declare dso_local %struct.TYPE_18__* @zipfileNewEntry(i8*) #1

declare dso_local i32 @zipfileMtimeToDos(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @zipfileAppendEntry(%struct.TYPE_17__*, %struct.TYPE_18__*, i8*, i32) #1

declare dso_local i32 @zipfileAddEntry(%struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @zipfileRemoveEntryFromList(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
