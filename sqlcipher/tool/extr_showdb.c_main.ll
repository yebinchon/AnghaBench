; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_showdb.c_main.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_showdb.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8, i32 }

@.str = private unnamed_addr constant [5 x i8] c"-raw\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"--raw\00", align 1
@g = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Pagesize: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Available pages: 1..%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"dbheader\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"pgidx\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"ptrmap\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"%s: unknown option: [%s]\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"..end\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"Page argument should be LOWER?..UPPER?.  Range 1 to %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %8, align 8
  %26 = load i8**, i8*** %5, align 8
  store i8** %26, i8*** %9, align 8
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %48

30:                                               ; preds = %2
  %31 = load i8**, i8*** %9, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @sqlite3_stricmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load i8**, i8*** %9, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @sqlite3_stricmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36, %30
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %43 = load i8**, i8*** %9, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i32 1
  store i8** %44, i8*** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %42, %36
  br label %48

48:                                               ; preds = %47, %2
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 2
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @usage(i8* %52)
  %54 = call i32 @exit(i32 1) #3
  unreachable

55:                                               ; preds = %48
  %56 = load i8*, i8** %8, align 8
  %57 = load i8**, i8*** %9, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @fileOpen(i8* %56, i8* %59)
  %61 = call i32 (...) @fileGetsize()
  store i32 %61, i32* %6, align 4
  %62 = call i8* @fileRead(i32 16, i32 2)
  store i8* %62, i8** %7, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = mul nsw i32 %66, 256
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = mul nsw i32 %71, 65536
  %73 = add nsw i32 %67, %72
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %75 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %55
  store i8 0, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  br label %79

79:                                               ; preds = %78, %55
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @sqlite3_free(i8* %80)
  %82 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %83 = zext i8 %82 to i32
  %84 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %6, align 4
  %86 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %87 = zext i8 %86 to i32
  %88 = add nsw i32 %85, %87
  %89 = sub nsw i32 %88, 1
  %90 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %91 = zext i8 %90 to i32
  %92 = sdiv i32 %89, %91
  store i32 %92, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 2), align 4
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 2), align 4
  %94 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %10, align 4
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %97, label %109

97:                                               ; preds = %79
  store i32 1, i32* %11, align 4
  br label %98

98:                                               ; preds = %105, %97
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 2), align 4
  %101 = icmp sle i32 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @print_page(i32 %103)
  br label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %98

108:                                              ; preds = %98
  br label %331

109:                                              ; preds = %79
  store i32 2, i32* %12, align 4
  br label %110

110:                                              ; preds = %327, %109
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %330

114:                                              ; preds = %110
  %115 = load i8**, i8*** %9, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = call i64 @strcmp(i8* %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %114
  %123 = call i32 (...) @print_db_header()
  br label %327

124:                                              ; preds = %114
  %125 = load i8**, i8*** %9, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  %129 = load i8*, i8** %128, align 8
  %130 = call i64 @strcmp(i8* %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %124
  %133 = load i8*, i8** %8, align 8
  %134 = load i8**, i8*** %9, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 1
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @page_usage_report(i8* %133, i8* %136)
  br label %327

138:                                              ; preds = %124
  %139 = load i8**, i8*** %9, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  %143 = load i8*, i8** %142, align 8
  %144 = call i64 @strcmp(i8* %143, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %138
  %147 = load i8**, i8*** %9, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 1
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @ptrmap_coverage_report(i8* %149)
  br label %327

151:                                              ; preds = %138
  %152 = load i8**, i8*** %9, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8*, i8** %152, i64 %154
  %156 = load i8*, i8** %155, align 8
  %157 = call i64 @strcmp(i8* %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %151
  %160 = load i8*, i8** %8, align 8
  %161 = call i32 @usage(i8* %160)
  br label %327

162:                                              ; preds = %151
  %163 = load i8**, i8*** %9, align 8
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %163, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 0
  %169 = load i8, i8* %168, align 1
  %170 = call i32 @ISDIGIT(i8 signext %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %181, label %172

172:                                              ; preds = %162
  %173 = load i32, i32* @stderr, align 4
  %174 = load i8*, i8** %8, align 8
  %175 = load i8**, i8*** %9, align 8
  %176 = load i32, i32* %12, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8*, i8** %175, i64 %177
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 (i32, i8*, ...) @fprintf(i32 %173, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* %174, i8* %179)
  br label %327

181:                                              ; preds = %162
  %182 = load i8**, i8*** %9, align 8
  %183 = load i32, i32* %12, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8*, i8** %182, i64 %184
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @strtol(i8* %186, i8** %15, i32 0)
  store i32 %187, i32* %13, align 4
  %188 = load i8*, i8** %15, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %196

190:                                              ; preds = %181
  %191 = load i8*, i8** %15, align 8
  %192 = call i64 @strcmp(i8* %191, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 2), align 4
  store i32 %195, i32* %14, align 4
  br label %300

196:                                              ; preds = %190, %181
  %197 = load i8*, i8** %15, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %215

199:                                              ; preds = %196
  %200 = load i8*, i8** %15, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 0
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp eq i32 %203, 46
  br i1 %204, label %205, label %215

205:                                              ; preds = %199
  %206 = load i8*, i8** %15, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 1
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp eq i32 %209, 46
  br i1 %210, label %211, label %215

211:                                              ; preds = %205
  %212 = load i8*, i8** %15, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 2
  %214 = call i32 @strtol(i8* %213, i8** null, i32 0)
  store i32 %214, i32* %14, align 4
  br label %299

215:                                              ; preds = %205, %199, %196
  %216 = load i8*, i8** %15, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %218, label %251

218:                                              ; preds = %215
  %219 = load i8*, i8** %15, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 0
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp eq i32 %222, 98
  br i1 %223, label %224, label %251

224:                                              ; preds = %218
  %225 = load i32, i32* %13, align 4
  %226 = icmp eq i32 %225, 1
  br i1 %226, label %227, label %231

227:                                              ; preds = %224
  store i32 100, i32* %18, align 4
  store i32 100, i32* %16, align 4
  %228 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %229 = zext i8 %228 to i32
  %230 = sub nsw i32 %229, 100
  store i32 %230, i32* %17, align 4
  br label %239

231:                                              ; preds = %224
  store i32 0, i32* %18, align 4
  %232 = load i32, i32* %13, align 4
  %233 = sub nsw i32 %232, 1
  %234 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %235 = zext i8 %234 to i32
  %236 = mul nsw i32 %233, %235
  store i32 %236, i32* %16, align 4
  %237 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %238 = zext i8 %237 to i32
  store i32 %238, i32* %17, align 4
  br label %239

239:                                              ; preds = %231, %227
  %240 = load i32, i32* %16, align 4
  %241 = load i32, i32* %17, align 4
  %242 = call i8* @fileRead(i32 %240, i32 %241)
  store i8* %242, i8** %19, align 8
  %243 = load i8*, i8** %19, align 8
  %244 = load i32, i32* %13, align 4
  %245 = load i32, i32* %18, align 4
  %246 = load i8*, i8** %15, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 1
  %248 = call i32 @decode_btree_page(i8* %243, i32 %244, i32 %245, i8* %247)
  %249 = load i8*, i8** %19, align 8
  %250 = call i32 @sqlite3_free(i8* %249)
  br label %327

251:                                              ; preds = %218, %215
  %252 = load i8*, i8** %15, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %254, label %295

254:                                              ; preds = %251
  %255 = load i8*, i8** %15, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 0
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp eq i32 %258, 116
  br i1 %259, label %260, label %295

260:                                              ; preds = %254
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 1, i32* %22, align 4
  br label %261

261:                                              ; preds = %287, %260
  %262 = load i8*, i8** %15, align 8
  %263 = load i32, i32* %22, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8, i8* %262, i64 %264
  %266 = load i8, i8* %265, align 1
  %267 = icmp ne i8 %266, 0
  br i1 %267, label %268, label %290

268:                                              ; preds = %261
  %269 = load i8*, i8** %15, align 8
  %270 = load i32, i32* %22, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, i8* %269, i64 %271
  %273 = load i8, i8* %272, align 1
  %274 = sext i8 %273 to i32
  %275 = icmp eq i32 %274, 114
  br i1 %275, label %276, label %277

276:                                              ; preds = %268
  store i32 1, i32* %21, align 4
  br label %277

277:                                              ; preds = %276, %268
  %278 = load i8*, i8** %15, align 8
  %279 = load i32, i32* %22, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, i8* %278, i64 %280
  %282 = load i8, i8* %281, align 1
  %283 = sext i8 %282 to i32
  %284 = icmp eq i32 %283, 100
  br i1 %284, label %285, label %286

285:                                              ; preds = %277
  store i32 1, i32* %20, align 4
  br label %286

286:                                              ; preds = %285, %277
  br label %287

287:                                              ; preds = %286
  %288 = load i32, i32* %22, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %22, align 4
  br label %261

290:                                              ; preds = %261
  %291 = load i32, i32* %13, align 4
  %292 = load i32, i32* %20, align 4
  %293 = load i32, i32* %21, align 4
  %294 = call i32 @decode_trunk_page(i32 %291, i32 %292, i32 %293)
  br label %327

295:                                              ; preds = %254, %251
  %296 = load i32, i32* %13, align 4
  store i32 %296, i32* %14, align 4
  br label %297

297:                                              ; preds = %295
  br label %298

298:                                              ; preds = %297
  br label %299

299:                                              ; preds = %298, %211
  br label %300

300:                                              ; preds = %299, %194
  %301 = load i32, i32* %13, align 4
  %302 = icmp slt i32 %301, 1
  br i1 %302, label %311, label %303

303:                                              ; preds = %300
  %304 = load i32, i32* %14, align 4
  %305 = load i32, i32* %13, align 4
  %306 = icmp slt i32 %304, %305
  br i1 %306, label %311, label %307

307:                                              ; preds = %303
  %308 = load i32, i32* %14, align 4
  %309 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 2), align 4
  %310 = icmp sgt i32 %308, %309
  br i1 %310, label %311, label %316

311:                                              ; preds = %307, %303, %300
  %312 = load i32, i32* @stderr, align 4
  %313 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 2), align 4
  %314 = call i32 (i32, i8*, ...) @fprintf(i32 %312, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0), i32 %313)
  %315 = call i32 @exit(i32 1) #3
  unreachable

316:                                              ; preds = %307
  br label %317

317:                                              ; preds = %321, %316
  %318 = load i32, i32* %13, align 4
  %319 = load i32, i32* %14, align 4
  %320 = icmp sle i32 %318, %319
  br i1 %320, label %321, label %326

321:                                              ; preds = %317
  %322 = load i32, i32* %13, align 4
  %323 = call i32 @print_page(i32 %322)
  %324 = load i32, i32* %13, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %13, align 4
  br label %317

326:                                              ; preds = %317
  br label %327

327:                                              ; preds = %326, %290, %239, %172, %159, %146, %132, %122
  %328 = load i32, i32* %12, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %12, align 4
  br label %110

330:                                              ; preds = %110
  br label %331

331:                                              ; preds = %330, %108
  %332 = call i32 (...) @fileClose()
  ret i32 0
}

declare dso_local i64 @sqlite3_stricmp(i8*, i8*) #1

declare dso_local i32 @usage(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fileOpen(i8*, i8*) #1

declare dso_local i32 @fileGetsize(...) #1

declare dso_local i8* @fileRead(i32, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @print_page(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @print_db_header(...) #1

declare dso_local i32 @page_usage_report(i8*, i8*) #1

declare dso_local i32 @ptrmap_coverage_report(i8*) #1

declare dso_local i32 @ISDIGIT(i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @decode_btree_page(i8*, i32, i32, i8*) #1

declare dso_local i32 @decode_trunk_page(i32, i32, i32) #1

declare dso_local i32 @fileClose(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
