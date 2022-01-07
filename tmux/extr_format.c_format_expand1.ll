; ModuleID = '/home/carl/AnghaBench/tmux/extr_format.c_format_expand1.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format.c_format_expand1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_tree = type { i64, i32, i32 }
%struct.tm = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FORMAT_LOOP_LIMIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"expanding format: %s\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"format is too long\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"after time expanded: %s\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"found #(): %s\00", align 1
@FORMAT_NOJOBS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"#() is disabled\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"#() result: %s\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"found #{}: %.*s\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"found #%c\00", align 1
@format_upper = common dso_local global i8** null, align 8
@format_lower = common dso_local global i8** null, align 8
@.str.10 = private unnamed_addr constant [14 x i8] c"found #%c: %s\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"result is: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.format_tree*, i8*, i32)* @format_expand1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_expand1(%struct.format_tree* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.format_tree*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.tm*, align 8
  %20 = alloca [8192 x i8], align 16
  store %struct.format_tree* %0, %struct.format_tree** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %3
  %29 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** %4, align 8
  br label %349

30:                                               ; preds = %23
  %31 = load %struct.format_tree*, %struct.format_tree** %5, align 8
  %32 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @FORMAT_LOOP_LIMIT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %37, i8** %4, align 8
  br label %349

38:                                               ; preds = %30
  %39 = load %struct.format_tree*, %struct.format_tree** %5, align 8
  %40 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.format_tree*, %struct.format_tree** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %38
  %49 = load %struct.format_tree*, %struct.format_tree** %5, align 8
  %50 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %49, i32 0, i32 2
  %51 = call %struct.tm* @localtime(i32* %50)
  store %struct.tm* %51, %struct.tm** %19, align 8
  %52 = getelementptr inbounds [8192 x i8], [8192 x i8]* %20, i64 0, i64 0
  %53 = load i8*, i8** %6, align 8
  %54 = load %struct.tm*, %struct.tm** %19, align 8
  %55 = call i64 @strftime(i8* %52, i32 8192, i8* %53, %struct.tm* %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load %struct.format_tree*, %struct.format_tree** %5, align 8
  %59 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %60 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %60, i8** %4, align 8
  br label %349

61:                                               ; preds = %48
  %62 = load %struct.format_tree*, %struct.format_tree** %5, align 8
  %63 = call i64 @format_logging(%struct.format_tree* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = getelementptr inbounds [8192 x i8], [8192 x i8]* %20, i64 0, i64 0
  %67 = load i8*, i8** %6, align 8
  %68 = call i64 @strcmp(i8* %66, i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.format_tree*, %struct.format_tree** %5, align 8
  %72 = getelementptr inbounds [8192 x i8], [8192 x i8]* %20, i64 0, i64 0
  %73 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %70, %65, %61
  %75 = getelementptr inbounds [8192 x i8], [8192 x i8]* %20, i64 0, i64 0
  store i8* %75, i8** %6, align 8
  br label %76

76:                                               ; preds = %74, %38
  store i64 64, i64* %14, align 8
  %77 = load i64, i64* %14, align 8
  %78 = call i8* @xmalloc(i64 %77)
  store i8* %78, i8** %8, align 8
  store i64 0, i64* %13, align 8
  br label %79

79:                                               ; preds = %335, %311, %262, %242, %202, %101, %76
  %80 = load i8*, i8** %6, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %337

84:                                               ; preds = %79
  %85 = load i8*, i8** %6, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 35
  br i1 %88, label %89, label %109

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %95, %89
  %91 = load i64, i64* %14, align 8
  %92 = load i64, i64* %13, align 8
  %93 = sub i64 %91, %92
  %94 = icmp ult i64 %93, 2
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load i8*, i8** %8, align 8
  %97 = load i64, i64* %14, align 8
  %98 = call i8* @xreallocarray(i8* %96, i32 2, i64 %97)
  store i8* %98, i8** %8, align 8
  %99 = load i64, i64* %14, align 8
  %100 = mul i64 %99, 2
  store i64 %100, i64* %14, align 8
  br label %90

101:                                              ; preds = %90
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %6, align 8
  %104 = load i8, i8* %102, align 1
  %105 = load i8*, i8** %8, align 8
  %106 = load i64, i64* %13, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %13, align 8
  %108 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8 %104, i8* %108, align 1
  br label %79

109:                                              ; preds = %84
  %110 = load i8*, i8** %6, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %6, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %6, align 8
  %114 = load i8, i8* %112, align 1
  %115 = sext i8 %114 to i32
  store i32 %115, i32* %17, align 4
  %116 = load i32, i32* %17, align 4
  switch i32 %116, label %269 [
    i32 40, label %117
    i32 123, label %218
    i32 125, label %247
    i32 35, label %247
    i32 44, label %247
  ]

117:                                              ; preds = %109
  store i32 1, i32* %18, align 4
  %118 = load i8*, i8** %6, align 8
  store i8* %118, i8** %11, align 8
  br label %119

119:                                              ; preds = %143, %117
  %120 = load i8*, i8** %11, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %146

124:                                              ; preds = %119
  %125 = load i8*, i8** %11, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 40
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32, i32* %18, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %18, align 4
  br label %132

132:                                              ; preds = %129, %124
  %133 = load i8*, i8** %11, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 41
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load i32, i32* %18, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %18, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %137
  br label %146

142:                                              ; preds = %137, %132
  br label %143

143:                                              ; preds = %142
  %144 = load i8*, i8** %11, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %11, align 8
  br label %119

146:                                              ; preds = %141, %119
  %147 = load i8*, i8** %11, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp ne i32 %149, 41
  br i1 %150, label %154, label %151

151:                                              ; preds = %146
  %152 = load i32, i32* %18, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %151, %146
  br label %336

155:                                              ; preds = %151
  %156 = load i8*, i8** %11, align 8
  %157 = load i8*, i8** %6, align 8
  %158 = ptrtoint i8* %156 to i64
  %159 = ptrtoint i8* %157 to i64
  %160 = sub i64 %158, %159
  store i64 %160, i64* %15, align 8
  %161 = load i8*, i8** %6, align 8
  %162 = load i64, i64* %15, align 8
  %163 = call i8* @xstrndup(i8* %161, i64 %162)
  store i8* %163, i8** %10, align 8
  %164 = load %struct.format_tree*, %struct.format_tree** %5, align 8
  %165 = load i8*, i8** %10, align 8
  %166 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %164, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %165)
  %167 = load %struct.format_tree*, %struct.format_tree** %5, align 8
  %168 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @FORMAT_NOJOBS, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %155
  %174 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %174, i8** %9, align 8
  %175 = load %struct.format_tree*, %struct.format_tree** %5, align 8
  %176 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %175, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %184

177:                                              ; preds = %155
  %178 = load %struct.format_tree*, %struct.format_tree** %5, align 8
  %179 = load i8*, i8** %10, align 8
  %180 = call i8* @format_job_get(%struct.format_tree* %178, i8* %179)
  store i8* %180, i8** %9, align 8
  %181 = load %struct.format_tree*, %struct.format_tree** %5, align 8
  %182 = load i8*, i8** %9, align 8
  %183 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %181, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %182)
  br label %184

184:                                              ; preds = %177, %173
  %185 = load i8*, i8** %10, align 8
  %186 = call i32 @free(i8* %185)
  %187 = load i8*, i8** %9, align 8
  %188 = call i64 @strlen(i8* %187)
  store i64 %188, i64* %16, align 8
  br label %189

189:                                              ; preds = %196, %184
  %190 = load i64, i64* %14, align 8
  %191 = load i64, i64* %13, align 8
  %192 = sub i64 %190, %191
  %193 = load i64, i64* %16, align 8
  %194 = add i64 %193, 1
  %195 = icmp ult i64 %192, %194
  br i1 %195, label %196, label %202

196:                                              ; preds = %189
  %197 = load i8*, i8** %8, align 8
  %198 = load i64, i64* %14, align 8
  %199 = call i8* @xreallocarray(i8* %197, i32 2, i64 %198)
  store i8* %199, i8** %8, align 8
  %200 = load i64, i64* %14, align 8
  %201 = mul i64 %200, 2
  store i64 %201, i64* %14, align 8
  br label %189

202:                                              ; preds = %189
  %203 = load i8*, i8** %8, align 8
  %204 = load i64, i64* %13, align 8
  %205 = getelementptr inbounds i8, i8* %203, i64 %204
  %206 = load i8*, i8** %9, align 8
  %207 = load i64, i64* %16, align 8
  %208 = call i32 @memcpy(i8* %205, i8* %206, i64 %207)
  %209 = load i64, i64* %16, align 8
  %210 = load i64, i64* %13, align 8
  %211 = add i64 %210, %209
  store i64 %211, i64* %13, align 8
  %212 = load i8*, i8** %9, align 8
  %213 = call i32 @free(i8* %212)
  %214 = load i64, i64* %15, align 8
  %215 = add i64 %214, 1
  %216 = load i8*, i8** %6, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 %215
  store i8* %217, i8** %6, align 8
  br label %79

218:                                              ; preds = %109
  %219 = load i8*, i8** %6, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 -2
  %221 = call i8* @format_skip(i8* %220, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i8* %221, i8** %11, align 8
  %222 = load i8*, i8** %11, align 8
  %223 = icmp eq i8* %222, null
  br i1 %223, label %224, label %225

224:                                              ; preds = %218
  br label %336

225:                                              ; preds = %218
  %226 = load i8*, i8** %11, align 8
  %227 = load i8*, i8** %6, align 8
  %228 = ptrtoint i8* %226 to i64
  %229 = ptrtoint i8* %227 to i64
  %230 = sub i64 %228, %229
  store i64 %230, i64* %15, align 8
  %231 = load %struct.format_tree*, %struct.format_tree** %5, align 8
  %232 = load i64, i64* %15, align 8
  %233 = trunc i64 %232 to i32
  %234 = load i8*, i8** %6, align 8
  %235 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %231, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %233, i8* %234)
  %236 = load %struct.format_tree*, %struct.format_tree** %5, align 8
  %237 = load i8*, i8** %6, align 8
  %238 = load i64, i64* %15, align 8
  %239 = call i32 @format_replace(%struct.format_tree* %236, i8* %237, i64 %238, i8** %8, i64* %14, i64* %13)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %225
  br label %336

242:                                              ; preds = %225
  %243 = load i64, i64* %15, align 8
  %244 = add i64 %243, 1
  %245 = load i8*, i8** %6, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 %244
  store i8* %246, i8** %6, align 8
  br label %79

247:                                              ; preds = %109, %109, %109
  %248 = load %struct.format_tree*, %struct.format_tree** %5, align 8
  %249 = load i32, i32* %17, align 4
  %250 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %248, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %249)
  br label %251

251:                                              ; preds = %256, %247
  %252 = load i64, i64* %14, align 8
  %253 = load i64, i64* %13, align 8
  %254 = sub i64 %252, %253
  %255 = icmp ult i64 %254, 2
  br i1 %255, label %256, label %262

256:                                              ; preds = %251
  %257 = load i8*, i8** %8, align 8
  %258 = load i64, i64* %14, align 8
  %259 = call i8* @xreallocarray(i8* %257, i32 2, i64 %258)
  store i8* %259, i8** %8, align 8
  %260 = load i64, i64* %14, align 8
  %261 = mul i64 %260, 2
  store i64 %261, i64* %14, align 8
  br label %251

262:                                              ; preds = %251
  %263 = load i32, i32* %17, align 4
  %264 = trunc i32 %263 to i8
  %265 = load i8*, i8** %8, align 8
  %266 = load i64, i64* %13, align 8
  %267 = add i64 %266, 1
  store i64 %267, i64* %13, align 8
  %268 = getelementptr inbounds i8, i8* %265, i64 %266
  store i8 %264, i8* %268, align 1
  br label %79

269:                                              ; preds = %109
  store i8* null, i8** %12, align 8
  %270 = load i32, i32* %17, align 4
  %271 = icmp sge i32 %270, 65
  br i1 %271, label %272, label %282

272:                                              ; preds = %269
  %273 = load i32, i32* %17, align 4
  %274 = icmp sle i32 %273, 90
  br i1 %274, label %275, label %282

275:                                              ; preds = %272
  %276 = load i8**, i8*** @format_upper, align 8
  %277 = load i32, i32* %17, align 4
  %278 = sub nsw i32 %277, 65
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8*, i8** %276, i64 %279
  %281 = load i8*, i8** %280, align 8
  store i8* %281, i8** %12, align 8
  br label %296

282:                                              ; preds = %272, %269
  %283 = load i32, i32* %17, align 4
  %284 = icmp sge i32 %283, 97
  br i1 %284, label %285, label %295

285:                                              ; preds = %282
  %286 = load i32, i32* %17, align 4
  %287 = icmp sle i32 %286, 122
  br i1 %287, label %288, label %295

288:                                              ; preds = %285
  %289 = load i8**, i8*** @format_lower, align 8
  %290 = load i32, i32* %17, align 4
  %291 = sub nsw i32 %290, 97
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8*, i8** %289, i64 %292
  %294 = load i8*, i8** %293, align 8
  store i8* %294, i8** %12, align 8
  br label %295

295:                                              ; preds = %288, %285, %282
  br label %296

296:                                              ; preds = %295, %275
  %297 = load i8*, i8** %12, align 8
  %298 = icmp eq i8* %297, null
  br i1 %298, label %299, label %322

299:                                              ; preds = %296
  br label %300

300:                                              ; preds = %305, %299
  %301 = load i64, i64* %14, align 8
  %302 = load i64, i64* %13, align 8
  %303 = sub i64 %301, %302
  %304 = icmp ult i64 %303, 3
  br i1 %304, label %305, label %311

305:                                              ; preds = %300
  %306 = load i8*, i8** %8, align 8
  %307 = load i64, i64* %14, align 8
  %308 = call i8* @xreallocarray(i8* %306, i32 2, i64 %307)
  store i8* %308, i8** %8, align 8
  %309 = load i64, i64* %14, align 8
  %310 = mul i64 %309, 2
  store i64 %310, i64* %14, align 8
  br label %300

311:                                              ; preds = %300
  %312 = load i8*, i8** %8, align 8
  %313 = load i64, i64* %13, align 8
  %314 = add i64 %313, 1
  store i64 %314, i64* %13, align 8
  %315 = getelementptr inbounds i8, i8* %312, i64 %313
  store i8 35, i8* %315, align 1
  %316 = load i32, i32* %17, align 4
  %317 = trunc i32 %316 to i8
  %318 = load i8*, i8** %8, align 8
  %319 = load i64, i64* %13, align 8
  %320 = add i64 %319, 1
  store i64 %320, i64* %13, align 8
  %321 = getelementptr inbounds i8, i8* %318, i64 %319
  store i8 %317, i8* %321, align 1
  br label %79

322:                                              ; preds = %296
  %323 = load i8*, i8** %12, align 8
  %324 = call i64 @strlen(i8* %323)
  store i64 %324, i64* %15, align 8
  %325 = load %struct.format_tree*, %struct.format_tree** %5, align 8
  %326 = load i32, i32* %17, align 4
  %327 = load i8*, i8** %12, align 8
  %328 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %325, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %326, i8* %327)
  %329 = load %struct.format_tree*, %struct.format_tree** %5, align 8
  %330 = load i8*, i8** %12, align 8
  %331 = load i64, i64* %15, align 8
  %332 = call i32 @format_replace(%struct.format_tree* %329, i8* %330, i64 %331, i8** %8, i64* %14, i64* %13)
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %322
  br label %336

335:                                              ; preds = %322
  br label %79

336:                                              ; preds = %334, %241, %224, %154
  br label %337

337:                                              ; preds = %336, %79
  %338 = load i8*, i8** %8, align 8
  %339 = load i64, i64* %13, align 8
  %340 = getelementptr inbounds i8, i8* %338, i64 %339
  store i8 0, i8* %340, align 1
  %341 = load %struct.format_tree*, %struct.format_tree** %5, align 8
  %342 = load i8*, i8** %8, align 8
  %343 = call i32 (%struct.format_tree*, i8*, ...) @format_log(%struct.format_tree* %341, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %342)
  %344 = load %struct.format_tree*, %struct.format_tree** %5, align 8
  %345 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = add nsw i64 %346, -1
  store i64 %347, i64* %345, align 8
  %348 = load i8*, i8** %8, align 8
  store i8* %348, i8** %4, align 8
  br label %349

349:                                              ; preds = %337, %57, %36, %28
  %350 = load i8*, i8** %4, align 8
  ret i8* %350
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @format_log(%struct.format_tree*, i8*, ...) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i64 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i64 @format_logging(%struct.format_tree*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i8* @xreallocarray(i8*, i32, i64) #1

declare dso_local i8* @xstrndup(i8*, i64) #1

declare dso_local i8* @format_job_get(%struct.format_tree*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @format_skip(i8*, i8*) #1

declare dso_local i32 @format_replace(%struct.format_tree*, i8*, i64, i8**, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
