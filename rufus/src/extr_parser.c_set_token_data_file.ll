; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_parser.c_set_token_data_file.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_parser.c_set_token_data_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i32] [i32 119, i32 0], align 4
@.str.1 = private unnamed_addr constant [13 x i32] [i32 119, i32 44, i32 32, i32 99, i32 99, i32 115, i32 61, i32 85, i32 84, i32 70, i32 45, i32 56, i32 0], align 4
@.str.2 = private unnamed_addr constant [16 x i32] [i32 119, i32 44, i32 32, i32 99, i32 99, i32 115, i32 61, i32 85, i32 84, i32 70, i32 45, i32 49, i32 54, i32 76, i32 69, i32 0], align 4
@__const.set_token_data_file.outmode = private unnamed_addr constant [3 x i8*] [i8* bitcast ([2 x i32]* @.str to i8*), i8* bitcast ([13 x i32]* @.str.1 to i8*), i8* bitcast ([16 x i32]* @.str.2 to i8*)], align 16
@conversion_error = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [15 x i32] [i32 114, i32 44, i32 32, i32 99, i32 99, i32 115, i32 61, i32 85, i32 78, i32 73, i32 67, i32 79, i32 68, i32 69, i32 0], align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Could not open file '%s'\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"Could not allocate space for temporary output name\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Could not open temporary output file '%s~'\0A\00", align 1
@wspace = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i32] [i32 37, i32 115, i32 10, i32 0], align 4
@.str.8 = private unnamed_addr constant [9 x i32] [i32 37, i32 115, i32 32, i32 61, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.9 = private unnamed_addr constant [3 x i32] [i32 114, i32 98, i32 0], align 4
@.str.10 = private unnamed_addr constant [3 x i32] [i32 119, i32 98, i32 0], align 4
@.str.11 = private unnamed_addr constant [63 x i8] c"Could not write '%s' - original file has been left unmodified\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @set_token_data_file(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [3 x i8*], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca [1024 x i8], align 16
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca [2 x i8], align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %22 = bitcast [3 x i8*]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 bitcast ([3 x i8*]* @__const.set_token_data_file.outmode to i8*), i64 24, i1 false)
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8 0, i8* %13, align 1
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32 0, i32* %19, align 4
  store i8* null, i8** %20, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %3
  %26 = load i8*, i8** %5, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i8*, i8** %6, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %25, %3
  store i8* null, i8** %4, align 8
  br label %299

32:                                               ; preds = %28
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %32
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44, %38, %32
  store i8* null, i8** %4, align 8
  br label %299

51:                                               ; preds = %44
  %52 = load i8*, i8** %7, align 8
  %53 = call i8* @utf8_to_wchar(i8* %52)
  store i8* %53, i8** %10, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i8*, i8** @conversion_error, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 (i8*, ...) @uprintf(i8* %57, i8* %58)
  br label %220

60:                                               ; preds = %51
  %61 = load i8*, i8** %5, align 8
  %62 = call i8* @utf8_to_wchar(i8* %61)
  store i8* %62, i8** %9, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i8*, i8** @conversion_error, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 (i8*, ...) @uprintf(i8* %66, i8* %67)
  br label %220

69:                                               ; preds = %60
  %70 = load i8*, i8** %6, align 8
  %71 = call i8* @utf8_to_wchar(i8* %70)
  store i8* %71, i8** %12, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i8*, i8** @conversion_error, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 (i8*, ...) @uprintf(i8* %75, i8* %76)
  br label %220

78:                                               ; preds = %69
  %79 = load i8*, i8** %10, align 8
  %80 = call i32* @_wfopen(i8* %79, i8* bitcast ([15 x i32]* @.str.3 to i8*))
  store i32* %80, i32** %15, align 8
  %81 = load i32*, i32** %15, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %84)
  br label %220

86:                                               ; preds = %78
  %87 = load i32*, i32** %15, align 8
  %88 = call i32 @fread(i8* %13, i64 1, i32 1, i32* %87)
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = load i8, i8* %13, align 1
  %92 = sext i8 %91 to i32
  switch i32 %92, label %95 [
    i32 65279, label %93
    i32 48111, label %94
  ]

93:                                               ; preds = %90
  store i32 2, i32* %19, align 4
  br label %96

94:                                               ; preds = %90
  store i32 1, i32* %19, align 4
  br label %96

95:                                               ; preds = %90
  store i32 0, i32* %19, align 4
  br label %96

96:                                               ; preds = %95, %94, %93
  %97 = load i32*, i32** %15, align 8
  %98 = load i32, i32* @SEEK_SET, align 4
  %99 = call i32 @fseek(i32* %97, i32 0, i32 %98)
  br label %100

100:                                              ; preds = %96, %86
  %101 = load i8*, i8** %10, align 8
  %102 = call i64 @wcslen(i8* %101)
  %103 = add i64 %102, 2
  %104 = trunc i64 %103 to i32
  %105 = call i64 @calloc(i32 %104, i32 1)
  %106 = inttoptr i64 %105 to i8*
  store i8* %106, i8** %11, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %100
  %110 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  br label %220

111:                                              ; preds = %100
  %112 = load i8*, i8** %11, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = call i32 @wcscpy(i8* %112, i8* %113)
  %115 = load i8*, i8** %11, align 8
  %116 = load i8*, i8** %11, align 8
  %117 = call i64 @wcslen(i8* %116)
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  store i8 126, i8* %118, align 1
  %119 = load i8*, i8** %11, align 8
  %120 = load i32, i32* %19, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = call i32* @_wfopen(i8* %119, i8* %123)
  store i32* %124, i32** %16, align 8
  %125 = load i32*, i32** %16, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %111
  %128 = load i8*, i8** %7, align 8
  %129 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i8* %128)
  br label %220

130:                                              ; preds = %111
  br label %131

131:                                              ; preds = %192, %188, %168, %156, %130
  %132 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %133 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %134 = call i32 @ARRAYSIZE(i8* %133)
  %135 = load i32*, i32** %15, align 8
  %136 = call i32* @fgetws(i8* %132, i32 %134, i32* %135)
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %210

138:                                              ; preds = %131
  store i64 0, i64* %17, align 8
  %139 = load i64, i64* %17, align 8
  %140 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 %139
  %141 = load i32, i32* @wspace, align 4
  %142 = call i64 @wcsspn(i8* %140, i32 %141)
  %143 = load i64, i64* %17, align 8
  %144 = add i64 %143, %142
  store i64 %144, i64* %17, align 8
  %145 = load i64, i64* %17, align 8
  %146 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 59
  br i1 %149, label %156, label %150

150:                                              ; preds = %138
  %151 = load i64, i64* %17, align 8
  %152 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 91
  br i1 %155, label %156, label %160

156:                                              ; preds = %150, %138
  %157 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %158 = load i32*, i32** %16, align 8
  %159 = call i32 @fputws(i8* %157, i32* %158)
  br label %131

160:                                              ; preds = %150
  %161 = load i64, i64* %17, align 8
  %162 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 %161
  %163 = load i8*, i8** %9, align 8
  %164 = load i8*, i8** %9, align 8
  %165 = call i64 @wcslen(i8* %164)
  %166 = call i64 @_wcsnicmp(i8* %162, i8* %163, i64 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %160
  %169 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %170 = load i32*, i32** %16, align 8
  %171 = call i32 @fputws(i8* %169, i32* %170)
  br label %131

172:                                              ; preds = %160
  %173 = load i8*, i8** %9, align 8
  %174 = call i64 @wcslen(i8* %173)
  %175 = load i64, i64* %17, align 8
  %176 = add i64 %175, %174
  store i64 %176, i64* %17, align 8
  %177 = load i64, i64* %17, align 8
  %178 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 %177
  %179 = load i32, i32* @wspace, align 4
  %180 = call i64 @wcsspn(i8* %178, i32 %179)
  %181 = load i64, i64* %17, align 8
  %182 = add i64 %181, %180
  store i64 %182, i64* %17, align 8
  %183 = load i64, i64* %17, align 8
  %184 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp ne i32 %186, 61
  br i1 %187, label %188, label %192

188:                                              ; preds = %172
  %189 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %190 = load i32*, i32** %16, align 8
  %191 = call i32 @fputws(i8* %189, i32* %190)
  br label %131

192:                                              ; preds = %172
  %193 = load i64, i64* %17, align 8
  %194 = add i64 %193, 1
  store i64 %194, i64* %17, align 8
  %195 = load i64, i64* %17, align 8
  %196 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 %195
  %197 = load i32, i32* @wspace, align 4
  %198 = call i64 @wcsspn(i8* %196, i32 %197)
  %199 = load i64, i64* %17, align 8
  %200 = add i64 %199, %198
  store i64 %200, i64* %17, align 8
  %201 = load i64, i64* %17, align 8
  %202 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 %201
  store i8 0, i8* %202, align 1
  %203 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %204 = load i32*, i32** %16, align 8
  %205 = call i32 @fputws(i8* %203, i32* %204)
  %206 = load i32*, i32** %16, align 8
  %207 = load i8*, i8** %12, align 8
  %208 = call i32 (i32*, i8*, i8*, ...) @fwprintf_s(i32* %206, i8* bitcast ([4 x i32]* @.str.7 to i8*), i8* %207)
  %209 = load i8*, i8** %6, align 8
  store i8* %209, i8** %20, align 8
  br label %131

210:                                              ; preds = %131
  %211 = load i8*, i8** %20, align 8
  %212 = icmp eq i8* %211, null
  br i1 %212, label %213, label %219

213:                                              ; preds = %210
  %214 = load i32*, i32** %16, align 8
  %215 = load i8*, i8** %9, align 8
  %216 = load i8*, i8** %12, align 8
  %217 = call i32 (i32*, i8*, i8*, ...) @fwprintf_s(i32* %214, i8* bitcast ([9 x i32]* @.str.8 to i8*), i8* %215, i8* %216)
  %218 = load i8*, i8** %6, align 8
  store i8* %218, i8** %20, align 8
  br label %219

219:                                              ; preds = %213, %210
  br label %220

220:                                              ; preds = %219, %127, %109, %83, %74, %65, %56
  %221 = load i32*, i32** %15, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load i32*, i32** %15, align 8
  %225 = call i32 @fclose(i32* %224)
  br label %226

226:                                              ; preds = %223, %220
  %227 = load i32*, i32** %16, align 8
  %228 = icmp ne i32* %227, null
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load i32*, i32** %16, align 8
  %231 = call i32 @fclose(i32* %230)
  br label %232

232:                                              ; preds = %229, %226
  %233 = load i8*, i8** %20, align 8
  %234 = icmp ne i8* %233, null
  br i1 %234, label %235, label %283

235:                                              ; preds = %232
  %236 = load i8*, i8** %11, align 8
  %237 = call i32* @_wfopen(i8* %236, i8* bitcast ([3 x i32]* @.str.9 to i8*))
  store i32* %237, i32** %15, align 8
  %238 = load i8*, i8** %10, align 8
  %239 = call i32* @_wfopen(i8* %238, i8* bitcast ([3 x i32]* @.str.10 to i8*))
  store i32* %239, i32** %16, align 8
  %240 = load i32*, i32** %15, align 8
  %241 = icmp ne i32* %240, null
  br i1 %241, label %242, label %267

242:                                              ; preds = %235
  %243 = load i32*, i32** %16, align 8
  %244 = icmp ne i32* %243, null
  br i1 %244, label %245, label %267

245:                                              ; preds = %242
  %246 = load i32, i32* %19, align 4
  %247 = icmp eq i32 %246, 2
  %248 = zext i1 %247 to i64
  %249 = select i1 %247, i32 2, i32 1
  %250 = sext i32 %249 to i64
  store i64 %250, i64* %18, align 8
  br label %251

251:                                              ; preds = %257, %245
  %252 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  %253 = load i64, i64* %18, align 8
  %254 = load i32*, i32** %15, align 8
  %255 = call i32 @fread(i8* %252, i64 %253, i32 1, i32* %254)
  %256 = icmp eq i32 %255, 1
  br i1 %256, label %257, label %262

257:                                              ; preds = %251
  %258 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  %259 = load i64, i64* %18, align 8
  %260 = load i32*, i32** %16, align 8
  %261 = call i32 @fwrite(i8* %258, i64 %259, i32 1, i32* %260)
  br label %251

262:                                              ; preds = %251
  %263 = load i32*, i32** %15, align 8
  %264 = call i32 @fclose(i32* %263)
  %265 = load i32*, i32** %16, align 8
  %266 = call i32 @fclose(i32* %265)
  br label %282

267:                                              ; preds = %242, %235
  %268 = load i8*, i8** %7, align 8
  %269 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.11, i64 0, i64 0), i8* %268)
  store i8* null, i8** %20, align 8
  %270 = load i32*, i32** %15, align 8
  %271 = icmp ne i32* %270, null
  br i1 %271, label %272, label %275

272:                                              ; preds = %267
  %273 = load i32*, i32** %15, align 8
  %274 = call i32 @fclose(i32* %273)
  br label %275

275:                                              ; preds = %272, %267
  %276 = load i32*, i32** %16, align 8
  %277 = icmp ne i32* %276, null
  br i1 %277, label %278, label %281

278:                                              ; preds = %275
  %279 = load i32*, i32** %16, align 8
  %280 = call i32 @fclose(i32* %279)
  br label %281

281:                                              ; preds = %278, %275
  br label %282

282:                                              ; preds = %281, %262
  br label %283

283:                                              ; preds = %282, %232
  %284 = load i8*, i8** %11, align 8
  %285 = icmp ne i8* %284, null
  br i1 %285, label %286, label %289

286:                                              ; preds = %283
  %287 = load i8*, i8** %11, align 8
  %288 = call i32 @_wunlink(i8* %287)
  br label %289

289:                                              ; preds = %286, %283
  %290 = load i8*, i8** %10, align 8
  %291 = call i32 @safe_free(i8* %290)
  %292 = load i8*, i8** %11, align 8
  %293 = call i32 @safe_free(i8* %292)
  %294 = load i8*, i8** %9, align 8
  %295 = call i32 @safe_free(i8* %294)
  %296 = load i8*, i8** %12, align 8
  %297 = call i32 @safe_free(i8* %296)
  %298 = load i8*, i8** %20, align 8
  store i8* %298, i8** %4, align 8
  br label %299

299:                                              ; preds = %289, %50, %31
  %300 = load i8*, i8** %4, align 8
  ret i8* %300
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @utf8_to_wchar(i8*) #2

declare dso_local i32 @uprintf(i8*, ...) #2

declare dso_local i32* @_wfopen(i8*, i8*) #2

declare dso_local i32 @fread(i8*, i64, i32, i32*) #2

declare dso_local i32 @fseek(i32*, i32, i32) #2

declare dso_local i64 @calloc(i32, i32) #2

declare dso_local i64 @wcslen(i8*) #2

declare dso_local i32 @wcscpy(i8*, i8*) #2

declare dso_local i32* @fgetws(i8*, i32, i32*) #2

declare dso_local i32 @ARRAYSIZE(i8*) #2

declare dso_local i64 @wcsspn(i8*, i32) #2

declare dso_local i32 @fputws(i8*, i32*) #2

declare dso_local i64 @_wcsnicmp(i8*, i8*, i64) #2

declare dso_local i32 @fwprintf_s(i32*, i8*, i8*, ...) #2

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
