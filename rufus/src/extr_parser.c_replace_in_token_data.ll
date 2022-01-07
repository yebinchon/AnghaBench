; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_parser.c_replace_in_token_data.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_parser.c_replace_in_token_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i32] [i32 119, i32 0], align 4
@.str.1 = private unnamed_addr constant [13 x i32] [i32 119, i32 44, i32 32, i32 99, i32 99, i32 115, i32 61, i32 85, i32 84, i32 70, i32 45, i32 56, i32 0], align 4
@.str.2 = private unnamed_addr constant [16 x i32] [i32 119, i32 44, i32 32, i32 99, i32 99, i32 115, i32 61, i32 85, i32 84, i32 70, i32 45, i32 49, i32 54, i32 76, i32 69, i32 0], align 4
@__const.replace_in_token_data.outmode = private unnamed_addr constant [3 x i8*] [i8* bitcast ([2 x i32]* @.str to i8*), i8* bitcast ([13 x i32]* @.str.1 to i8*), i8* bitcast ([16 x i32]* @.str.2 to i8*)], align 16
@conversion_error = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [15 x i32] [i32 114, i32 44, i32 32, i32 99, i32 99, i32 115, i32 61, i32 85, i32 78, i32 73, i32 67, i32 79, i32 68, i32 69, i32 0], align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Could not open file '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Could not read file '%s'\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"Could not allocate space for temporary output name\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Could not open temporary output file '%s~'\0A\00", align 1
@wspace = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i32] [i32 37, i32 115, i32 37, i32 115, i32 37, i32 115, i32 0], align 4
@.str.9 = private unnamed_addr constant [3 x i32] [i32 114, i32 98, i32 0], align 4
@.str.10 = private unnamed_addr constant [3 x i32] [i32 119, i32 98, i32 0], align 4
@.str.11 = private unnamed_addr constant [64 x i8] c"Could not write '%s' - original file has been left unmodified.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @replace_in_token_data(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [3 x i8*], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8, align 1
  %19 = alloca [1024 x i8], align 16
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca [2 x i8], align 1
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %29 = bitcast [3 x i8*]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %29, i8* align 16 bitcast ([3 x i8*]* @__const.replace_in_token_data.outmode to i8*), i64 24, i1 false)
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8 0, i8* %18, align 1
  store i32* null, i32** %21, align 8
  store i32* null, i32** %22, align 8
  store i32 0, i32* %26, align 4
  store i8* null, i8** %27, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %5
  %33 = load i8*, i8** %8, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** %9, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i8*, i8** %10, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %35, %32, %5
  store i8* null, i8** %6, align 8
  br label %330

42:                                               ; preds = %38
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %66, label %48

48:                                               ; preds = %42
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %48
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60, %54, %48, %42
  store i8* null, i8** %6, align 8
  br label %330

67:                                               ; preds = %60
  %68 = load i8*, i8** %9, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = call i64 @strcmp(i8* %68, i8* %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i8* null, i8** %6, align 8
  br label %330

73:                                               ; preds = %67
  %74 = load i8*, i8** %7, align 8
  %75 = call i8* @utf8_to_wchar(i8* %74)
  store i8* %75, i8** %14, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = icmp eq i8* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i8*, i8** @conversion_error, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 (i8*, ...) @uprintf(i8* %79, i8* %80)
  br label %240

82:                                               ; preds = %73
  %83 = load i8*, i8** %8, align 8
  %84 = call i8* @utf8_to_wchar(i8* %83)
  store i8* %84, i8** %13, align 8
  %85 = load i8*, i8** %14, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i8*, i8** @conversion_error, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = call i32 (i8*, ...) @uprintf(i8* %88, i8* %89)
  br label %240

91:                                               ; preds = %82
  %92 = load i8*, i8** %9, align 8
  %93 = call i8* @utf8_to_wchar(i8* %92)
  store i8* %93, i8** %16, align 8
  %94 = load i8*, i8** %16, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load i8*, i8** @conversion_error, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = call i32 (i8*, ...) @uprintf(i8* %97, i8* %98)
  br label %240

100:                                              ; preds = %91
  %101 = load i8*, i8** %10, align 8
  %102 = call i8* @utf8_to_wchar(i8* %101)
  store i8* %102, i8** %17, align 8
  %103 = load i8*, i8** %16, align 8
  %104 = icmp eq i8* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i8*, i8** @conversion_error, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = call i32 (i8*, ...) @uprintf(i8* %106, i8* %107)
  br label %240

109:                                              ; preds = %100
  %110 = load i8*, i8** %14, align 8
  %111 = call i32* @_wfopen(i8* %110, i8* bitcast ([15 x i32]* @.str.3 to i8*))
  store i32* %111, i32** %21, align 8
  %112 = load i32*, i32** %21, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %115)
  br label %240

117:                                              ; preds = %109
  %118 = load i32*, i32** %21, align 8
  %119 = call i32 @fread(i8* %18, i64 1, i32 1, i32* %118)
  %120 = icmp ne i32 %119, 1
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = load i32*, i32** %21, align 8
  %123 = call i32 @feof(i32* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %121
  %126 = load i8*, i8** %7, align 8
  %127 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %126)
  br label %128

128:                                              ; preds = %125, %121
  br label %240

129:                                              ; preds = %117
  %130 = load i8, i8* %18, align 1
  %131 = sext i8 %130 to i32
  switch i32 %131, label %134 [
    i32 65279, label %132
    i32 48111, label %133
  ]

132:                                              ; preds = %129
  store i32 2, i32* %26, align 4
  br label %135

133:                                              ; preds = %129
  store i32 1, i32* %26, align 4
  br label %135

134:                                              ; preds = %129
  store i32 0, i32* %26, align 4
  br label %135

135:                                              ; preds = %134, %133, %132
  %136 = load i32*, i32** %21, align 8
  %137 = load i32, i32* @SEEK_SET, align 4
  %138 = call i32 @fseek(i32* %136, i32 0, i32 %137)
  %139 = load i8*, i8** %14, align 8
  %140 = call i32 @wcslen(i8* %139)
  %141 = add nsw i32 %140, 2
  %142 = call i64 @calloc(i32 %141, i32 1)
  %143 = inttoptr i64 %142 to i8*
  store i8* %143, i8** %15, align 8
  %144 = load i8*, i8** %15, align 8
  %145 = icmp eq i8* %144, null
  br i1 %145, label %146, label %148

146:                                              ; preds = %135
  %147 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  br label %240

148:                                              ; preds = %135
  %149 = load i8*, i8** %15, align 8
  %150 = load i8*, i8** %14, align 8
  %151 = call i32 @wcscpy(i8* %149, i8* %150)
  %152 = load i8*, i8** %15, align 8
  %153 = load i8*, i8** %15, align 8
  %154 = call i32 @wcslen(i8* %153)
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %152, i64 %155
  store i8 126, i8* %156, align 1
  %157 = load i8*, i8** %15, align 8
  %158 = load i32, i32* %26, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [3 x i8*], [3 x i8*]* %12, i64 0, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = call i32* @_wfopen(i8* %157, i8* %161)
  store i32* %162, i32** %22, align 8
  %163 = load i32*, i32** %22, align 8
  %164 = icmp eq i32* %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %148
  %166 = load i8*, i8** %7, align 8
  %167 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i8* %166)
  br label %240

168:                                              ; preds = %148
  br label %169

169:                                              ; preds = %221, %217, %206, %190, %168
  %170 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %171 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %172 = call i32 @ARRAYSIZE(i8* %171)
  %173 = load i32*, i32** %21, align 8
  %174 = call i32* @fgetws(i8* %170, i32 %172, i32* %173)
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %239

176:                                              ; preds = %169
  store i64 0, i64* %23, align 8
  %177 = load i64, i64* %23, align 8
  %178 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 %177
  %179 = load i32, i32* @wspace, align 4
  %180 = call i64 @wcsspn(i8* %178, i32 %179)
  %181 = load i64, i64* %23, align 8
  %182 = add i64 %181, %180
  store i64 %182, i64* %23, align 8
  %183 = load i64, i64* %23, align 8
  %184 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 %183
  %185 = load i8*, i8** %13, align 8
  %186 = load i8*, i8** %13, align 8
  %187 = call i32 @wcslen(i8* %186)
  %188 = call i64 @_wcsnicmp(i8* %184, i8* %185, i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %176
  %191 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %192 = load i32*, i32** %22, align 8
  %193 = call i32 @fputws(i8* %191, i32* %192)
  br label %169

194:                                              ; preds = %176
  %195 = load i8*, i8** %13, align 8
  %196 = call i32 @wcslen(i8* %195)
  %197 = sext i32 %196 to i64
  %198 = load i64, i64* %23, align 8
  %199 = add i64 %198, %197
  store i64 %199, i64* %23, align 8
  %200 = load i64, i64* %23, align 8
  %201 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 %200
  %202 = load i32, i32* @wspace, align 4
  %203 = call i64 @wcsspn(i8* %201, i32 %202)
  store i64 %203, i64* %24, align 8
  %204 = load i64, i64* %24, align 8
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %194
  br label %169

207:                                              ; preds = %194
  %208 = load i64, i64* %24, align 8
  %209 = load i64, i64* %23, align 8
  %210 = add i64 %209, %208
  store i64 %210, i64* %23, align 8
  %211 = load i64, i64* %23, align 8
  %212 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 %211
  %213 = load i8*, i8** %16, align 8
  %214 = call i8* @wcsstr(i8* %212, i8* %213)
  store i8* %214, i8** %20, align 8
  %215 = load i8*, i8** %20, align 8
  %216 = icmp eq i8* %215, null
  br i1 %216, label %217, label %221

217:                                              ; preds = %207
  %218 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %219 = load i32*, i32** %22, align 8
  %220 = call i32 @fputws(i8* %218, i32* %219)
  br label %169

221:                                              ; preds = %207
  %222 = load i8*, i8** %20, align 8
  %223 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %224 = ptrtoint i8* %222 to i64
  %225 = ptrtoint i8* %223 to i64
  %226 = sub i64 %224, %225
  %227 = load i8*, i8** %16, align 8
  %228 = call i32 @wcslen(i8* %227)
  %229 = sext i32 %228 to i64
  %230 = add nsw i64 %226, %229
  store i64 %230, i64* %23, align 8
  %231 = load i8*, i8** %20, align 8
  store i8 0, i8* %231, align 1
  %232 = load i32*, i32** %22, align 8
  %233 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %234 = load i8*, i8** %17, align 8
  %235 = load i64, i64* %23, align 8
  %236 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 %235
  %237 = call i32 @fwprintf_s(i32* %232, i8* bitcast ([7 x i32]* @.str.8 to i8*), i8* %233, i8* %234, i8* %236)
  %238 = load i8*, i8** %10, align 8
  store i8* %238, i8** %27, align 8
  br label %169

239:                                              ; preds = %169
  br label %240

240:                                              ; preds = %239, %165, %146, %128, %114, %105, %96, %87, %78
  %241 = load i32*, i32** %21, align 8
  %242 = icmp ne i32* %241, null
  br i1 %242, label %243, label %246

243:                                              ; preds = %240
  %244 = load i32*, i32** %21, align 8
  %245 = call i32 @fclose(i32* %244)
  br label %246

246:                                              ; preds = %243, %240
  %247 = load i32*, i32** %22, align 8
  %248 = icmp ne i32* %247, null
  br i1 %248, label %249, label %252

249:                                              ; preds = %246
  %250 = load i32*, i32** %22, align 8
  %251 = call i32 @fclose(i32* %250)
  br label %252

252:                                              ; preds = %249, %246
  %253 = load i8*, i8** %27, align 8
  %254 = icmp ne i8* %253, null
  br i1 %254, label %255, label %312

255:                                              ; preds = %252
  %256 = load i8*, i8** %15, align 8
  %257 = call i32* @_wfopen(i8* %256, i8* bitcast ([3 x i32]* @.str.9 to i8*))
  store i32* %257, i32** %21, align 8
  %258 = load i8*, i8** %14, align 8
  %259 = call i32* @_wfopen(i8* %258, i8* bitcast ([3 x i32]* @.str.10 to i8*))
  store i32* %259, i32** %22, align 8
  %260 = load i32*, i32** %21, align 8
  %261 = icmp ne i32* %260, null
  br i1 %261, label %262, label %296

262:                                              ; preds = %255
  %263 = load i32*, i32** %22, align 8
  %264 = icmp ne i32* %263, null
  br i1 %264, label %265, label %296

265:                                              ; preds = %262
  %266 = load i32, i32* %26, align 4
  %267 = icmp eq i32 %266, 2
  %268 = zext i1 %267 to i64
  %269 = select i1 %267, i32 2, i32 1
  %270 = sext i32 %269 to i64
  store i64 %270, i64* %25, align 8
  br label %271

271:                                              ; preds = %290, %265
  %272 = getelementptr inbounds [2 x i8], [2 x i8]* %28, i64 0, i64 0
  %273 = load i64, i64* %25, align 8
  %274 = load i32*, i32** %21, align 8
  %275 = call i32 @fread(i8* %272, i64 %273, i32 1, i32* %274)
  %276 = icmp eq i32 %275, 1
  br i1 %276, label %277, label %291

277:                                              ; preds = %271
  %278 = load i32, i32* %11, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %277
  %281 = getelementptr inbounds [2 x i8], [2 x i8]* %28, i64 0, i64 0
  %282 = load i8, i8* %281, align 1
  %283 = sext i8 %282 to i32
  %284 = icmp ne i32 %283, 13
  br i1 %284, label %285, label %290

285:                                              ; preds = %280, %277
  %286 = getelementptr inbounds [2 x i8], [2 x i8]* %28, i64 0, i64 0
  %287 = load i64, i64* %25, align 8
  %288 = load i32*, i32** %22, align 8
  %289 = call i32 @fwrite(i8* %286, i64 %287, i32 1, i32* %288)
  br label %290

290:                                              ; preds = %285, %280
  br label %271

291:                                              ; preds = %271
  %292 = load i32*, i32** %21, align 8
  %293 = call i32 @fclose(i32* %292)
  %294 = load i32*, i32** %22, align 8
  %295 = call i32 @fclose(i32* %294)
  br label %311

296:                                              ; preds = %262, %255
  %297 = load i8*, i8** %7, align 8
  %298 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.11, i64 0, i64 0), i8* %297)
  store i8* null, i8** %27, align 8
  %299 = load i32*, i32** %21, align 8
  %300 = icmp ne i32* %299, null
  br i1 %300, label %301, label %304

301:                                              ; preds = %296
  %302 = load i32*, i32** %21, align 8
  %303 = call i32 @fclose(i32* %302)
  br label %304

304:                                              ; preds = %301, %296
  %305 = load i32*, i32** %22, align 8
  %306 = icmp ne i32* %305, null
  br i1 %306, label %307, label %310

307:                                              ; preds = %304
  %308 = load i32*, i32** %22, align 8
  %309 = call i32 @fclose(i32* %308)
  br label %310

310:                                              ; preds = %307, %304
  br label %311

311:                                              ; preds = %310, %291
  br label %312

312:                                              ; preds = %311, %252
  %313 = load i8*, i8** %15, align 8
  %314 = icmp ne i8* %313, null
  br i1 %314, label %315, label %318

315:                                              ; preds = %312
  %316 = load i8*, i8** %15, align 8
  %317 = call i32 @_wunlink(i8* %316)
  br label %318

318:                                              ; preds = %315, %312
  %319 = load i8*, i8** %14, align 8
  %320 = call i32 @safe_free(i8* %319)
  %321 = load i8*, i8** %15, align 8
  %322 = call i32 @safe_free(i8* %321)
  %323 = load i8*, i8** %13, align 8
  %324 = call i32 @safe_free(i8* %323)
  %325 = load i8*, i8** %16, align 8
  %326 = call i32 @safe_free(i8* %325)
  %327 = load i8*, i8** %17, align 8
  %328 = call i32 @safe_free(i8* %327)
  %329 = load i8*, i8** %27, align 8
  store i8* %329, i8** %6, align 8
  br label %330

330:                                              ; preds = %318, %72, %66, %41
  %331 = load i8*, i8** %6, align 8
  ret i8* %331
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i8* @utf8_to_wchar(i8*) #2

declare dso_local i32 @uprintf(i8*, ...) #2

declare dso_local i32* @_wfopen(i8*, i8*) #2

declare dso_local i32 @fread(i8*, i64, i32, i32*) #2

declare dso_local i32 @feof(i32*) #2

declare dso_local i32 @fseek(i32*, i32, i32) #2

declare dso_local i64 @calloc(i32, i32) #2

declare dso_local i32 @wcslen(i8*) #2

declare dso_local i32 @wcscpy(i8*, i8*) #2

declare dso_local i32* @fgetws(i8*, i32, i32*) #2

declare dso_local i32 @ARRAYSIZE(i8*) #2

declare dso_local i64 @wcsspn(i8*, i32) #2

declare dso_local i64 @_wcsnicmp(i8*, i8*, i32) #2

declare dso_local i32 @fputws(i8*, i32*) #2

declare dso_local i8* @wcsstr(i8*, i8*) #2

declare dso_local i32 @fwprintf_s(i32*, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @fwrite(i8*, i64, i32, i32*) #2

declare dso_local i32 @_wunlink(i8*) #2

declare dso_local i32 @safe_free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
