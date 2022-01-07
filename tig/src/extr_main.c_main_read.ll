; ModuleID = '/home/carl/AnghaBench/tig/src/extr_main.c_main_read.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_main.c_main_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32, %struct.TYPE_2__*, %struct.main_state* }
%struct.TYPE_2__ = type { i32, %struct.commit* }
%struct.commit = type { i32*, i32, i32, i32, i32* }
%struct.main_state = type { i32, i8*, i64, %struct.commit, i64, %struct.graph* }
%struct.graph = type { i32 (%struct.graph*, i32*)*, i32 (%struct.graph*, i8*)*, i32 (%struct.graph*)* }
%struct.buffer = type { i8* }

@.str = private unnamed_addr constant [40 x i8] c"No revisions match the given arguments.\00", align 1
@LINE_COMMIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"commit \00", align 1
@LINE_MAIN_ANNOTATED = common dso_local global i32 0, align 4
@LINE_MAIN_COMMIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"Reflog: \00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Reflog message: \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"parent \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"author \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"    \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main_read(%struct.view* %0, %struct.buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca %struct.buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.main_state*, align 8
  %9 = alloca %struct.graph*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.commit*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.commit*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store %struct.buffer* %1, %struct.buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load %struct.view*, %struct.view** %5, align 8
  %21 = getelementptr inbounds %struct.view, %struct.view* %20, i32 0, i32 2
  %22 = load %struct.main_state*, %struct.main_state** %21, align 8
  store %struct.main_state* %22, %struct.main_state** %8, align 8
  %23 = load %struct.main_state*, %struct.main_state** %8, align 8
  %24 = getelementptr inbounds %struct.main_state, %struct.main_state* %23, i32 0, i32 5
  %25 = load %struct.graph*, %struct.graph** %24, align 8
  store %struct.graph* %25, %struct.graph** %9, align 8
  %26 = load %struct.main_state*, %struct.main_state** %8, align 8
  %27 = getelementptr inbounds %struct.main_state, %struct.main_state* %26, i32 0, i32 3
  store %struct.commit* %27, %struct.commit** %11, align 8
  %28 = load %struct.buffer*, %struct.buffer** %6, align 8
  %29 = icmp ne %struct.buffer* %28, null
  br i1 %29, label %95, label %30

30:                                               ; preds = %3
  %31 = load %struct.view*, %struct.view** %5, align 8
  %32 = load %struct.commit*, %struct.commit** %11, align 8
  %33 = call i32 @main_flush_commit(%struct.view* %31, %struct.commit* %32)
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.view*, %struct.view** %5, align 8
  %38 = call i64 @failed_to_load_initial_view(%struct.view* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %36, %30
  %43 = load %struct.view*, %struct.view** %5, align 8
  %44 = getelementptr inbounds %struct.view, %struct.view* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %81

47:                                               ; preds = %42
  %48 = load %struct.view*, %struct.view** %5, align 8
  %49 = getelementptr inbounds %struct.view, %struct.view* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load %struct.view*, %struct.view** %5, align 8
  %52 = getelementptr inbounds %struct.view, %struct.view* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load %struct.commit*, %struct.commit** %57, align 8
  store %struct.commit* %58, %struct.commit** %13, align 8
  %59 = load %struct.view*, %struct.view** %5, align 8
  %60 = getelementptr inbounds %struct.view, %struct.view* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load %struct.view*, %struct.view** %5, align 8
  %63 = getelementptr inbounds %struct.view, %struct.view* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load %struct.commit*, %struct.commit** %13, align 8
  %70 = getelementptr inbounds %struct.commit, %struct.commit* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %47
  %74 = load %struct.view*, %struct.view** %5, align 8
  %75 = getelementptr inbounds %struct.view, %struct.view* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %75, align 8
  %78 = load %struct.commit*, %struct.commit** %13, align 8
  %79 = call i32 @free(%struct.commit* %78)
  br label %80

80:                                               ; preds = %73, %47
  br label %81

81:                                               ; preds = %80, %42
  %82 = load %struct.main_state*, %struct.main_state** %8, align 8
  %83 = getelementptr inbounds %struct.main_state, %struct.main_state* %82, i32 0, i32 5
  %84 = load %struct.graph*, %struct.graph** %83, align 8
  %85 = icmp ne %struct.graph* %84, null
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load %struct.main_state*, %struct.main_state** %8, align 8
  %88 = getelementptr inbounds %struct.main_state, %struct.main_state* %87, i32 0, i32 5
  %89 = load %struct.graph*, %struct.graph** %88, align 8
  %90 = getelementptr inbounds %struct.graph, %struct.graph* %89, i32 0, i32 2
  %91 = load i32 (%struct.graph*)*, i32 (%struct.graph*)** %90, align 8
  %92 = load %struct.graph*, %struct.graph** %9, align 8
  %93 = call i32 %91(%struct.graph* %92)
  br label %94

94:                                               ; preds = %86, %81
  store i32 1, i32* %4, align 4
  br label %348

95:                                               ; preds = %3
  %96 = load %struct.buffer*, %struct.buffer** %6, align 8
  %97 = getelementptr inbounds %struct.buffer, %struct.buffer* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %12, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = call i32 @get_line_type(i8* %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @LINE_COMMIT, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %217

104:                                              ; preds = %95
  %105 = load %struct.main_state*, %struct.main_state** %8, align 8
  %106 = getelementptr inbounds %struct.main_state, %struct.main_state* %105, i32 0, i32 0
  store i32 1, i32* %106, align 8
  %107 = call i32 @STRING_SIZE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i8*, i8** %12, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8* %110, i8** %12, align 8
  %111 = load i8*, i8** %12, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 45
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %14, align 4
  br label %116

116:                                              ; preds = %129, %104
  %117 = load i8*, i8** %12, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load i8*, i8** %12, align 8
  %123 = load i8, i8* %122, align 1
  %124 = call i32 @isalnum(i8 signext %123)
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  br label %127

127:                                              ; preds = %121, %116
  %128 = phi i1 [ false, %116 ], [ %126, %121 ]
  br i1 %128, label %129, label %132

129:                                              ; preds = %127
  %130 = load i8*, i8** %12, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %12, align 8
  br label %116

132:                                              ; preds = %127
  %133 = load %struct.view*, %struct.view** %5, align 8
  %134 = load %struct.commit*, %struct.commit** %11, align 8
  %135 = call i32 @main_flush_commit(%struct.view* %133, %struct.commit* %134)
  %136 = load %struct.buffer*, %struct.buffer** %6, align 8
  %137 = load i8*, i8** %12, align 8
  %138 = call i8* @io_memchr(%struct.buffer* %136, i8* %137, i32 0)
  store i8* %138, i8** %15, align 8
  %139 = load %struct.main_state*, %struct.main_state** %8, align 8
  %140 = getelementptr inbounds %struct.main_state, %struct.main_state* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %132
  %144 = load i8*, i8** %12, align 8
  %145 = call i8* @strchr(i8* %144, i8 signext 32)
  store i8* %145, i8** %16, align 8
  %146 = load i8*, i8** %16, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load i8*, i8** %16, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  %151 = call i8* @strchr(i8* %150, i8 signext 32)
  br label %153

152:                                              ; preds = %143
  br label %153

153:                                              ; preds = %152, %148
  %154 = phi i8* [ %151, %148 ], [ null, %152 ]
  store i8* %154, i8** %17, align 8
  %155 = load i8*, i8** %17, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = load i8*, i8** %17, align 8
  store i8 0, i8* %158, align 1
  br label %159

159:                                              ; preds = %157, %153
  br label %160

160:                                              ; preds = %159, %132
  %161 = load %struct.view*, %struct.view** %5, align 8
  %162 = load %struct.main_state*, %struct.main_state** %8, align 8
  %163 = getelementptr inbounds %struct.main_state, %struct.main_state* %162, i32 0, i32 3
  %164 = load i8*, i8** %12, align 8
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @main_register_commit(%struct.view* %161, %struct.commit* %163, i8* %164, i32 %165)
  %167 = load i8*, i8** %15, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %216

169:                                              ; preds = %160
  %170 = load %struct.buffer*, %struct.buffer** %6, align 8
  %171 = load i8*, i8** %15, align 8
  %172 = call i8* @io_memchr(%struct.buffer* %170, i8* %171, i32 0)
  store i8* %172, i8** %18, align 8
  %173 = load i8*, i8** %15, align 8
  %174 = load %struct.commit*, %struct.commit** %11, align 8
  %175 = getelementptr inbounds %struct.commit, %struct.commit* %174, i32 0, i32 3
  %176 = load %struct.commit*, %struct.commit** %11, align 8
  %177 = getelementptr inbounds %struct.commit, %struct.commit* %176, i32 0, i32 2
  %178 = call i32 @parse_author_line(i8* %173, i32* %175, i32* %177)
  %179 = load %struct.main_state*, %struct.main_state** %8, align 8
  %180 = getelementptr inbounds %struct.main_state, %struct.main_state* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %169
  %184 = load %struct.graph*, %struct.graph** %9, align 8
  %185 = getelementptr inbounds %struct.graph, %struct.graph* %184, i32 0, i32 0
  %186 = load i32 (%struct.graph*, i32*)*, i32 (%struct.graph*, i32*)** %185, align 8
  %187 = load %struct.graph*, %struct.graph** %9, align 8
  %188 = load %struct.commit*, %struct.commit** %11, align 8
  %189 = getelementptr inbounds %struct.commit, %struct.commit* %188, i32 0, i32 1
  %190 = call i32 %186(%struct.graph* %187, i32* %189)
  br label %191

191:                                              ; preds = %183, %169
  %192 = load i8*, i8** %18, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %215

194:                                              ; preds = %191
  %195 = load %struct.buffer*, %struct.buffer** %6, align 8
  %196 = load i8*, i8** %18, align 8
  %197 = call i8* @io_memchr(%struct.buffer* %195, i8* %196, i32 0)
  store i8* %197, i8** %19, align 8
  %198 = load %struct.view*, %struct.view** %5, align 8
  %199 = load i8*, i8** %19, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %208

201:                                              ; preds = %194
  %202 = load i8*, i8** %19, align 8
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %201
  %207 = load i32, i32* @LINE_MAIN_ANNOTATED, align 4
  br label %210

208:                                              ; preds = %201, %194
  %209 = load i32, i32* @LINE_MAIN_COMMIT, align 4
  br label %210

210:                                              ; preds = %208, %206
  %211 = phi i32 [ %207, %206 ], [ %209, %208 ]
  %212 = load %struct.commit*, %struct.commit** %11, align 8
  %213 = load i8*, i8** %18, align 8
  %214 = call i32 @main_add_commit(%struct.view* %198, i32 %211, %struct.commit* %212, i8* %213, i32 0)
  br label %215

215:                                              ; preds = %210, %191
  br label %216

216:                                              ; preds = %215, %160
  store i32 1, i32* %4, align 4
  br label %348

217:                                              ; preds = %95
  %218 = load %struct.commit*, %struct.commit** %11, align 8
  %219 = getelementptr inbounds %struct.commit, %struct.commit* %218, i32 0, i32 4
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %217
  store i32 1, i32* %4, align 4
  br label %348

224:                                              ; preds = %217
  %225 = load i8*, i8** %12, align 8
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %224
  %230 = load %struct.main_state*, %struct.main_state** %8, align 8
  %231 = getelementptr inbounds %struct.main_state, %struct.main_state* %230, i32 0, i32 0
  store i32 0, i32* %231, align 8
  br label %232

232:                                              ; preds = %229, %224
  %233 = load i32, i32* %10, align 4
  switch i32 %233, label %296 [
    i32 129, label %234
    i32 128, label %245
    i32 130, label %257
    i32 131, label %273
  ]

234:                                              ; preds = %232
  %235 = load %struct.view*, %struct.view** %5, align 8
  %236 = load %struct.main_state*, %struct.main_state** %8, align 8
  %237 = load i8*, i8** %12, align 8
  %238 = call i32 @STRING_SIZE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8, i8* %237, i64 %239
  %241 = call i32 @main_add_reflog(%struct.view* %235, %struct.main_state* %236, i8* %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %244, label %243

243:                                              ; preds = %234
  store i32 0, i32* %4, align 4
  br label %348

244:                                              ; preds = %234
  br label %347

245:                                              ; preds = %232
  %246 = call i32 @STRING_SIZE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %247 = load i8*, i8** %12, align 8
  %248 = sext i32 %246 to i64
  %249 = getelementptr inbounds i8, i8* %247, i64 %248
  store i8* %249, i8** %12, align 8
  %250 = load %struct.main_state*, %struct.main_state** %8, align 8
  %251 = getelementptr inbounds %struct.main_state, %struct.main_state* %250, i32 0, i32 1
  %252 = load i8*, i8** %251, align 8
  %253 = load i8*, i8** %12, align 8
  %254 = load i8*, i8** %12, align 8
  %255 = call i32 @strlen(i8* %254)
  %256 = call i32 @string_ncopy(i8* %252, i8* %253, i32 %255)
  br label %347

257:                                              ; preds = %232
  %258 = load %struct.main_state*, %struct.main_state** %8, align 8
  %259 = getelementptr inbounds %struct.main_state, %struct.main_state* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %272

262:                                              ; preds = %257
  %263 = load %struct.graph*, %struct.graph** %9, align 8
  %264 = getelementptr inbounds %struct.graph, %struct.graph* %263, i32 0, i32 1
  %265 = load i32 (%struct.graph*, i8*)*, i32 (%struct.graph*, i8*)** %264, align 8
  %266 = load %struct.graph*, %struct.graph** %9, align 8
  %267 = load i8*, i8** %12, align 8
  %268 = call i32 @STRING_SIZE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8, i8* %267, i64 %269
  %271 = call i32 %265(%struct.graph* %266, i8* %270)
  br label %272

272:                                              ; preds = %262, %257
  br label %347

273:                                              ; preds = %232
  %274 = load i8*, i8** %12, align 8
  %275 = call i32 @STRING_SIZE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8, i8* %274, i64 %276
  %278 = load %struct.commit*, %struct.commit** %11, align 8
  %279 = getelementptr inbounds %struct.commit, %struct.commit* %278, i32 0, i32 3
  %280 = load %struct.commit*, %struct.commit** %11, align 8
  %281 = getelementptr inbounds %struct.commit, %struct.commit* %280, i32 0, i32 2
  %282 = call i32 @parse_author_line(i8* %277, i32* %279, i32* %281)
  %283 = load %struct.main_state*, %struct.main_state** %8, align 8
  %284 = getelementptr inbounds %struct.main_state, %struct.main_state* %283, i32 0, i32 2
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %295

287:                                              ; preds = %273
  %288 = load %struct.graph*, %struct.graph** %9, align 8
  %289 = getelementptr inbounds %struct.graph, %struct.graph* %288, i32 0, i32 0
  %290 = load i32 (%struct.graph*, i32*)*, i32 (%struct.graph*, i32*)** %289, align 8
  %291 = load %struct.graph*, %struct.graph** %9, align 8
  %292 = load %struct.commit*, %struct.commit** %11, align 8
  %293 = getelementptr inbounds %struct.commit, %struct.commit* %292, i32 0, i32 1
  %294 = call i32 %290(%struct.graph* %291, i32* %293)
  br label %295

295:                                              ; preds = %287, %273
  br label %347

296:                                              ; preds = %232
  %297 = load %struct.commit*, %struct.commit** %11, align 8
  %298 = getelementptr inbounds %struct.commit, %struct.commit* %297, i32 0, i32 0
  %299 = load i32*, i32** %298, align 8
  %300 = load i32, i32* %299, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %296
  br label %347

303:                                              ; preds = %296
  %304 = load %struct.main_state*, %struct.main_state** %8, align 8
  %305 = getelementptr inbounds %struct.main_state, %struct.main_state* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %303
  br label %347

309:                                              ; preds = %303
  %310 = load i8*, i8** %12, align 8
  %311 = call i32 @strncmp(i8* %310, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %309
  br label %347

314:                                              ; preds = %309
  %315 = load i8*, i8** %12, align 8
  %316 = getelementptr inbounds i8, i8* %315, i64 4
  store i8* %316, i8** %12, align 8
  br label %317

317:                                              ; preds = %322, %314
  %318 = load i8*, i8** %12, align 8
  %319 = load i8, i8* %318, align 1
  %320 = call i32 @isspace(i8 signext %319)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %325

322:                                              ; preds = %317
  %323 = load i8*, i8** %12, align 8
  %324 = getelementptr inbounds i8, i8* %323, i32 1
  store i8* %324, i8** %12, align 8
  br label %317

325:                                              ; preds = %317
  %326 = load i8*, i8** %12, align 8
  %327 = load i8, i8* %326, align 1
  %328 = sext i8 %327 to i32
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %325
  br label %347

331:                                              ; preds = %325
  %332 = load %struct.main_state*, %struct.main_state** %8, align 8
  %333 = getelementptr inbounds %struct.main_state, %struct.main_state* %332, i32 0, i32 1
  %334 = load i8*, i8** %333, align 8
  %335 = load i8, i8* %334, align 1
  %336 = icmp ne i8 %335, 0
  br i1 %336, label %337, label %341

337:                                              ; preds = %331
  %338 = load %struct.main_state*, %struct.main_state** %8, align 8
  %339 = getelementptr inbounds %struct.main_state, %struct.main_state* %338, i32 0, i32 1
  %340 = load i8*, i8** %339, align 8
  store i8* %340, i8** %12, align 8
  br label %341

341:                                              ; preds = %337, %331
  %342 = load %struct.view*, %struct.view** %5, align 8
  %343 = load i32, i32* @LINE_MAIN_COMMIT, align 4
  %344 = load %struct.commit*, %struct.commit** %11, align 8
  %345 = load i8*, i8** %12, align 8
  %346 = call i32 @main_add_commit(%struct.view* %342, i32 %343, %struct.commit* %344, i8* %345, i32 0)
  br label %347

347:                                              ; preds = %341, %330, %313, %308, %302, %295, %272, %245, %244
  store i32 1, i32* %4, align 4
  br label %348

348:                                              ; preds = %347, %243, %223, %216, %94
  %349 = load i32, i32* %4, align 4
  ret i32 %349
}

declare dso_local i32 @main_flush_commit(%struct.view*, %struct.commit*) #1

declare dso_local i64 @failed_to_load_initial_view(%struct.view*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @free(%struct.commit*) #1

declare dso_local i32 @get_line_type(i8*) #1

declare dso_local i32 @STRING_SIZE(i8*) #1

declare dso_local i32 @isalnum(i8 signext) #1

declare dso_local i8* @io_memchr(%struct.buffer*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @main_register_commit(%struct.view*, %struct.commit*, i8*, i32) #1

declare dso_local i32 @parse_author_line(i8*, i32*, i32*) #1

declare dso_local i32 @main_add_commit(%struct.view*, i32, %struct.commit*, i8*, i32) #1

declare dso_local i32 @main_add_reflog(%struct.view*, %struct.main_state*, i8*) #1

declare dso_local i32 @string_ncopy(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
