; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonEachColumn.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonEachColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64, i8*, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i64*, i8*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@JSON_OBJECT = common dso_local global i64 0, align 8
@JSON_ARRAY = common dso_local global i64 0, align 8
@JNODE_LABEL = common dso_local global i32 0, align 4
@jsonType = common dso_local global i8** null, align 8
@SQLITE_STATIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c".%.*s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @jsonEachColumn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsonEachColumn(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %7, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i64 %21
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %8, align 8
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %268 [
    i32 132, label %24
    i32 128, label %85
    i32 129, label %99
    i32 136, label %119
    i32 134, label %140
    i32 131, label %155
    i32 135, label %182
    i32 130, label %247
    i32 133, label %280
  ]

24:                                               ; preds = %3
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %292

30:                                               ; preds = %24
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @JSON_OBJECT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @jsonReturn(%struct.TYPE_9__* %37, i32* %38, i32 0)
  br label %84

40:                                               ; preds = %30
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @JSON_ARRAY, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %83

46:                                               ; preds = %40
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %46
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %292

57:                                               ; preds = %51
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i64, i64* %65, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %9, align 4
  br label %79

75:                                               ; preds = %46
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %75, %57
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @sqlite3_result_int64(i32* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %40
  br label %84

84:                                               ; preds = %83, %36
  br label %292

85:                                               ; preds = %3
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @JNODE_LABEL, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 1
  store %struct.TYPE_9__* %94, %struct.TYPE_9__** %8, align 8
  br label %95

95:                                               ; preds = %92, %85
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @jsonReturn(%struct.TYPE_9__* %96, i32* %97, i32 0)
  br label %292

99:                                               ; preds = %3
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @JNODE_LABEL, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 1
  store %struct.TYPE_9__* %108, %struct.TYPE_9__** %8, align 8
  br label %109

109:                                              ; preds = %106, %99
  %110 = load i32*, i32** %5, align 8
  %111 = load i8**, i8*** @jsonType, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i8*, i8** %111, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = load i32, i32* @SQLITE_STATIC, align 4
  %118 = call i32 @sqlite3_result_text(i32* %110, i8* %116, i32 -1, i32 %117)
  br label %292

119:                                              ; preds = %3
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @JNODE_LABEL, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 1
  store %struct.TYPE_9__* %128, %struct.TYPE_9__** %8, align 8
  br label %129

129:                                              ; preds = %126, %119
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @JSON_ARRAY, align 8
  %134 = icmp uge i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %292

136:                                              ; preds = %129
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %138 = load i32*, i32** %5, align 8
  %139 = call i32 @jsonReturn(%struct.TYPE_9__* %137, i32* %138, i32 0)
  br label %292

140:                                              ; preds = %3
  %141 = load i32*, i32** %5, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = trunc i64 %144 to i32
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @JNODE_LABEL, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  %152 = zext i1 %151 to i32
  %153 = add nsw i32 %145, %152
  %154 = call i32 @sqlite3_result_int64(i32* %141, i32 %153)
  br label %292

155:                                              ; preds = %3
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = icmp ugt i64 %158, %161
  br i1 %162, label %163, label %181

163:                                              ; preds = %155
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %181

168:                                              ; preds = %163
  %169 = load i32*, i32** %5, align 8
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i64*, i64** %172, align 8
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds i64, i64* %173, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = trunc i64 %178 to i32
  %180 = call i32 @sqlite3_result_int64(i32* %169, i32 %179)
  br label %181

181:                                              ; preds = %168, %163, %155
  br label %292

182:                                              ; preds = %3
  %183 = load i32*, i32** %5, align 8
  %184 = call i32 @jsonInit(i32* %10, i32* %183)
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %182
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @jsonEachComputePath(%struct.TYPE_10__* %190, i32* %10, i64 %193)
  br label %245

195:                                              ; preds = %182
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 3
  %198 = load i8*, i8** %197, align 8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %200, label %210

200:                                              ; preds = %195
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 3
  %203 = load i8*, i8** %202, align 8
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 3
  %206 = load i8*, i8** %205, align 8
  %207 = call i64 @strlen(i8* %206)
  %208 = trunc i64 %207 to i32
  %209 = call i32 @jsonAppendRaw(i32* %10, i8* %203, i32 %208)
  br label %212

210:                                              ; preds = %195
  %211 = call i32 @jsonAppendChar(i32* %10, i8 signext 36)
  br label %212

212:                                              ; preds = %210, %200
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @JSON_ARRAY, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %223

218:                                              ; preds = %212
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 6
  %221 = load i32, i32* %220, align 4
  %222 = call i32 (i32, i32*, i8*, i32, ...) @jsonPrintf(i32 30, i32* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %221)
  br label %244

223:                                              ; preds = %212
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @JSON_OBJECT, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %243

229:                                              ; preds = %223
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 8
  %236 = sub nsw i32 %235, 2
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = add nsw i32 %240, 1
  %242 = call i32 (i32, i32*, i8*, i32, ...) @jsonPrintf(i32 %232, i32* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %236, i32 %241)
  br label %243

243:                                              ; preds = %229, %223
  br label %244

244:                                              ; preds = %243, %218
  br label %245

245:                                              ; preds = %244, %189
  %246 = call i32 @jsonResult(i32* %10)
  br label %292

247:                                              ; preds = %3
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 5
  %250 = load i32, i32* %249, align 8
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %267

252:                                              ; preds = %247
  %253 = load i32*, i32** %5, align 8
  %254 = call i32 @jsonInit(i32* %11, i32* %253)
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 4
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 0
  %259 = load i64*, i64** %258, align 8
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = getelementptr inbounds i64, i64* %259, i64 %262
  %264 = load i64, i64* %263, align 8
  %265 = call i32 @jsonEachComputePath(%struct.TYPE_10__* %255, i32* %11, i64 %264)
  %266 = call i32 @jsonResult(i32* %11)
  br label %292

267:                                              ; preds = %247
  br label %268

268:                                              ; preds = %3, %267
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 3
  %271 = load i8*, i8** %270, align 8
  store i8* %271, i8** %12, align 8
  %272 = load i8*, i8** %12, align 8
  %273 = icmp eq i8* %272, null
  br i1 %273, label %274, label %275

274:                                              ; preds = %268
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %275

275:                                              ; preds = %274, %268
  %276 = load i32*, i32** %5, align 8
  %277 = load i8*, i8** %12, align 8
  %278 = load i32, i32* @SQLITE_STATIC, align 4
  %279 = call i32 @sqlite3_result_text(i32* %276, i8* %277, i32 -1, i32 %278)
  br label %292

280:                                              ; preds = %3
  %281 = load i32, i32* %6, align 4
  %282 = icmp eq i32 %281, 133
  %283 = zext i1 %282 to i32
  %284 = call i32 @assert(i32 %283)
  %285 = load i32*, i32** %5, align 8
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 4
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 1
  %289 = load i8*, i8** %288, align 8
  %290 = load i32, i32* @SQLITE_STATIC, align 4
  %291 = call i32 @sqlite3_result_text(i32* %285, i8* %289, i32 -1, i32 %290)
  br label %292

292:                                              ; preds = %280, %275, %252, %245, %181, %140, %136, %135, %109, %95, %84, %56, %29
  %293 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %293
}

declare dso_local i32 @jsonReturn(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @sqlite3_result_int64(i32*, i32) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

declare dso_local i32 @jsonInit(i32*, i32*) #1

declare dso_local i32 @jsonEachComputePath(%struct.TYPE_10__*, i32*, i64) #1

declare dso_local i32 @jsonAppendRaw(i32*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @jsonAppendChar(i32*, i8 signext) #1

declare dso_local i32 @jsonPrintf(i32, i32*, i8*, i32, ...) #1

declare dso_local i32 @jsonResult(i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
