; ModuleID = '/home/carl/AnghaBench/tig/src/extr_io.c_io_exec.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_io.c_io_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io = type { i32, i32, i8* }

@__const.io_exec.pipefds = private unnamed_addr constant [2 x i32] [i32 -1, i32 -1], align 4
@IO_RD = common dso_local global i32 0, align 4
@IO_RD_FORWARD_STDIN = common dso_local global i32 0, align 4
@IO_RD_WITH_STDERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@IO_RP = common dso_local global i32 0, align 4
@IO_WR = common dso_local global i32 0, align 4
@errno = common dso_local global i8* null, align 8
@IO_AP = common dso_local global i32 0, align 4
@IO_FG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @io_exec(%struct.io* %0, i32 %1, i8* %2, i8** %3, i8** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.io*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.io* %0, %struct.io** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32 %5, i32* %13, align 4
  %22 = bitcast [2 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 bitcast ([2 x i32]* @__const.io_exec.pipefds to i8*), i64 8, i1 false)
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @IO_RD, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %6
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @IO_RD_FORWARD_STDIN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %26, %6
  %32 = phi i1 [ false, %6 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @IO_RD, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @IO_RD_WITH_STDERR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %37, %31
  %43 = phi i1 [ false, %31 ], [ %41, %37 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %16, align 4
  %45 = load %struct.io*, %struct.io** %8, align 8
  %46 = call i32 @io_init(%struct.io* %45)
  %47 = load i8*, i8** %10, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %63

49:                                               ; preds = %42
  %50 = load i8*, i8** %10, align 8
  %51 = load i8**, i8*** %12, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @strcmp(i8* %50, i8* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %49
  %57 = load %struct.io*, %struct.io** %8, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load i8**, i8*** %12, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @io_open(%struct.io* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %58, i8* %61)
  store i32 %62, i32* %7, align 4
  br label %316

63:                                               ; preds = %49, %42
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @IO_RD, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %75, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @IO_RP, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @IO_WR, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %71, %67, %63
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %77 = call i64 @pipe(i32* %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i8*, i8** @errno, align 8
  %81 = load %struct.io*, %struct.io** %8, align 8
  %82 = getelementptr inbounds %struct.io, %struct.io* %81, i32 0, i32 2
  store i8* %80, i8** %82, align 8
  store i32 0, i32* %7, align 4
  br label %316

83:                                               ; preds = %75, %71
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @IO_AP, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32, i32* %13, align 4
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %83
  br label %91

91:                                               ; preds = %90
  %92 = call i32 (...) @fork()
  %93 = load %struct.io*, %struct.io** %8, align 8
  %94 = getelementptr inbounds %struct.io, %struct.io* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = icmp ne i32 %92, 0
  br i1 %95, label %96, label %143

96:                                               ; preds = %91
  %97 = load %struct.io*, %struct.io** %8, align 8
  %98 = getelementptr inbounds %struct.io, %struct.io* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i8*, i8** @errno, align 8
  %103 = load %struct.io*, %struct.io** %8, align 8
  %104 = getelementptr inbounds %struct.io, %struct.io* %103, i32 0, i32 2
  store i8* %102, i8** %104, align 8
  br label %105

105:                                              ; preds = %101, %96
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @IO_WR, align 4
  %108 = icmp eq i32 %106, %107
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, -1
  br i1 %114, label %115, label %125

115:                                              ; preds = %105
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @IO_WR, align 4
  %118 = icmp eq i32 %116, %117
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @close(i32 %123)
  br label %125

125:                                              ; preds = %115, %105
  %126 = load %struct.io*, %struct.io** %8, align 8
  %127 = getelementptr inbounds %struct.io, %struct.io* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, -1
  br i1 %129, label %130, label %142

130:                                              ; preds = %125
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* @IO_WR, align 4
  %133 = icmp eq i32 %131, %132
  %134 = xor i1 %133, true
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.io*, %struct.io** %8, align 8
  %141 = getelementptr inbounds %struct.io, %struct.io* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  store i32 1, i32* %7, align 4
  br label %316

142:                                              ; preds = %125
  br label %293

143:                                              ; preds = %91
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @IO_FG, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %237

147:                                              ; preds = %143
  %148 = load i32, i32* @O_RDWR, align 4
  %149 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %148)
  store i32 %149, i32* %17, align 4
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* @IO_WR, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %155 = load i32, i32* %154, align 4
  br label %166

156:                                              ; preds = %147
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* @IO_RP, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = load i32, i32* %13, align 4
  br label %164

162:                                              ; preds = %156
  %163 = load i32, i32* %17, align 4
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi i32 [ %161, %160 ], [ %163, %162 ]
  br label %166

166:                                              ; preds = %164, %153
  %167 = phi i32 [ %155, %153 ], [ %165, %164 ]
  store i32 %167, i32* %18, align 4
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* @IO_RD, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %179, label %171

171:                                              ; preds = %166
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* @IO_RP, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %179, label %175

175:                                              ; preds = %171
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* @IO_AP, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %175, %171, %166
  %180 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %181 = load i32, i32* %180, align 4
  br label %184

182:                                              ; preds = %175
  %183 = load i32, i32* %17, align 4
  br label %184

184:                                              ; preds = %182, %179
  %185 = phi i32 [ %181, %179 ], [ %183, %182 ]
  store i32 %185, i32* %19, align 4
  %186 = load i32, i32* %17, align 4
  %187 = load i8**, i8*** %12, align 8
  %188 = call i32 @open_trace(i32 %186, i8** %187)
  store i32 %188, i32* %20, align 4
  %189 = load i32, i32* %15, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %184
  %192 = load i32, i32* @STDIN_FILENO, align 4
  %193 = call i32 @dup(i32 %192)
  store i32 %193, i32* %18, align 4
  br label %194

194:                                              ; preds = %191, %184
  %195 = load i32, i32* %18, align 4
  %196 = load i32, i32* @STDIN_FILENO, align 4
  %197 = call i32 @dup2(i32 %195, i32 %196)
  %198 = load i32, i32* %19, align 4
  %199 = load i32, i32* @STDOUT_FILENO, align 4
  %200 = call i32 @dup2(i32 %198, i32 %199)
  %201 = load i32, i32* %16, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %194
  %204 = load i32, i32* %19, align 4
  %205 = load i32, i32* @STDERR_FILENO, align 4
  %206 = call i32 @dup2(i32 %204, i32 %205)
  br label %211

207:                                              ; preds = %194
  %208 = load i32, i32* %20, align 4
  %209 = load i32, i32* @STDERR_FILENO, align 4
  %210 = call i32 @dup2(i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %207, %203
  %212 = load i32, i32* %17, align 4
  %213 = load i32, i32* %20, align 4
  %214 = icmp ne i32 %212, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %211
  %216 = load i32, i32* %20, align 4
  %217 = call i32 @close(i32 %216)
  br label %218

218:                                              ; preds = %215, %211
  %219 = load i32, i32* %17, align 4
  %220 = call i32 @close(i32 %219)
  %221 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, -1
  br i1 %223, label %224, label %228

224:                                              ; preds = %218
  %225 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @close(i32 %226)
  br label %228

228:                                              ; preds = %224, %218
  %229 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %230, -1
  br i1 %231, label %232, label %236

232:                                              ; preds = %228
  %233 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @close(i32 %234)
  br label %236

236:                                              ; preds = %232, %228
  br label %237

237:                                              ; preds = %236, %143
  %238 = load i8*, i8** %10, align 8
  %239 = icmp ne i8* %238, null
  br i1 %239, label %240, label %252

240:                                              ; preds = %237
  %241 = load i8*, i8** %10, align 8
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %252

245:                                              ; preds = %240
  %246 = load i8*, i8** %10, align 8
  %247 = call i32 @chdir(i8* %246)
  %248 = icmp eq i32 %247, -1
  br i1 %248, label %249, label %252

249:                                              ; preds = %245
  %250 = load i8*, i8** @errno, align 8
  %251 = call i32 @_exit(i8* %250) #4
  unreachable

252:                                              ; preds = %245, %240, %237
  %253 = load i8**, i8*** %11, align 8
  %254 = icmp ne i8** %253, null
  br i1 %254, label %255, label %283

255:                                              ; preds = %252
  store i32 0, i32* %21, align 4
  br label %256

256:                                              ; preds = %279, %255
  %257 = load i8**, i8*** %11, align 8
  %258 = load i32, i32* %21, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8*, i8** %257, i64 %259
  %261 = load i8*, i8** %260, align 8
  %262 = icmp ne i8* %261, null
  br i1 %262, label %263, label %282

263:                                              ; preds = %256
  %264 = load i8**, i8*** %11, align 8
  %265 = load i32, i32* %21, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8*, i8** %264, i64 %266
  %268 = load i8*, i8** %267, align 8
  %269 = load i8, i8* %268, align 1
  %270 = icmp ne i8 %269, 0
  br i1 %270, label %271, label %278

271:                                              ; preds = %263
  %272 = load i8**, i8*** %11, align 8
  %273 = load i32, i32* %21, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8*, i8** %272, i64 %274
  %276 = load i8*, i8** %275, align 8
  %277 = call i32 @putenv(i8* %276)
  br label %278

278:                                              ; preds = %271, %263
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %21, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %21, align 4
  br label %256

282:                                              ; preds = %256
  br label %283

283:                                              ; preds = %282, %252
  %284 = load i8**, i8*** %12, align 8
  %285 = getelementptr inbounds i8*, i8** %284, i64 0
  %286 = load i8*, i8** %285, align 8
  %287 = load i8**, i8*** %12, align 8
  %288 = call i32 @execvp(i8* %286, i8** %287)
  %289 = load i32, i32* @STDOUT_FILENO, align 4
  %290 = call i32 @close(i32 %289)
  %291 = load i8*, i8** @errno, align 8
  %292 = call i32 @_exit(i8* %291) #4
  unreachable

293:                                              ; preds = %142
  %294 = load i32, i32* %9, align 4
  %295 = load i32, i32* @IO_WR, align 4
  %296 = icmp eq i32 %294, %295
  %297 = xor i1 %296, true
  %298 = xor i1 %297, true
  %299 = zext i1 %298 to i32
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = icmp ne i32 %302, -1
  br i1 %303, label %304, label %315

304:                                              ; preds = %293
  %305 = load i32, i32* %9, align 4
  %306 = load i32, i32* @IO_WR, align 4
  %307 = icmp eq i32 %305, %306
  %308 = xor i1 %307, true
  %309 = xor i1 %308, true
  %310 = zext i1 %309 to i32
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @close(i32 %313)
  br label %315

315:                                              ; preds = %304, %293
  store i32 0, i32* %7, align 4
  br label %316

316:                                              ; preds = %315, %130, %79, %56
  %317 = load i32, i32* %7, align 4
  ret i32 %317
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @io_init(%struct.io*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @io_open(%struct.io*, i8*, i8*, i8*) #2

declare dso_local i64 @pipe(i32*) #2

declare dso_local i32 @fork(...) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @open_trace(i32, i8**) #2

declare dso_local i32 @dup(i32) #2

declare dso_local i32 @dup2(i32, i32) #2

declare dso_local i32 @chdir(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @_exit(i8*) #3

declare dso_local i32 @putenv(i8*) #2

declare dso_local i32 @execvp(i8*, i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
