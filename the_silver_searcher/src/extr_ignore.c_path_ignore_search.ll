; ModuleID = '/home/carl/AnghaBench/the_silver_searcher/src/extr_ignore.c_path_ignore_search.c'
source_filename = "/home/carl/AnghaBench/the_silver_searcher/src/extr_ignore.c_path_ignore_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8**, i64, i32, i8**, i64, i64, i8**, i64, i8**, i64, i8**, i32 }

@.str = private unnamed_addr constant [55 x i8] c"file %s ignored because name matches static pattern %s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"file %s ignored because name matches slash static pattern %s\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"file %s ignored because path somewhere matches name %s\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"pattern %s doesn't match path %s\00", align 1
@fnmatch_flags = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [60 x i8] c"file %s ignored because name matches slash regex pattern %s\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"pattern %s doesn't match slash file %s\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"file %s not ignored because name matches regex pattern !%s\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"pattern !%s doesn't match file %s\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"file %s ignored because name matches regex pattern %s\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"pattern %s doesn't match file %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i8*)* @path_ignore_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @path_ignore_search(%struct.TYPE_3__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8**, i8*** %16, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @binary_search(i8* %14, i8** %17, i32 0, i64 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %3
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i8**, i8*** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @log_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %32)
  store i32 1, i32* %4, align 4
  br label %321

34:                                               ; preds = %3
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 46
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  br label %45

43:                                               ; preds = %34
  %44 = load i8*, i8** %6, align 8
  br label %45

45:                                               ; preds = %43, %40
  %46 = phi i8* [ %42, %40 ], [ %44, %43 ]
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @ag_asprintf(i8** %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %46, i8* %47)
  %49 = load i8*, i8** %8, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 11
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @strncmp(i8* %49, i32 %52, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %233

58:                                               ; preds = %45
  %59 = load i8*, i8** %8, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %59, i64 %63
  store i8* %64, i8** %11, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 47
  br i1 %69, label %70, label %73

70:                                               ; preds = %58
  %71 = load i8*, i8** %11, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %11, align 8
  br label %73

73:                                               ; preds = %70, %58
  %74 = load i8*, i8** %11, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i8**, i8*** %76, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @binary_search(i8* %74, i8** %77, i32 0, i64 %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %73
  %85 = load i8*, i8** %8, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i8**, i8*** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @log_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %85, i8* %92)
  %94 = load i8*, i8** %8, align 8
  %95 = call i32 @free(i8* %94)
  store i32 1, i32* %4, align 4
  br label %321

96:                                               ; preds = %73
  %97 = load i8*, i8** %11, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  %100 = load i8**, i8*** %99, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @binary_search(i8* %97, i8** %100, i32 0, i64 %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %96
  %108 = load i8*, i8** %11, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 3
  %111 = load i8**, i8*** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @log_debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i8* %108, i8* %115)
  %117 = load i8*, i8** %8, align 8
  %118 = call i32 @free(i8* %117)
  store i32 1, i32* %4, align 4
  br label %321

119:                                              ; preds = %96
  store i64 0, i64* %9, align 8
  br label %120

120:                                              ; preds = %188, %119
  %121 = load i64, i64* %9, align 8
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ult i64 %121, %124
  br i1 %125, label %126, label %191

126:                                              ; preds = %120
  %127 = load i8*, i8** %11, align 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i8**, i8*** %129, align 8
  %131 = load i64, i64* %9, align 8
  %132 = getelementptr inbounds i8*, i8** %130, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = call i8* @strstr(i8* %127, i8* %133)
  store i8* %134, i8** %12, align 8
  %135 = load i8*, i8** %12, align 8
  %136 = load i8*, i8** %11, align 8
  %137 = icmp eq i8* %135, %136
  br i1 %137, label %147, label %138

138:                                              ; preds = %126
  %139 = load i8*, i8** %12, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %179

141:                                              ; preds = %138
  %142 = load i8*, i8** %12, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 -1
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 47
  br i1 %146, label %147, label %179

147:                                              ; preds = %141, %126
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i8**, i8*** %149, align 8
  %151 = load i64, i64* %9, align 8
  %152 = getelementptr inbounds i8*, i8** %150, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @strlen(i8* %153)
  %155 = load i8*, i8** %12, align 8
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds i8, i8* %155, i64 %156
  store i8* %157, i8** %12, align 8
  %158 = load i8*, i8** %12, align 8
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %147
  %163 = load i8*, i8** %12, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 47
  br i1 %166, label %167, label %178

167:                                              ; preds = %162, %147
  %168 = load i8*, i8** %11, align 8
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = load i8**, i8*** %170, align 8
  %172 = load i64, i64* %9, align 8
  %173 = getelementptr inbounds i8*, i8** %171, i64 %172
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @log_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* %168, i8* %174)
  %176 = load i8*, i8** %8, align 8
  %177 = call i32 @free(i8* %176)
  store i32 1, i32* %4, align 4
  br label %321

178:                                              ; preds = %162
  br label %179

179:                                              ; preds = %178, %141, %138
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  %182 = load i8**, i8*** %181, align 8
  %183 = load i64, i64* %9, align 8
  %184 = getelementptr inbounds i8*, i8** %182, i64 %183
  %185 = load i8*, i8** %184, align 8
  %186 = load i8*, i8** %11, align 8
  %187 = call i32 @log_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %185, i8* %186)
  br label %188

188:                                              ; preds = %179
  %189 = load i64, i64* %9, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %9, align 8
  br label %120

191:                                              ; preds = %120
  store i64 0, i64* %9, align 8
  br label %192

192:                                              ; preds = %229, %191
  %193 = load i64, i64* %9, align 8
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 5
  %196 = load i64, i64* %195, align 8
  %197 = icmp ult i64 %193, %196
  br i1 %197, label %198, label %232

198:                                              ; preds = %192
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 6
  %201 = load i8**, i8*** %200, align 8
  %202 = load i64, i64* %9, align 8
  %203 = getelementptr inbounds i8*, i8** %201, i64 %202
  %204 = load i8*, i8** %203, align 8
  %205 = load i8*, i8** %11, align 8
  %206 = load i32, i32* @fnmatch_flags, align 4
  %207 = call i64 @fnmatch(i8* %204, i8* %205, i32 %206)
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %220

209:                                              ; preds = %198
  %210 = load i8*, i8** %11, align 8
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 6
  %213 = load i8**, i8*** %212, align 8
  %214 = load i64, i64* %9, align 8
  %215 = getelementptr inbounds i8*, i8** %213, i64 %214
  %216 = load i8*, i8** %215, align 8
  %217 = call i32 @log_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i8* %210, i8* %216)
  %218 = load i8*, i8** %8, align 8
  %219 = call i32 @free(i8* %218)
  store i32 1, i32* %4, align 4
  br label %321

220:                                              ; preds = %198
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 6
  %223 = load i8**, i8*** %222, align 8
  %224 = load i64, i64* %9, align 8
  %225 = getelementptr inbounds i8*, i8** %223, i64 %224
  %226 = load i8*, i8** %225, align 8
  %227 = load i8*, i8** %11, align 8
  %228 = call i32 @log_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* %226, i8* %227)
  br label %229

229:                                              ; preds = %220
  %230 = load i64, i64* %9, align 8
  %231 = add i64 %230, 1
  store i64 %231, i64* %9, align 8
  br label %192

232:                                              ; preds = %192
  br label %233

233:                                              ; preds = %232, %45
  store i64 0, i64* %9, align 8
  br label %234

234:                                              ; preds = %271, %233
  %235 = load i64, i64* %9, align 8
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 7
  %238 = load i64, i64* %237, align 8
  %239 = icmp ult i64 %235, %238
  br i1 %239, label %240, label %274

240:                                              ; preds = %234
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 8
  %243 = load i8**, i8*** %242, align 8
  %244 = load i64, i64* %9, align 8
  %245 = getelementptr inbounds i8*, i8** %243, i64 %244
  %246 = load i8*, i8** %245, align 8
  %247 = load i8*, i8** %7, align 8
  %248 = load i32, i32* @fnmatch_flags, align 4
  %249 = call i64 @fnmatch(i8* %246, i8* %247, i32 %248)
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %262

251:                                              ; preds = %240
  %252 = load i8*, i8** %7, align 8
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 8
  %255 = load i8**, i8*** %254, align 8
  %256 = load i64, i64* %9, align 8
  %257 = getelementptr inbounds i8*, i8** %255, i64 %256
  %258 = load i8*, i8** %257, align 8
  %259 = call i32 @log_debug(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i8* %252, i8* %258)
  %260 = load i8*, i8** %8, align 8
  %261 = call i32 @free(i8* %260)
  store i32 0, i32* %4, align 4
  br label %321

262:                                              ; preds = %240
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 8
  %265 = load i8**, i8*** %264, align 8
  %266 = load i64, i64* %9, align 8
  %267 = getelementptr inbounds i8*, i8** %265, i64 %266
  %268 = load i8*, i8** %267, align 8
  %269 = load i8*, i8** %7, align 8
  %270 = call i32 @log_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i8* %268, i8* %269)
  br label %271

271:                                              ; preds = %262
  %272 = load i64, i64* %9, align 8
  %273 = add i64 %272, 1
  store i64 %273, i64* %9, align 8
  br label %234

274:                                              ; preds = %234
  store i64 0, i64* %9, align 8
  br label %275

275:                                              ; preds = %312, %274
  %276 = load i64, i64* %9, align 8
  %277 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 9
  %279 = load i64, i64* %278, align 8
  %280 = icmp ult i64 %276, %279
  br i1 %280, label %281, label %315

281:                                              ; preds = %275
  %282 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 10
  %284 = load i8**, i8*** %283, align 8
  %285 = load i64, i64* %9, align 8
  %286 = getelementptr inbounds i8*, i8** %284, i64 %285
  %287 = load i8*, i8** %286, align 8
  %288 = load i8*, i8** %7, align 8
  %289 = load i32, i32* @fnmatch_flags, align 4
  %290 = call i64 @fnmatch(i8* %287, i8* %288, i32 %289)
  %291 = icmp eq i64 %290, 0
  br i1 %291, label %292, label %303

292:                                              ; preds = %281
  %293 = load i8*, i8** %7, align 8
  %294 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i32 0, i32 10
  %296 = load i8**, i8*** %295, align 8
  %297 = load i64, i64* %9, align 8
  %298 = getelementptr inbounds i8*, i8** %296, i64 %297
  %299 = load i8*, i8** %298, align 8
  %300 = call i32 @log_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i8* %293, i8* %299)
  %301 = load i8*, i8** %8, align 8
  %302 = call i32 @free(i8* %301)
  store i32 1, i32* %4, align 4
  br label %321

303:                                              ; preds = %281
  %304 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i32 0, i32 10
  %306 = load i8**, i8*** %305, align 8
  %307 = load i64, i64* %9, align 8
  %308 = getelementptr inbounds i8*, i8** %306, i64 %307
  %309 = load i8*, i8** %308, align 8
  %310 = load i8*, i8** %7, align 8
  %311 = call i32 @log_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* %309, i8* %310)
  br label %312

312:                                              ; preds = %303
  %313 = load i64, i64* %9, align 8
  %314 = add i64 %313, 1
  store i64 %314, i64* %9, align 8
  br label %275

315:                                              ; preds = %275
  %316 = load i8*, i8** %8, align 8
  %317 = call i32 @ackmate_dir_match(i8* %316)
  store i32 %317, i32* %13, align 4
  %318 = load i8*, i8** %8, align 8
  %319 = call i32 @free(i8* %318)
  %320 = load i32, i32* %13, align 4
  store i32 %320, i32* %4, align 4
  br label %321

321:                                              ; preds = %315, %292, %251, %209, %167, %107, %84, %24
  %322 = load i32, i32* %4, align 4
  ret i32 %322
}

declare dso_local i32 @binary_search(i8*, i8**, i32, i64) #1

declare dso_local i32 @log_debug(i8*, i8*, i8*) #1

declare dso_local i32 @ag_asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @fnmatch(i8*, i8*, i32) #1

declare dso_local i32 @ackmate_dir_match(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
