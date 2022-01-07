; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_parser.c_get_loc_cmd.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_parser.c_get_loc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8, i64, i32* }
%struct.TYPE_6__ = type { i64, i32, i32, i8**, i8**, i8**, i64 }

@parse_cmd = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"unknown command\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"could not allocate command\00", align 1
@LC_TEXT = common dso_local global i64 0, align 8
@loc_line_nr = common dso_local global i64 0, align 8
@space = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"missing parameter for command '%c'\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"no start quote\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"no end quote\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"invalid integer\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"could not allocate memory\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c".,\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"internal error (unexpected number of numeric values)\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"localization: unhandled arg_type '%c'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i8, i8*)* @get_loc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @get_loc_cmd(i8 signext %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %16, align 8
  store i64 0, i64* %7, align 8
  br label %17

17:                                               ; preds = %34, %2
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** @parse_cmd, align 8
  %20 = call i64 @ARRAYSIZE(%struct.TYPE_7__* %19)
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load i8, i8* %4, align 1
  %24 = sext i8 %23 to i32
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @parse_cmd, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i8, i8* %28, align 8
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %24, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %37

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %7, align 8
  br label %17

37:                                               ; preds = %32, %17
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** @parse_cmd, align 8
  %40 = call i64 @ARRAYSIZE(%struct.TYPE_7__* %39)
  %41 = icmp uge i64 %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 @luprint(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %490

44:                                               ; preds = %37
  %45 = call i64 @calloc(i32 48, i32 1)
  %46 = inttoptr i64 %45 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %16, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %48 = icmp eq %struct.TYPE_6__* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 @luprint(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %490

51:                                               ; preds = %44
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** @parse_cmd, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @LC_TEXT, align 8
  %63 = icmp sle i64 %61, %62
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 -1, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load i64, i64* @loc_line_nr, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 6
  store i64 %68, i64* %70, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %8, align 8
  br label %71

71:                                               ; preds = %482, %51
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** @parse_cmd, align 8
  %73 = load i64, i64* %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %485

81:                                               ; preds = %71
  %82 = load i8*, i8** %5, align 8
  %83 = load i64, i64* %6, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = load i8*, i8** @space, align 8
  %86 = call i64 @strspn(i8* %84, i8* %85)
  %87 = load i64, i64* %6, align 8
  %88 = add i64 %87, %86
  store i64 %88, i64* %6, align 8
  %89 = load i64, i64* %6, align 8
  store i64 %89, i64* %10, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = load i64, i64* %6, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %81
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** @parse_cmd, align 8
  %98 = load i64, i64* %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i8, i8* %100, align 8
  %102 = call i32 @luprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8 signext %101)
  br label %487

103:                                              ; preds = %81
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** @parse_cmd, align 8
  %105 = load i64, i64* %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* %8, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  switch i32 %111, label %471 [
    i32 115, label %112
    i32 99, label %211
    i32 105, label %269
    i32 117, label %376
  ]

112:                                              ; preds = %103
  %113 = load i8*, i8** %5, align 8
  %114 = load i64, i64* %6, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %6, align 8
  %116 = getelementptr inbounds i8, i8* %113, i64 %114
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 34
  br i1 %119, label %120, label %122

120:                                              ; preds = %112
  %121 = call i32 @luprint(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %487

122:                                              ; preds = %112
  %123 = load i64, i64* %6, align 8
  store i64 %123, i64* %10, align 8
  br label %124

124:                                              ; preds = %186, %122
  %125 = load i8*, i8** %5, align 8
  %126 = load i64, i64* %6, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %157

131:                                              ; preds = %124
  %132 = load i8*, i8** %5, align 8
  %133 = load i64, i64* %6, align 8
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 34
  br i1 %137, label %155, label %138

138:                                              ; preds = %131
  %139 = load i8*, i8** %5, align 8
  %140 = load i64, i64* %6, align 8
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 34
  br i1 %144, label %145, label %153

145:                                              ; preds = %138
  %146 = load i8*, i8** %5, align 8
  %147 = load i64, i64* %6, align 8
  %148 = sub i64 %147, 1
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 92
  br label %153

153:                                              ; preds = %145, %138
  %154 = phi i1 [ false, %138 ], [ %152, %145 ]
  br label %155

155:                                              ; preds = %153, %131
  %156 = phi i1 [ true, %131 ], [ %154, %153 ]
  br label %157

157:                                              ; preds = %155, %124
  %158 = phi i1 [ false, %124 ], [ %156, %155 ]
  br i1 %158, label %159, label %187

159:                                              ; preds = %157
  %160 = load i8*, i8** %5, align 8
  %161 = load i64, i64* %6, align 8
  %162 = getelementptr inbounds i8, i8* %160, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 34
  br i1 %165, label %166, label %183

166:                                              ; preds = %159
  %167 = load i8*, i8** %5, align 8
  %168 = load i64, i64* %6, align 8
  %169 = sub i64 %168, 1
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 92
  br i1 %173, label %174, label %183

174:                                              ; preds = %166
  %175 = load i8*, i8** %5, align 8
  %176 = load i64, i64* %6, align 8
  %177 = sub i64 %176, 1
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load i8*, i8** %5, align 8
  %180 = load i64, i64* %6, align 8
  %181 = getelementptr inbounds i8, i8* %179, i64 %180
  %182 = call i32 @strcpy(i8* %178, i8* %181)
  br label %186

183:                                              ; preds = %166, %159
  %184 = load i64, i64* %6, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %6, align 8
  br label %186

186:                                              ; preds = %183, %174
  br label %124

187:                                              ; preds = %157
  %188 = load i8*, i8** %5, align 8
  %189 = load i64, i64* %6, align 8
  %190 = getelementptr inbounds i8, i8* %188, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %187
  %195 = call i32 @luprint(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %487

196:                                              ; preds = %187
  %197 = load i8*, i8** %5, align 8
  %198 = load i64, i64* %6, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %6, align 8
  %200 = getelementptr inbounds i8, i8* %197, i64 %198
  store i8 0, i8* %200, align 1
  %201 = load i8*, i8** %5, align 8
  %202 = load i64, i64* %10, align 8
  %203 = getelementptr inbounds i8, i8* %201, i64 %202
  %204 = call i8* @safe_strdup(i8* %203)
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 5
  %207 = load i8**, i8*** %206, align 8
  %208 = load i64, i64* %11, align 8
  %209 = add i64 %208, 1
  store i64 %209, i64* %11, align 8
  %210 = getelementptr inbounds i8*, i8** %207, i64 %208
  store i8* %204, i8** %210, align 8
  br label %481

211:                                              ; preds = %103
  br label %212

212:                                              ; preds = %243, %211
  %213 = load i8*, i8** %5, align 8
  %214 = load i64, i64* %6, align 8
  %215 = getelementptr inbounds i8, i8* %213, i64 %214
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %241

219:                                              ; preds = %212
  %220 = load i8*, i8** %5, align 8
  %221 = load i64, i64* %6, align 8
  %222 = getelementptr inbounds i8, i8* %220, i64 %221
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = load i8*, i8** @space, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 0
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp ne i32 %224, %228
  br i1 %229, label %230, label %241

230:                                              ; preds = %219
  %231 = load i8*, i8** %5, align 8
  %232 = load i64, i64* %6, align 8
  %233 = getelementptr inbounds i8, i8* %231, i64 %232
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  %236 = load i8*, i8** @space, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 1
  %238 = load i8, i8* %237, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp ne i32 %235, %239
  br label %241

241:                                              ; preds = %230, %219, %212
  %242 = phi i1 [ false, %219 ], [ false, %212 ], [ %240, %230 ]
  br i1 %242, label %243, label %246

243:                                              ; preds = %241
  %244 = load i64, i64* %6, align 8
  %245 = add i64 %244, 1
  store i64 %245, i64* %6, align 8
  br label %212

246:                                              ; preds = %241
  %247 = load i8*, i8** %5, align 8
  %248 = load i64, i64* %6, align 8
  %249 = getelementptr inbounds i8, i8* %247, i64 %248
  %250 = load i8, i8* %249, align 1
  %251 = sext i8 %250 to i32
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %246
  %254 = load i8*, i8** %5, align 8
  %255 = load i64, i64* %6, align 8
  %256 = add i64 %255, 1
  store i64 %256, i64* %6, align 8
  %257 = getelementptr inbounds i8, i8* %254, i64 %255
  store i8 0, i8* %257, align 1
  br label %258

258:                                              ; preds = %253, %246
  %259 = load i8*, i8** %5, align 8
  %260 = load i64, i64* %10, align 8
  %261 = getelementptr inbounds i8, i8* %259, i64 %260
  %262 = call i8* @safe_strdup(i8* %261)
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 5
  %265 = load i8**, i8*** %264, align 8
  %266 = load i64, i64* %11, align 8
  %267 = add i64 %266, 1
  store i64 %267, i64* %11, align 8
  %268 = getelementptr inbounds i8*, i8** %265, i64 %266
  store i8* %262, i8** %268, align 8
  br label %481

269:                                              ; preds = %103
  %270 = load i8*, i8** %5, align 8
  %271 = load i64, i64* %6, align 8
  %272 = getelementptr inbounds i8, i8* %270, i64 %271
  %273 = load i8, i8* %272, align 1
  %274 = sext i8 %273 to i32
  %275 = icmp eq i32 %274, 44
  br i1 %275, label %283, label %276

276:                                              ; preds = %269
  %277 = load i8*, i8** %5, align 8
  %278 = load i64, i64* %6, align 8
  %279 = getelementptr inbounds i8, i8* %277, i64 %278
  %280 = load i8, i8* %279, align 1
  %281 = sext i8 %280 to i32
  %282 = icmp eq i32 %281, 46
  br i1 %282, label %283, label %293

283:                                              ; preds = %276, %269
  %284 = load i8*, i8** %5, align 8
  %285 = load i64, i64* %6, align 8
  %286 = add i64 %285, 1
  %287 = getelementptr inbounds i8, i8* %284, i64 %286
  %288 = load i8*, i8** @space, align 8
  %289 = call i64 @strspn(i8* %287, i8* %288)
  %290 = load i64, i64* %6, align 8
  %291 = add i64 %290, %289
  store i64 %291, i64* %6, align 8
  %292 = load i64, i64* %6, align 8
  store i64 %292, i64* %10, align 8
  br label %293

293:                                              ; preds = %283, %276
  br label %294

294:                                              ; preds = %339, %293
  %295 = load i8*, i8** %5, align 8
  %296 = load i64, i64* %6, align 8
  %297 = getelementptr inbounds i8, i8* %295, i64 %296
  %298 = load i8, i8* %297, align 1
  %299 = sext i8 %298 to i32
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %337

301:                                              ; preds = %294
  %302 = load i8*, i8** %5, align 8
  %303 = load i64, i64* %6, align 8
  %304 = getelementptr inbounds i8, i8* %302, i64 %303
  %305 = load i8, i8* %304, align 1
  %306 = sext i8 %305 to i32
  %307 = load i8*, i8** @space, align 8
  %308 = getelementptr inbounds i8, i8* %307, i64 0
  %309 = load i8, i8* %308, align 1
  %310 = sext i8 %309 to i32
  %311 = icmp ne i32 %306, %310
  br i1 %311, label %312, label %337

312:                                              ; preds = %301
  %313 = load i8*, i8** %5, align 8
  %314 = load i64, i64* %6, align 8
  %315 = getelementptr inbounds i8, i8* %313, i64 %314
  %316 = load i8, i8* %315, align 1
  %317 = sext i8 %316 to i32
  %318 = load i8*, i8** @space, align 8
  %319 = getelementptr inbounds i8, i8* %318, i64 1
  %320 = load i8, i8* %319, align 1
  %321 = sext i8 %320 to i32
  %322 = icmp ne i32 %317, %321
  br i1 %322, label %323, label %337

323:                                              ; preds = %312
  %324 = load i8*, i8** %5, align 8
  %325 = load i64, i64* %6, align 8
  %326 = getelementptr inbounds i8, i8* %324, i64 %325
  %327 = load i8, i8* %326, align 1
  %328 = sext i8 %327 to i32
  %329 = icmp ne i32 %328, 44
  br i1 %329, label %330, label %337

330:                                              ; preds = %323
  %331 = load i8*, i8** %5, align 8
  %332 = load i64, i64* %6, align 8
  %333 = getelementptr inbounds i8, i8* %331, i64 %332
  %334 = load i8, i8* %333, align 1
  %335 = sext i8 %334 to i32
  %336 = icmp ne i32 %335, 46
  br label %337

337:                                              ; preds = %330, %323, %312, %301, %294
  %338 = phi i1 [ false, %323 ], [ false, %312 ], [ false, %301 ], [ false, %294 ], [ %336, %330 ]
  br i1 %338, label %339, label %342

339:                                              ; preds = %337
  %340 = load i64, i64* %6, align 8
  %341 = add i64 %340, 1
  store i64 %341, i64* %6, align 8
  br label %294

342:                                              ; preds = %337
  %343 = load i8*, i8** %5, align 8
  %344 = load i64, i64* %6, align 8
  %345 = getelementptr inbounds i8, i8* %343, i64 %344
  store i8* %345, i8** %14, align 8
  %346 = load i8*, i8** %5, align 8
  %347 = load i64, i64* %6, align 8
  %348 = getelementptr inbounds i8, i8* %346, i64 %347
  %349 = load i8, i8* %348, align 1
  %350 = sext i8 %349 to i32
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %357

352:                                              ; preds = %342
  %353 = load i8*, i8** %5, align 8
  %354 = load i64, i64* %6, align 8
  %355 = add i64 %354, 1
  store i64 %355, i64* %6, align 8
  %356 = getelementptr inbounds i8, i8* %353, i64 %354
  store i8 0, i8* %356, align 1
  br label %357

357:                                              ; preds = %352, %342
  %358 = load i8*, i8** %5, align 8
  %359 = load i64, i64* %10, align 8
  %360 = getelementptr inbounds i8, i8* %358, i64 %359
  %361 = call i32 @strtol(i8* %360, i8** %13, i32 0)
  %362 = sext i32 %361 to i64
  %363 = inttoptr i64 %362 to i8*
  %364 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 4
  %366 = load i8**, i8*** %365, align 8
  %367 = load i64, i64* %12, align 8
  %368 = add i64 %367, 1
  store i64 %368, i64* %12, align 8
  %369 = getelementptr inbounds i8*, i8** %366, i64 %367
  store i8* %363, i8** %369, align 8
  %370 = load i8*, i8** %13, align 8
  %371 = load i8*, i8** %14, align 8
  %372 = icmp ne i8* %370, %371
  br i1 %372, label %373, label %375

373:                                              ; preds = %357
  %374 = call i32 @luprint(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %487

375:                                              ; preds = %357
  br label %481

376:                                              ; preds = %103
  %377 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %378 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %377, i32 0, i32 2
  store i32 1, i32* %378, align 4
  %379 = load i64, i64* %6, align 8
  store i64 %379, i64* %9, align 8
  br label %380

380:                                              ; preds = %407, %376
  %381 = load i8*, i8** %5, align 8
  %382 = load i64, i64* %9, align 8
  %383 = getelementptr inbounds i8, i8* %381, i64 %382
  %384 = load i8, i8* %383, align 1
  %385 = sext i8 %384 to i32
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %410

387:                                              ; preds = %380
  %388 = load i8*, i8** %5, align 8
  %389 = load i64, i64* %9, align 8
  %390 = getelementptr inbounds i8, i8* %388, i64 %389
  %391 = load i8, i8* %390, align 1
  %392 = sext i8 %391 to i32
  %393 = icmp eq i32 %392, 46
  br i1 %393, label %401, label %394

394:                                              ; preds = %387
  %395 = load i8*, i8** %5, align 8
  %396 = load i64, i64* %9, align 8
  %397 = getelementptr inbounds i8, i8* %395, i64 %396
  %398 = load i8, i8* %397, align 1
  %399 = sext i8 %398 to i32
  %400 = icmp eq i32 %399, 44
  br i1 %400, label %401, label %406

401:                                              ; preds = %394, %387
  %402 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %403 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %402, i32 0, i32 2
  %404 = load i32, i32* %403, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %403, align 4
  br label %406

406:                                              ; preds = %401, %394
  br label %407

407:                                              ; preds = %406
  %408 = load i64, i64* %9, align 8
  %409 = add i64 %408, 1
  store i64 %409, i64* %9, align 8
  br label %380

410:                                              ; preds = %380
  %411 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %412 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %411, i32 0, i32 2
  %413 = load i32, i32* %412, align 4
  %414 = sext i32 %413 to i64
  %415 = mul i64 %414, 8
  %416 = trunc i64 %415 to i32
  %417 = call i64 @malloc(i32 %416)
  %418 = inttoptr i64 %417 to i8**
  %419 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %420 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %419, i32 0, i32 3
  store i8** %418, i8*** %420, align 8
  %421 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %422 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %421, i32 0, i32 3
  %423 = load i8**, i8*** %422, align 8
  %424 = icmp eq i8** %423, null
  br i1 %424, label %425, label %427

425:                                              ; preds = %410
  %426 = call i32 @luprint(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %487

427:                                              ; preds = %410
  %428 = load i8*, i8** %5, align 8
  %429 = load i64, i64* %6, align 8
  %430 = getelementptr inbounds i8, i8* %428, i64 %429
  %431 = call i8* @strtok(i8* %430, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i8* %431, i8** %15, align 8
  store i64 0, i64* %9, align 8
  br label %432

432:                                              ; preds = %455, %427
  %433 = load i64, i64* %9, align 8
  %434 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %435 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %434, i32 0, i32 2
  %436 = load i32, i32* %435, align 4
  %437 = sext i32 %436 to i64
  %438 = icmp ult i64 %433, %437
  br i1 %438, label %439, label %442

439:                                              ; preds = %432
  %440 = load i8*, i8** %15, align 8
  %441 = icmp ne i8* %440, null
  br label %442

442:                                              ; preds = %439, %432
  %443 = phi i1 [ false, %432 ], [ %441, %439 ]
  br i1 %443, label %444, label %458

444:                                              ; preds = %442
  %445 = load i8*, i8** %15, align 8
  %446 = call i32 @strtol(i8* %445, i8** %13, i32 0)
  %447 = sext i32 %446 to i64
  %448 = inttoptr i64 %447 to i8*
  %449 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %450 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %449, i32 0, i32 3
  %451 = load i8**, i8*** %450, align 8
  %452 = load i64, i64* %9, align 8
  %453 = getelementptr inbounds i8*, i8** %451, i64 %452
  store i8* %448, i8** %453, align 8
  %454 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i8* %454, i8** %15, align 8
  br label %455

455:                                              ; preds = %444
  %456 = load i64, i64* %9, align 8
  %457 = add i64 %456, 1
  store i64 %457, i64* %9, align 8
  br label %432

458:                                              ; preds = %442
  %459 = load i8*, i8** %15, align 8
  %460 = icmp ne i8* %459, null
  br i1 %460, label %468, label %461

461:                                              ; preds = %458
  %462 = load i64, i64* %9, align 8
  %463 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %464 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %463, i32 0, i32 2
  %465 = load i32, i32* %464, align 4
  %466 = sext i32 %465 to i64
  %467 = icmp ne i64 %462, %466
  br i1 %467, label %468, label %470

468:                                              ; preds = %461, %458
  %469 = call i32 @luprint(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0))
  br label %487

470:                                              ; preds = %461
  br label %481

471:                                              ; preds = %103
  %472 = load %struct.TYPE_7__*, %struct.TYPE_7__** @parse_cmd, align 8
  %473 = load i64, i64* %7, align 8
  %474 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %472, i64 %473
  %475 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %474, i32 0, i32 2
  %476 = load i32*, i32** %475, align 8
  %477 = load i64, i64* %8, align 8
  %478 = getelementptr inbounds i32, i32* %476, i64 %477
  %479 = load i32, i32* %478, align 4
  %480 = call i32 @uprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %479)
  br label %487

481:                                              ; preds = %470, %375, %258, %196
  br label %482

482:                                              ; preds = %481
  %483 = load i64, i64* %8, align 8
  %484 = add i64 %483, 1
  store i64 %484, i64* %8, align 8
  br label %71

485:                                              ; preds = %71
  %486 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %486, %struct.TYPE_6__** %3, align 8
  br label %490

487:                                              ; preds = %471, %468, %425, %373, %194, %120, %96
  %488 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %489 = call i32 @free_loc_cmd(%struct.TYPE_6__* %488)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %490

490:                                              ; preds = %487, %485, %49, %42
  %491 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %491
}

declare dso_local i64 @ARRAYSIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @luprint(i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i32 @luprintf(i8*, i8 signext) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @safe_strdup(i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @uprintf(i8*, i32) #1

declare dso_local i32 @free_loc_cmd(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
