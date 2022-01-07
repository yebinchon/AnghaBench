; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_read_table_from_storage.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_read_table_from_storage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i8***, %struct.TYPE_11__*, i32*, i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@LONG_STR_BYTES = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Read %d bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Table size is invalid %d/%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Transposing data from %d rows\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"oops - unknown column width %d\0A\00", align 1
@MSITYPE_STRING = common dso_local global i32 0, align 4
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, i32*)* @read_table_from_storage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_table_from_storage(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8** null, i8*** %8, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @debugstr_w(i32 %21)
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @msi_table_get_row_size(%struct.TYPE_10__* %24, %struct.TYPE_11__* %27, i32 %30, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @LONG_STR_BYTES, align 4
  %43 = call i32 @msi_table_get_row_size(%struct.TYPE_10__* %35, %struct.TYPE_11__* %38, i32 %41, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @TRUE, align 4
  %49 = call i32 @read_stream_data(i32* %44, i32 %47, i32 %48, i8*** %8, i32* %9)
  %50 = load i8**, i8*** %8, align 8
  %51 = icmp ne i8** %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %3
  %53 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %53, i32* %4, align 4
  br label %304

54:                                               ; preds = %3
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %12, align 4
  %59 = srem i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %63)
  br label %300

65:                                               ; preds = %54
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %12, align 4
  %68 = sdiv i32 %66, %67
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = icmp ne i32 %68, 0
  br i1 %71, label %72, label %99

72:                                               ; preds = %65
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 8
  %78 = trunc i64 %77 to i32
  %79 = call i8* @msi_alloc_zero(i32 %78)
  %80 = bitcast i8* %79 to i8***
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  store i8*** %80, i8**** %82, align 8
  %83 = icmp ne i8*** %80, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %72
  br label %300

85:                                               ; preds = %72
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 4
  %91 = trunc i64 %90 to i32
  %92 = call i8* @msi_alloc_zero(i32 %91)
  %93 = bitcast i8* %92 to i32*
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 4
  store i32* %93, i32** %95, align 8
  %96 = icmp ne i32* %93, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %85
  br label %300

98:                                               ; preds = %85
  br label %99

99:                                               ; preds = %98, %65
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  store i32 0, i32* %10, align 4
  br label %104

104:                                              ; preds = %293, %99
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %296

110:                                              ; preds = %104
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %111 = load i32, i32* %13, align 4
  %112 = call i8** @msi_alloc(i32 %111)
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 2
  %115 = load i8***, i8**** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8**, i8*** %115, i64 %117
  store i8** %112, i8*** %118, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 2
  %121 = load i8***, i8**** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8**, i8*** %121, i64 %123
  %125 = load i8**, i8*** %124, align 8
  %126 = icmp ne i8** %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %110
  br label %300

128:                                              ; preds = %110
  %129 = load i32, i32* @TRUE, align 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 4
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 %129, i32* %135, align 4
  store i32 0, i32* %11, align 4
  br label %136

136:                                              ; preds = %289, %128
  %137 = load i32, i32* %11, align 4
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %292

142:                                              ; preds = %136
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %145, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i64 %148
  %150 = load i32, i32* @LONG_STR_BYTES, align 4
  %151 = call i32 @bytes_per_column(%struct.TYPE_10__* %143, %struct.TYPE_11__* %149, i32 %150)
  store i32 %151, i32* %16, align 4
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 3
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %154, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i64 %157
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @bytes_per_column(%struct.TYPE_10__* %152, %struct.TYPE_11__* %158, i32 %161)
  store i32 %162, i32* %17, align 4
  %163 = load i32, i32* %17, align 4
  %164 = icmp ne i32 %163, 2
  br i1 %164, label %165, label %174

165:                                              ; preds = %142
  %166 = load i32, i32* %17, align 4
  %167 = icmp ne i32 %166, 3
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = load i32, i32* %17, align 4
  %170 = icmp ne i32 %169, 4
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i32, i32* %17, align 4
  %173 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %172)
  br label %300

174:                                              ; preds = %168, %165, %142
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 3
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %176, align 8
  %178 = load i32, i32* %11, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @MSITYPE_STRING, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %245

186:                                              ; preds = %174
  %187 = load i32, i32* %17, align 4
  %188 = load i32, i32* %16, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %245

190:                                              ; preds = %186
  store i32 0, i32* %18, align 4
  br label %191

191:                                              ; preds = %241, %190
  %192 = load i32, i32* %18, align 4
  %193 = load i32, i32* %16, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %244

195:                                              ; preds = %191
  %196 = load i32, i32* %18, align 4
  %197 = load i32, i32* %17, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %227

199:                                              ; preds = %195
  %200 = load i8**, i8*** %8, align 8
  %201 = load i32, i32* %14, align 4
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = mul nsw i32 %201, %204
  %206 = load i32, i32* %10, align 4
  %207 = load i32, i32* %17, align 4
  %208 = mul nsw i32 %206, %207
  %209 = add nsw i32 %205, %208
  %210 = load i32, i32* %18, align 4
  %211 = add nsw i32 %209, %210
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8*, i8** %200, i64 %212
  %214 = load i8*, i8** %213, align 8
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 2
  %217 = load i8***, i8**** %216, align 8
  %218 = load i32, i32* %10, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8**, i8*** %217, i64 %219
  %221 = load i8**, i8*** %220, align 8
  %222 = load i32, i32* %15, align 4
  %223 = load i32, i32* %18, align 4
  %224 = add nsw i32 %222, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8*, i8** %221, i64 %225
  store i8* %214, i8** %226, align 8
  br label %240

227:                                              ; preds = %195
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 2
  %230 = load i8***, i8**** %229, align 8
  %231 = load i32, i32* %10, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8**, i8*** %230, i64 %232
  %234 = load i8**, i8*** %233, align 8
  %235 = load i32, i32* %15, align 4
  %236 = load i32, i32* %18, align 4
  %237 = add nsw i32 %235, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8*, i8** %234, i64 %238
  store i8* null, i8** %239, align 8
  br label %240

240:                                              ; preds = %227, %199
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %18, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %18, align 4
  br label %191

244:                                              ; preds = %191
  br label %282

245:                                              ; preds = %186, %174
  store i32 0, i32* %18, align 4
  br label %246

246:                                              ; preds = %278, %245
  %247 = load i32, i32* %18, align 4
  %248 = load i32, i32* %17, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %281

250:                                              ; preds = %246
  %251 = load i8**, i8*** %8, align 8
  %252 = load i32, i32* %14, align 4
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = mul nsw i32 %252, %255
  %257 = load i32, i32* %10, align 4
  %258 = load i32, i32* %17, align 4
  %259 = mul nsw i32 %257, %258
  %260 = add nsw i32 %256, %259
  %261 = load i32, i32* %18, align 4
  %262 = add nsw i32 %260, %261
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8*, i8** %251, i64 %263
  %265 = load i8*, i8** %264, align 8
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 2
  %268 = load i8***, i8**** %267, align 8
  %269 = load i32, i32* %10, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8**, i8*** %268, i64 %270
  %272 = load i8**, i8*** %271, align 8
  %273 = load i32, i32* %15, align 4
  %274 = load i32, i32* %18, align 4
  %275 = add nsw i32 %273, %274
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8*, i8** %272, i64 %276
  store i8* %265, i8** %277, align 8
  br label %278

278:                                              ; preds = %250
  %279 = load i32, i32* %18, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %18, align 4
  br label %246

281:                                              ; preds = %246
  br label %282

282:                                              ; preds = %281, %244
  %283 = load i32, i32* %16, align 4
  %284 = load i32, i32* %15, align 4
  %285 = add nsw i32 %284, %283
  store i32 %285, i32* %15, align 4
  %286 = load i32, i32* %17, align 4
  %287 = load i32, i32* %14, align 4
  %288 = add nsw i32 %287, %286
  store i32 %288, i32* %14, align 4
  br label %289

289:                                              ; preds = %282
  %290 = load i32, i32* %11, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %11, align 4
  br label %136

292:                                              ; preds = %136
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %10, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %10, align 4
  br label %104

296:                                              ; preds = %104
  %297 = load i8**, i8*** %8, align 8
  %298 = call i32 @msi_free(i8** %297)
  %299 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %299, i32* %4, align 4
  br label %304

300:                                              ; preds = %171, %127, %97, %84, %61
  %301 = load i8**, i8*** %8, align 8
  %302 = call i32 @msi_free(i8** %301)
  %303 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %303, i32* %4, align 4
  br label %304

304:                                              ; preds = %300, %296, %52
  %305 = load i32, i32* %4, align 4
  ret i32 %305
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @msi_table_get_row_size(%struct.TYPE_10__*, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @read_stream_data(i32*, i32, i32, i8***, i32*) #1

declare dso_local i32 @WARN(i8*, i32, i32) #1

declare dso_local i8* @msi_alloc_zero(i32) #1

declare dso_local i8** @msi_alloc(i32) #1

declare dso_local i32 @bytes_per_column(%struct.TYPE_10__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @msi_free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
