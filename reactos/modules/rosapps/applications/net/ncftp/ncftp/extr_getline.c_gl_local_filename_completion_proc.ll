; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_gl_local_filename_completion_proc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_gl_local_filename_completion_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32 }

@gl_local_filename_completion_proc.searchHandle = internal global i32* null, align 8
@gl_local_filename_completion_proc.filepfxoffset = internal global i32 0, align 4
@gl_local_filename_completion_proc.filepfxlen = internal global i64 0, align 8
@LOCAL_PATH_DELIM_STR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@gl_home_dir = common dso_local global i8* null, align 8
@LOCAL_PATH_DELIM = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"*.*\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\\*.*\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i32* null, align 8
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@ERROR_NO_MORE_FILES = common dso_local global i64 0, align 8
@gl_matchlist = common dso_local global i8** null, align 8
@gl_completion_exact_match_extra_char = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @gl_local_filename_completion_proc(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load i32*, i32** @gl_local_filename_completion_proc.searchHandle, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32*, i32** @gl_local_filename_completion_proc.searchHandle, align 8
  %25 = call i32 @FindClose(i32* %24)
  store i32* null, i32** @gl_local_filename_completion_proc.searchHandle, align 8
  br label %26

26:                                               ; preds = %23, %20
  br label %27

27:                                               ; preds = %26, %2
  %28 = load i32*, i32** @gl_local_filename_completion_proc.searchHandle, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %158

30:                                               ; preds = %27
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i8* @_StrRFindLocalPathDelim(i8* %31)
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = icmp eq i8* %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i8*, i8** @LOCAL_PATH_DELIM_STR, align 8
  store i8* %37, i8** %12, align 8
  store i32 1, i32* @gl_local_filename_completion_proc.filepfxoffset, align 4
  br label %76

38:                                               ; preds = %30
  %39 = load i8*, i8** %8, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  store i32 0, i32* @gl_local_filename_completion_proc.filepfxoffset, align 4
  br label %75

42:                                               ; preds = %38
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %16, align 8
  %47 = load i64, i64* %16, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i64 @malloc(i32 %48)
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %14, align 8
  %51 = load i8*, i8** %14, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  store i8* null, i8** %3, align 8
  br label %382

54:                                               ; preds = %42
  %55 = load i8*, i8** %14, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = load i64, i64* %16, align 8
  %58 = call i32 @memcpy(i8* %55, i8* %56, i64 %57)
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  store i64 %63, i64* %16, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = load i64, i64* %16, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8 0, i8* %66, align 1
  %67 = load i8*, i8** %14, align 8
  store i8* %67, i8** %12, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8*, i8** %4, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* @gl_local_filename_completion_proc.filepfxoffset, align 4
  br label %75

75:                                               ; preds = %54, %41
  br label %76

76:                                               ; preds = %75, %36
  %77 = load i8*, i8** %12, align 8
  %78 = call i64 @strcmp(i8* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %76
  %81 = load i8*, i8** @gl_home_dir, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = call i32 @gl_set_home_dir(i32* null)
  br label %85

85:                                               ; preds = %83, %80
  %86 = load i8*, i8** @gl_home_dir, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i8* null, i8** %3, align 8
  br label %382

89:                                               ; preds = %85
  %90 = load i8*, i8** @gl_home_dir, align 8
  store i8* %90, i8** %12, align 8
  br label %91

91:                                               ; preds = %89, %76
  %92 = load i8*, i8** %12, align 8
  %93 = call i32 @strlen(i8* %92)
  %94 = sext i32 %93 to i64
  store i64 %94, i64* %16, align 8
  %95 = load i64, i64* %16, align 8
  %96 = add i64 %95, 8
  %97 = trunc i64 %96 to i32
  %98 = call i64 @malloc(i32 %97)
  %99 = inttoptr i64 %98 to i8*
  store i8* %99, i8** %15, align 8
  %100 = load i8*, i8** %15, align 8
  %101 = icmp eq i8* %100, null
  br i1 %101, label %102, label %109

102:                                              ; preds = %91
  %103 = load i8*, i8** %14, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i8*, i8** %14, align 8
  %107 = call i32 @free(i8* %106)
  br label %108

108:                                              ; preds = %105, %102
  store i8* null, i8** %3, align 8
  br label %382

109:                                              ; preds = %91
  %110 = load i8*, i8** %15, align 8
  %111 = load i8*, i8** %12, align 8
  %112 = load i64, i64* %16, align 8
  %113 = add i64 %112, 1
  %114 = call i32 @memcpy(i8* %110, i8* %111, i64 %113)
  %115 = load i8*, i8** %15, align 8
  %116 = load i64, i64* %16, align 8
  %117 = sub i64 %116, 1
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = load i8, i8* @LOCAL_PATH_DELIM, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %109
  %125 = load i8*, i8** %15, align 8
  %126 = load i64, i64* %16, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  %128 = call i32 @memcpy(i8* %127, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 4)
  br label %134

129:                                              ; preds = %109
  %130 = load i8*, i8** %15, align 8
  %131 = load i64, i64* %16, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  %133 = call i32 @memcpy(i8* %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 5)
  br label %134

134:                                              ; preds = %129, %124
  %135 = call i32 @memset(%struct.TYPE_5__* %6, i32 0, i32 16)
  %136 = load i8*, i8** %15, align 8
  %137 = call i32* @FindFirstFile(i8* %136, %struct.TYPE_5__* %6)
  store i32* %137, i32** @gl_local_filename_completion_proc.searchHandle, align 8
  %138 = load i8*, i8** %15, align 8
  %139 = call i32 @free(i8* %138)
  %140 = load i8*, i8** %14, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %134
  %143 = load i8*, i8** %14, align 8
  %144 = call i32 @free(i8* %143)
  br label %145

145:                                              ; preds = %142, %134
  %146 = load i32*, i32** @gl_local_filename_completion_proc.searchHandle, align 8
  %147 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %148 = icmp eq i32* %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  store i8* null, i8** %3, align 8
  br label %382

150:                                              ; preds = %145
  %151 = load i8*, i8** %4, align 8
  %152 = load i32, i32* @gl_local_filename_completion_proc.filepfxoffset, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  store i8* %154, i8** %11, align 8
  %155 = load i8*, i8** %11, align 8
  %156 = call i32 @strlen(i8* %155)
  %157 = sext i32 %156 to i64
  store i64 %157, i64* @gl_local_filename_completion_proc.filepfxlen, align 8
  br label %163

158:                                              ; preds = %27
  %159 = load i8*, i8** %4, align 8
  %160 = load i32, i32* @gl_local_filename_completion_proc.filepfxoffset, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  store i8* %162, i8** %11, align 8
  br label %265

163:                                              ; preds = %150
  br label %164

164:                                              ; preds = %380, %163
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  store i8* %166, i8** %13, align 8
  %167 = load i8*, i8** %13, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 0
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 46
  br i1 %171, label %172, label %191

172:                                              ; preds = %164
  %173 = load i8*, i8** %13, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 1
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %190, label %178

178:                                              ; preds = %172
  %179 = load i8*, i8** %13, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 1
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 46
  br i1 %183, label %184, label %191

184:                                              ; preds = %178
  %185 = load i8*, i8** %13, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 2
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %184, %172
  br label %265

191:                                              ; preds = %184, %178, %164
  %192 = load i64, i64* @gl_local_filename_completion_proc.filepfxlen, align 8
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %200, label %194

194:                                              ; preds = %191
  %195 = load i8*, i8** %13, align 8
  %196 = load i8*, i8** %11, align 8
  %197 = load i64, i64* @gl_local_filename_completion_proc.filepfxlen, align 8
  %198 = call i64 @_strnicmp(i8* %195, i8* %196, i64 %197)
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %264

200:                                              ; preds = %194, %191
  %201 = load i8*, i8** %13, align 8
  %202 = call i32 @strlen(i8* %201)
  %203 = sext i32 %202 to i64
  store i64 %203, i64* %16, align 8
  %204 = load i32, i32* @gl_local_filename_completion_proc.filepfxoffset, align 4
  %205 = sext i32 %204 to i64
  %206 = load i64, i64* %16, align 8
  %207 = add i64 %205, %206
  %208 = add i64 %207, 4
  %209 = add i64 %208, 1
  %210 = trunc i64 %209 to i32
  %211 = call i64 @malloc(i32 %210)
  %212 = inttoptr i64 %211 to i8*
  store i8* %212, i8** %8, align 8
  %213 = load i8*, i8** %8, align 8
  store i8 0, i8* %213, align 1
  %214 = load i32, i32* @gl_local_filename_completion_proc.filepfxoffset, align 4
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %200
  %217 = load i8*, i8** %8, align 8
  %218 = load i8*, i8** %4, align 8
  %219 = load i32, i32* @gl_local_filename_completion_proc.filepfxoffset, align 4
  %220 = sext i32 %219 to i64
  %221 = call i32 @memcpy(i8* %217, i8* %218, i64 %220)
  br label %222

222:                                              ; preds = %216, %200
  %223 = load i8*, i8** %8, align 8
  %224 = load i32, i32* @gl_local_filename_completion_proc.filepfxoffset, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %223, i64 %225
  %227 = load i8*, i8** %13, align 8
  %228 = load i64, i64* %16, align 8
  %229 = add i64 %228, 1
  %230 = call i32 @memcpy(i8* %226, i8* %227, i64 %229)
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %249

236:                                              ; preds = %222
  %237 = load i8*, i8** %8, align 8
  %238 = load i32, i32* @gl_local_filename_completion_proc.filepfxoffset, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8, i8* %237, i64 %239
  %241 = load i64, i64* %16, align 8
  %242 = getelementptr inbounds i8, i8* %240, i64 %241
  %243 = getelementptr inbounds i8, i8* %242, i64 1
  store i8* %243, i8** %9, align 8
  %244 = load i8*, i8** %9, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %9, align 8
  store i8 0, i8* %244, align 1
  %246 = load i8*, i8** %9, align 8
  %247 = getelementptr inbounds i8, i8* %246, i32 1
  store i8* %247, i8** %9, align 8
  store i8 100, i8* %246, align 1
  %248 = load i8*, i8** %9, align 8
  store i8 0, i8* %248, align 1
  br label %262

249:                                              ; preds = %222
  %250 = load i8*, i8** %8, align 8
  %251 = load i32, i32* @gl_local_filename_completion_proc.filepfxoffset, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, i8* %250, i64 %252
  %254 = load i64, i64* %16, align 8
  %255 = getelementptr inbounds i8, i8* %253, i64 %254
  %256 = getelementptr inbounds i8, i8* %255, i64 1
  store i8* %256, i8** %9, align 8
  %257 = load i8*, i8** %9, align 8
  %258 = getelementptr inbounds i8, i8* %257, i32 1
  store i8* %258, i8** %9, align 8
  store i8 0, i8* %257, align 1
  %259 = load i8*, i8** %9, align 8
  %260 = getelementptr inbounds i8, i8* %259, i32 1
  store i8* %260, i8** %9, align 8
  store i8 45, i8* %259, align 1
  %261 = load i8*, i8** %9, align 8
  store i8 0, i8* %261, align 1
  br label %262

262:                                              ; preds = %249, %236
  %263 = load i8*, i8** %8, align 8
  store i8* %263, i8** %3, align 8
  br label %382

264:                                              ; preds = %194
  br label %265

265:                                              ; preds = %264, %190, %158
  %266 = load i32*, i32** @gl_local_filename_completion_proc.searchHandle, align 8
  %267 = call i32 @FindNextFile(i32* %266, %struct.TYPE_5__* %6)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %380, label %269

269:                                              ; preds = %265
  %270 = call i64 (...) @GetLastError()
  store i64 %270, i64* %7, align 8
  %271 = load i64, i64* %7, align 8
  %272 = load i64, i64* @ERROR_NO_MORE_FILES, align 8
  %273 = icmp ne i64 %271, %272
  br i1 %273, label %274, label %277

274:                                              ; preds = %269
  %275 = load i32*, i32** @gl_local_filename_completion_proc.searchHandle, align 8
  %276 = call i32 @FindClose(i32* %275)
  store i32* null, i32** @gl_local_filename_completion_proc.searchHandle, align 8
  store i8* null, i8** %3, align 8
  br label %382

277:                                              ; preds = %269
  %278 = load i32*, i32** @gl_local_filename_completion_proc.searchHandle, align 8
  %279 = call i32 @FindClose(i32* %278)
  store i32* null, i32** @gl_local_filename_completion_proc.searchHandle, align 8
  %280 = load i32, i32* %5, align 4
  %281 = icmp eq i32 %280, 1
  br i1 %281, label %282, label %379

282:                                              ; preds = %277
  %283 = load i8**, i8*** @gl_matchlist, align 8
  %284 = getelementptr inbounds i8*, i8** %283, i64 0
  %285 = load i8*, i8** %284, align 8
  store i8* %285, i8** %8, align 8
  %286 = load i8*, i8** %8, align 8
  %287 = load i8*, i8** %8, align 8
  %288 = call i32 @strlen(i8* %287)
  %289 = add nsw i32 %288, 2
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i8, i8* %286, i64 %290
  %292 = load i8, i8* %291, align 1
  store i8 %292, i8* %10, align 1
  %293 = load i8, i8* %10, align 1
  %294 = sext i8 %293 to i32
  %295 = icmp eq i32 %294, 100
  br i1 %295, label %296, label %298

296:                                              ; preds = %282
  %297 = load i8, i8* @LOCAL_PATH_DELIM, align 1
  store i8 %297, i8* @gl_completion_exact_match_extra_char, align 1
  br label %298

298:                                              ; preds = %296, %282
  %299 = load i8*, i8** %8, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 0
  %301 = load i8, i8* %300, align 1
  %302 = sext i8 %301 to i32
  %303 = icmp eq i32 %302, 126
  br i1 %303, label %304, label %378

304:                                              ; preds = %298
  %305 = load i8*, i8** %8, align 8
  %306 = getelementptr inbounds i8, i8* %305, i64 1
  %307 = load i8, i8* %306, align 1
  %308 = sext i8 %307 to i32
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %316, label %310

310:                                              ; preds = %304
  %311 = load i8*, i8** %8, align 8
  %312 = getelementptr inbounds i8, i8* %311, i64 1
  %313 = load i8, i8* %312, align 1
  %314 = call i64 @IsLocalPathDelim(i8 signext %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %378

316:                                              ; preds = %310, %304
  %317 = load i8*, i8** %8, align 8
  %318 = getelementptr inbounds i8, i8* %317, i64 1
  %319 = call i32 @strlen(i8* %318)
  %320 = add nsw i32 %319, 1
  %321 = sext i32 %320 to i64
  store i64 %321, i64* %16, align 8
  %322 = load i8*, i8** @gl_home_dir, align 8
  %323 = call i32 @strlen(i8* %322)
  %324 = sext i32 %323 to i64
  store i64 %324, i64* %17, align 8
  %325 = load i8*, i8** @gl_home_dir, align 8
  %326 = load i64, i64* %17, align 8
  %327 = sub i64 %326, 1
  %328 = getelementptr inbounds i8, i8* %325, i64 %327
  %329 = load i8, i8* %328, align 1
  %330 = call i64 @IsLocalPathDelim(i8 signext %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %335

332:                                              ; preds = %316
  %333 = load i64, i64* %17, align 8
  %334 = add i64 %333, -1
  store i64 %334, i64* %17, align 8
  br label %335

335:                                              ; preds = %332, %316
  %336 = load i8**, i8*** @gl_matchlist, align 8
  %337 = getelementptr inbounds i8*, i8** %336, i64 0
  %338 = load i8*, i8** %337, align 8
  %339 = load i64, i64* %16, align 8
  %340 = load i64, i64* %17, align 8
  %341 = add i64 %339, %340
  %342 = add i64 %341, 4
  %343 = call i64 @realloc(i8* %338, i64 %342)
  %344 = inttoptr i64 %343 to i8*
  store i8* %344, i8** %8, align 8
  %345 = load i8*, i8** %8, align 8
  %346 = icmp eq i8* %345, null
  br i1 %346, label %347, label %351

347:                                              ; preds = %335
  %348 = load i8**, i8*** @gl_matchlist, align 8
  %349 = getelementptr inbounds i8*, i8** %348, i64 0
  %350 = load i8*, i8** %349, align 8
  store i8* %350, i8** %8, align 8
  br label %377

351:                                              ; preds = %335
  %352 = load i8*, i8** %8, align 8
  %353 = load i64, i64* %17, align 8
  %354 = getelementptr inbounds i8, i8* %352, i64 %353
  %355 = load i8*, i8** %8, align 8
  %356 = getelementptr inbounds i8, i8* %355, i64 1
  %357 = load i64, i64* %16, align 8
  %358 = call i32 @memmove(i8* %354, i8* %356, i64 %357)
  %359 = load i8*, i8** %8, align 8
  %360 = load i8*, i8** @gl_home_dir, align 8
  %361 = load i64, i64* %17, align 8
  %362 = call i32 @memcpy(i8* %359, i8* %360, i64 %361)
  %363 = load i8*, i8** %8, align 8
  %364 = load i64, i64* %16, align 8
  %365 = getelementptr inbounds i8, i8* %363, i64 %364
  %366 = load i64, i64* %17, align 8
  %367 = getelementptr inbounds i8, i8* %365, i64 %366
  store i8* %367, i8** %9, align 8
  %368 = load i8*, i8** %9, align 8
  %369 = getelementptr inbounds i8, i8* %368, i32 1
  store i8* %369, i8** %9, align 8
  store i8 0, i8* %368, align 1
  %370 = load i8, i8* %10, align 1
  %371 = load i8*, i8** %9, align 8
  %372 = getelementptr inbounds i8, i8* %371, i32 1
  store i8* %372, i8** %9, align 8
  store i8 %370, i8* %371, align 1
  %373 = load i8*, i8** %9, align 8
  store i8 0, i8* %373, align 1
  %374 = load i8*, i8** %8, align 8
  %375 = load i8**, i8*** @gl_matchlist, align 8
  %376 = getelementptr inbounds i8*, i8** %375, i64 0
  store i8* %374, i8** %376, align 8
  br label %377

377:                                              ; preds = %351, %347
  br label %378

378:                                              ; preds = %377, %310, %298
  br label %379

379:                                              ; preds = %378, %277
  br label %381

380:                                              ; preds = %265
  br label %164

381:                                              ; preds = %379
  store i8* null, i8** %3, align 8
  br label %382

382:                                              ; preds = %381, %274, %262, %149, %108, %88, %53
  %383 = load i8*, i8** %3, align 8
  ret i8* %383
}

declare dso_local i32 @FindClose(i32*) #1

declare dso_local i8* @_StrRFindLocalPathDelim(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @gl_set_home_dir(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32* @FindFirstFile(i8*, %struct.TYPE_5__*) #1

declare dso_local i64 @_strnicmp(i8*, i8*, i64) #1

declare dso_local i32 @FindNextFile(i32*, %struct.TYPE_5__*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @IsLocalPathDelim(i8 signext) #1

declare dso_local i64 @realloc(i8*, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
