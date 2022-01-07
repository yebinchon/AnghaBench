; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/port/extr_getopt.c_process_long_option.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/port/extr_getopt.c_process_long_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i64*, i64 }
%struct._getopt_data = type { i8*, i64, i64, i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s: option '%s%s' is ambiguous\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"%s: option '%s%s' is ambiguous; possibilities:\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" '%s%s'\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"%s: unrecognized option '%s%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"%s: option '%s%s' doesn't allow an argument\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"%s: option '%s%s' requires an argument\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*, %struct.option*, i32*, i32, %struct._getopt_data*, i32, i8*)* @process_long_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_long_option(i32 %0, i8** %1, i8* %2, %struct.option* %3, i32* %4, i32 %5, %struct._getopt_data* %6, i32 %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.option*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct._getopt_data*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.option*, align 8
  %23 = alloca %struct.option*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i8** %1, i8*** %12, align 8
  store i8* %2, i8** %13, align 8
  store %struct.option* %3, %struct.option** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store %struct._getopt_data* %6, %struct._getopt_data** %17, align 8
  store i32 %7, i32* %18, align 4
  store i8* %8, i8** %19, align 8
  store %struct.option* null, %struct.option** %23, align 8
  %30 = load %struct._getopt_data*, %struct._getopt_data** %17, align 8
  %31 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %20, align 8
  br label %33

33:                                               ; preds = %46, %9
  %34 = load i8*, i8** %20, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i8*, i8** %20, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 61
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi i1 [ false, %33 ], [ %42, %38 ]
  br i1 %44, label %45, label %49

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %45
  %47 = load i8*, i8** %20, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %20, align 8
  br label %33

49:                                               ; preds = %43
  %50 = load i8*, i8** %20, align 8
  %51 = load %struct._getopt_data*, %struct._getopt_data** %17, align 8
  %52 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = ptrtoint i8* %50 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  store i64 %56, i64* %21, align 8
  %57 = load %struct.option*, %struct.option** %14, align 8
  store %struct.option* %57, %struct.option** %22, align 8
  store i32 0, i32* %24, align 4
  br label %58

58:                                               ; preds = %84, %49
  %59 = load %struct.option*, %struct.option** %22, align 8
  %60 = getelementptr inbounds %struct.option, %struct.option* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %89

63:                                               ; preds = %58
  %64 = load %struct.option*, %struct.option** %22, align 8
  %65 = getelementptr inbounds %struct.option, %struct.option* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct._getopt_data*, %struct._getopt_data** %17, align 8
  %68 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i64, i64* %21, align 8
  %71 = call i32 @strncmp(i8* %66, i8* %69, i64 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %63
  %74 = load i64, i64* %21, align 8
  %75 = load %struct.option*, %struct.option** %22, align 8
  %76 = getelementptr inbounds %struct.option, %struct.option* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @strlen(i8* %77)
  %79 = icmp eq i64 %74, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load %struct.option*, %struct.option** %22, align 8
  store %struct.option* %81, %struct.option** %23, align 8
  %82 = load i32, i32* %24, align 4
  store i32 %82, i32* %25, align 4
  br label %89

83:                                               ; preds = %73, %63
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.option*, %struct.option** %22, align 8
  %86 = getelementptr inbounds %struct.option, %struct.option* %85, i32 1
  store %struct.option* %86, %struct.option** %22, align 8
  %87 = load i32, i32* %24, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %24, align 4
  br label %58

89:                                               ; preds = %80, %58
  %90 = load %struct.option*, %struct.option** %23, align 8
  %91 = icmp eq %struct.option* %90, null
  br i1 %91, label %92, label %287

92:                                               ; preds = %89
  store i8* null, i8** %26, align 8
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 -1, i32* %29, align 4
  %93 = load %struct.option*, %struct.option** %14, align 8
  store %struct.option* %93, %struct.option** %22, align 8
  store i32 0, i32* %25, align 4
  br label %94

94:                                               ; preds = %192, %92
  %95 = load %struct.option*, %struct.option** %22, align 8
  %96 = getelementptr inbounds %struct.option, %struct.option* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %197

99:                                               ; preds = %94
  %100 = load %struct.option*, %struct.option** %22, align 8
  %101 = getelementptr inbounds %struct.option, %struct.option* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct._getopt_data*, %struct._getopt_data** %17, align 8
  %104 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load i64, i64* %21, align 8
  %107 = call i32 @strncmp(i8* %102, i8* %105, i64 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %191, label %109

109:                                              ; preds = %99
  %110 = load %struct.option*, %struct.option** %23, align 8
  %111 = icmp eq %struct.option* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load %struct.option*, %struct.option** %22, align 8
  store %struct.option* %113, %struct.option** %23, align 8
  %114 = load i32, i32* %25, align 4
  store i32 %114, i32* %29, align 4
  br label %190

115:                                              ; preds = %109
  %116 = load i32, i32* %16, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %142, label %118

118:                                              ; preds = %115
  %119 = load %struct.option*, %struct.option** %23, align 8
  %120 = getelementptr inbounds %struct.option, %struct.option* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.option*, %struct.option** %22, align 8
  %123 = getelementptr inbounds %struct.option, %struct.option* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %121, %124
  br i1 %125, label %142, label %126

126:                                              ; preds = %118
  %127 = load %struct.option*, %struct.option** %23, align 8
  %128 = getelementptr inbounds %struct.option, %struct.option* %127, i32 0, i32 2
  %129 = load i64*, i64** %128, align 8
  %130 = load %struct.option*, %struct.option** %22, align 8
  %131 = getelementptr inbounds %struct.option, %struct.option* %130, i32 0, i32 2
  %132 = load i64*, i64** %131, align 8
  %133 = icmp ne i64* %129, %132
  br i1 %133, label %142, label %134

134:                                              ; preds = %126
  %135 = load %struct.option*, %struct.option** %23, align 8
  %136 = getelementptr inbounds %struct.option, %struct.option* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.option*, %struct.option** %22, align 8
  %139 = getelementptr inbounds %struct.option, %struct.option* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %137, %140
  br i1 %141, label %142, label %189

142:                                              ; preds = %134, %126, %118, %115
  %143 = load i32, i32* %28, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %188, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %18, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  store i32 1, i32* %28, align 4
  br label %179

149:                                              ; preds = %145
  %150 = load i8*, i8** %26, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %178, label %152

152:                                              ; preds = %149
  %153 = load i32, i32* %24, align 4
  %154 = call i64 @__libc_use_alloca(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i32, i32* %24, align 4
  %158 = call i8* @alloca(i32 %157)
  store i8* %158, i8** %26, align 8
  br label %166

159:                                              ; preds = %152
  %160 = load i32, i32* %24, align 4
  %161 = call i8* @malloc(i32 %160)
  store i8* %161, i8** %26, align 8
  %162 = icmp eq i8* %161, null
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  store i32 1, i32* %28, align 4
  br label %165

164:                                              ; preds = %159
  store i32 1, i32* %27, align 4
  br label %165

165:                                              ; preds = %164, %163
  br label %166

166:                                              ; preds = %165, %156
  %167 = load i8*, i8** %26, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %177

169:                                              ; preds = %166
  %170 = load i8*, i8** %26, align 8
  %171 = load i32, i32* %24, align 4
  %172 = call i32 @memset(i8* %170, i32 0, i32 %171)
  %173 = load i8*, i8** %26, align 8
  %174 = load i32, i32* %29, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %173, i64 %175
  store i8 1, i8* %176, align 1
  br label %177

177:                                              ; preds = %169, %166
  br label %178

178:                                              ; preds = %177, %149
  br label %179

179:                                              ; preds = %178, %148
  %180 = load i8*, i8** %26, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %187

182:                                              ; preds = %179
  %183 = load i8*, i8** %26, align 8
  %184 = load i32, i32* %25, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  store i8 1, i8* %186, align 1
  br label %187

187:                                              ; preds = %182, %179
  br label %188

188:                                              ; preds = %187, %142
  br label %189

189:                                              ; preds = %188, %134
  br label %190

190:                                              ; preds = %189, %112
  br label %191

191:                                              ; preds = %190, %99
  br label %192

192:                                              ; preds = %191
  %193 = load %struct.option*, %struct.option** %22, align 8
  %194 = getelementptr inbounds %struct.option, %struct.option* %193, i32 1
  store %struct.option* %194, %struct.option** %22, align 8
  %195 = load i32, i32* %25, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %25, align 4
  br label %94

197:                                              ; preds = %94
  %198 = load i8*, i8** %26, align 8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %203, label %200

200:                                              ; preds = %197
  %201 = load i32, i32* %28, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %285

203:                                              ; preds = %200, %197
  %204 = load i32, i32* %18, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %264

206:                                              ; preds = %203
  %207 = load i32, i32* %28, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %220

209:                                              ; preds = %206
  %210 = load i32, i32* @stderr, align 4
  %211 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %212 = load i8**, i8*** %12, align 8
  %213 = getelementptr inbounds i8*, i8** %212, i64 0
  %214 = load i8*, i8** %213, align 8
  %215 = load i8*, i8** %19, align 8
  %216 = load %struct._getopt_data*, %struct._getopt_data** %17, align 8
  %217 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = call i32 (i32, i8*, ...) @fprintf(i32 %210, i8* %211, i8* %214, i8* %215, i8* %218)
  br label %263

220:                                              ; preds = %206
  %221 = load i32, i32* @stderr, align 4
  %222 = call i32 @flockfile(i32 %221)
  %223 = load i32, i32* @stderr, align 4
  %224 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %225 = load i8**, i8*** %12, align 8
  %226 = getelementptr inbounds i8*, i8** %225, i64 0
  %227 = load i8*, i8** %226, align 8
  %228 = load i8*, i8** %19, align 8
  %229 = load %struct._getopt_data*, %struct._getopt_data** %17, align 8
  %230 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %229, i32 0, i32 0
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 (i32, i8*, ...) @fprintf(i32 %223, i8* %224, i8* %227, i8* %228, i8* %231)
  store i32 0, i32* %25, align 4
  br label %233

233:                                              ; preds = %255, %220
  %234 = load i32, i32* %25, align 4
  %235 = load i32, i32* %24, align 4
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %258

237:                                              ; preds = %233
  %238 = load i8*, i8** %26, align 8
  %239 = load i32, i32* %25, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8, i8* %238, i64 %240
  %242 = load i8, i8* %241, align 1
  %243 = icmp ne i8 %242, 0
  br i1 %243, label %244, label %254

244:                                              ; preds = %237
  %245 = load i32, i32* @stderr, align 4
  %246 = load i8*, i8** %19, align 8
  %247 = load %struct.option*, %struct.option** %14, align 8
  %248 = load i32, i32* %25, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.option, %struct.option* %247, i64 %249
  %251 = getelementptr inbounds %struct.option, %struct.option* %250, i32 0, i32 0
  %252 = load i8*, i8** %251, align 8
  %253 = call i32 (i32, i8*, ...) @fprintf(i32 %245, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %246, i8* %252)
  br label %254

254:                                              ; preds = %244, %237
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %25, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %25, align 4
  br label %233

258:                                              ; preds = %233
  %259 = load i32, i32* @stderr, align 4
  %260 = call i32 (i32, i8*, ...) @fprintf(i32 %259, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %261 = load i32, i32* @stderr, align 4
  %262 = call i32 @funlockfile(i32 %261)
  br label %263

263:                                              ; preds = %258, %209
  br label %264

264:                                              ; preds = %263, %203
  %265 = load i32, i32* %27, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %264
  %268 = load i8*, i8** %26, align 8
  %269 = call i32 @free(i8* %268)
  br label %270

270:                                              ; preds = %267, %264
  %271 = load %struct._getopt_data*, %struct._getopt_data** %17, align 8
  %272 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %271, i32 0, i32 0
  %273 = load i8*, i8** %272, align 8
  %274 = call i64 @strlen(i8* %273)
  %275 = load %struct._getopt_data*, %struct._getopt_data** %17, align 8
  %276 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %275, i32 0, i32 0
  %277 = load i8*, i8** %276, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 %274
  store i8* %278, i8** %276, align 8
  %279 = load %struct._getopt_data*, %struct._getopt_data** %17, align 8
  %280 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = add i64 %281, 1
  store i64 %282, i64* %280, align 8
  %283 = load %struct._getopt_data*, %struct._getopt_data** %17, align 8
  %284 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %283, i32 0, i32 2
  store i64 0, i64* %284, align 8
  store i32 63, i32* %10, align 4
  br label %451

285:                                              ; preds = %200
  %286 = load i32, i32* %29, align 4
  store i32 %286, i32* %25, align 4
  br label %287

287:                                              ; preds = %285, %89
  %288 = load %struct.option*, %struct.option** %23, align 8
  %289 = icmp eq %struct.option* %288, null
  br i1 %289, label %290, label %336

290:                                              ; preds = %287
  %291 = load i32, i32* %16, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %312

293:                                              ; preds = %290
  %294 = load i8**, i8*** %12, align 8
  %295 = load %struct._getopt_data*, %struct._getopt_data** %17, align 8
  %296 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = getelementptr inbounds i8*, i8** %294, i64 %297
  %299 = load i8*, i8** %298, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 1
  %301 = load i8, i8* %300, align 1
  %302 = sext i8 %301 to i32
  %303 = icmp eq i32 %302, 45
  br i1 %303, label %312, label %304

304:                                              ; preds = %293
  %305 = load i8*, i8** %13, align 8
  %306 = load %struct._getopt_data*, %struct._getopt_data** %17, align 8
  %307 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %306, i32 0, i32 0
  %308 = load i8*, i8** %307, align 8
  %309 = load i8, i8* %308, align 1
  %310 = call i32* @strchr(i8* %305, i8 signext %309)
  %311 = icmp eq i32* %310, null
  br i1 %311, label %312, label %335

312:                                              ; preds = %304, %293, %290
  %313 = load i32, i32* %18, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %326

315:                                              ; preds = %312
  %316 = load i32, i32* @stderr, align 4
  %317 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %318 = load i8**, i8*** %12, align 8
  %319 = getelementptr inbounds i8*, i8** %318, i64 0
  %320 = load i8*, i8** %319, align 8
  %321 = load i8*, i8** %19, align 8
  %322 = load %struct._getopt_data*, %struct._getopt_data** %17, align 8
  %323 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %322, i32 0, i32 0
  %324 = load i8*, i8** %323, align 8
  %325 = call i32 (i32, i8*, ...) @fprintf(i32 %316, i8* %317, i8* %320, i8* %321, i8* %324)
  br label %326

326:                                              ; preds = %315, %312
  %327 = load %struct._getopt_data*, %struct._getopt_data** %17, align 8
  %328 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %327, i32 0, i32 0
  store i8* null, i8** %328, align 8
  %329 = load %struct._getopt_data*, %struct._getopt_data** %17, align 8
  %330 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %329, i32 0, i32 1
  %331 = load i64, i64* %330, align 8
  %332 = add i64 %331, 1
  store i64 %332, i64* %330, align 8
  %333 = load %struct._getopt_data*, %struct._getopt_data** %17, align 8
  %334 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %333, i32 0, i32 2
  store i64 0, i64* %334, align 8
  store i32 63, i32* %10, align 4
  br label %451

335:                                              ; preds = %304
  store i32 -1, i32* %10, align 4
  br label %451

336:                                              ; preds = %287
  %337 = load %struct._getopt_data*, %struct._getopt_data** %17, align 8
  %338 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = add i64 %339, 1
  store i64 %340, i64* %338, align 8
  %341 = load %struct._getopt_data*, %struct._getopt_data** %17, align 8
  %342 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %341, i32 0, i32 0
  store i8* null, i8** %342, align 8
  %343 = load i8*, i8** %20, align 8
  %344 = load i8, i8* %343, align 1
  %345 = icmp ne i8 %344, 0
  br i1 %345, label %346, label %377

346:                                              ; preds = %336
  %347 = load %struct.option*, %struct.option** %23, align 8
  %348 = getelementptr inbounds %struct.option, %struct.option* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 8
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %356

351:                                              ; preds = %346
  %352 = load i8*, i8** %20, align 8
  %353 = getelementptr inbounds i8, i8* %352, i64 1
  %354 = load %struct._getopt_data*, %struct._getopt_data** %17, align 8
  %355 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %354, i32 0, i32 3
  store i8* %353, i8** %355, align 8
  br label %376

356:                                              ; preds = %346
  %357 = load i32, i32* %18, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %370

359:                                              ; preds = %356
  %360 = load i32, i32* @stderr, align 4
  %361 = call i8* @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %362 = load i8**, i8*** %12, align 8
  %363 = getelementptr inbounds i8*, i8** %362, i64 0
  %364 = load i8*, i8** %363, align 8
  %365 = load i8*, i8** %19, align 8
  %366 = load %struct.option*, %struct.option** %23, align 8
  %367 = getelementptr inbounds %struct.option, %struct.option* %366, i32 0, i32 0
  %368 = load i8*, i8** %367, align 8
  %369 = call i32 (i32, i8*, ...) @fprintf(i32 %360, i8* %361, i8* %364, i8* %365, i8* %368)
  br label %370

370:                                              ; preds = %359, %356
  %371 = load %struct.option*, %struct.option** %23, align 8
  %372 = getelementptr inbounds %struct.option, %struct.option* %371, i32 0, i32 3
  %373 = load i64, i64* %372, align 8
  %374 = load %struct._getopt_data*, %struct._getopt_data** %17, align 8
  %375 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %374, i32 0, i32 2
  store i64 %373, i64* %375, align 8
  store i32 63, i32* %10, align 4
  br label %451

376:                                              ; preds = %351
  br label %428

377:                                              ; preds = %336
  %378 = load %struct.option*, %struct.option** %23, align 8
  %379 = getelementptr inbounds %struct.option, %struct.option* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 8
  %381 = icmp eq i32 %380, 1
  br i1 %381, label %382, label %427

382:                                              ; preds = %377
  %383 = load %struct._getopt_data*, %struct._getopt_data** %17, align 8
  %384 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %383, i32 0, i32 1
  %385 = load i64, i64* %384, align 8
  %386 = load i32, i32* %11, align 4
  %387 = sext i32 %386 to i64
  %388 = icmp ult i64 %385, %387
  br i1 %388, label %389, label %399

389:                                              ; preds = %382
  %390 = load i8**, i8*** %12, align 8
  %391 = load %struct._getopt_data*, %struct._getopt_data** %17, align 8
  %392 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %391, i32 0, i32 1
  %393 = load i64, i64* %392, align 8
  %394 = add i64 %393, 1
  store i64 %394, i64* %392, align 8
  %395 = getelementptr inbounds i8*, i8** %390, i64 %393
  %396 = load i8*, i8** %395, align 8
  %397 = load %struct._getopt_data*, %struct._getopt_data** %17, align 8
  %398 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %397, i32 0, i32 3
  store i8* %396, i8** %398, align 8
  br label %426

399:                                              ; preds = %382
  %400 = load i32, i32* %18, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %413

402:                                              ; preds = %399
  %403 = load i32, i32* @stderr, align 4
  %404 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %405 = load i8**, i8*** %12, align 8
  %406 = getelementptr inbounds i8*, i8** %405, i64 0
  %407 = load i8*, i8** %406, align 8
  %408 = load i8*, i8** %19, align 8
  %409 = load %struct.option*, %struct.option** %23, align 8
  %410 = getelementptr inbounds %struct.option, %struct.option* %409, i32 0, i32 0
  %411 = load i8*, i8** %410, align 8
  %412 = call i32 (i32, i8*, ...) @fprintf(i32 %403, i8* %404, i8* %407, i8* %408, i8* %411)
  br label %413

413:                                              ; preds = %402, %399
  %414 = load %struct.option*, %struct.option** %23, align 8
  %415 = getelementptr inbounds %struct.option, %struct.option* %414, i32 0, i32 3
  %416 = load i64, i64* %415, align 8
  %417 = load %struct._getopt_data*, %struct._getopt_data** %17, align 8
  %418 = getelementptr inbounds %struct._getopt_data, %struct._getopt_data* %417, i32 0, i32 2
  store i64 %416, i64* %418, align 8
  %419 = load i8*, i8** %13, align 8
  %420 = getelementptr inbounds i8, i8* %419, i64 0
  %421 = load i8, i8* %420, align 1
  %422 = sext i8 %421 to i32
  %423 = icmp eq i32 %422, 58
  %424 = zext i1 %423 to i64
  %425 = select i1 %423, i32 58, i32 63
  store i32 %425, i32* %10, align 4
  br label %451

426:                                              ; preds = %389
  br label %427

427:                                              ; preds = %426, %377
  br label %428

428:                                              ; preds = %427, %376
  %429 = load i32*, i32** %15, align 8
  %430 = icmp ne i32* %429, null
  br i1 %430, label %431, label %434

431:                                              ; preds = %428
  %432 = load i32, i32* %25, align 4
  %433 = load i32*, i32** %15, align 8
  store i32 %432, i32* %433, align 4
  br label %434

434:                                              ; preds = %431, %428
  %435 = load %struct.option*, %struct.option** %23, align 8
  %436 = getelementptr inbounds %struct.option, %struct.option* %435, i32 0, i32 2
  %437 = load i64*, i64** %436, align 8
  %438 = icmp ne i64* %437, null
  br i1 %438, label %439, label %446

439:                                              ; preds = %434
  %440 = load %struct.option*, %struct.option** %23, align 8
  %441 = getelementptr inbounds %struct.option, %struct.option* %440, i32 0, i32 3
  %442 = load i64, i64* %441, align 8
  %443 = load %struct.option*, %struct.option** %23, align 8
  %444 = getelementptr inbounds %struct.option, %struct.option* %443, i32 0, i32 2
  %445 = load i64*, i64** %444, align 8
  store i64 %442, i64* %445, align 8
  store i32 0, i32* %10, align 4
  br label %451

446:                                              ; preds = %434
  %447 = load %struct.option*, %struct.option** %23, align 8
  %448 = getelementptr inbounds %struct.option, %struct.option* %447, i32 0, i32 3
  %449 = load i64, i64* %448, align 8
  %450 = trunc i64 %449 to i32
  store i32 %450, i32* %10, align 4
  br label %451

451:                                              ; preds = %446, %439, %413, %370, %335, %326, %270
  %452 = load i32, i32* %10, align 4
  ret i32 %452
}

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @__libc_use_alloca(i32) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @flockfile(i32) #1

declare dso_local i32 @funlockfile(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
