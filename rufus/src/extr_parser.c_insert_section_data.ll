; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_parser.c_insert_section_data.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_parser.c_insert_section_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i32] [i32 119, i32 0], align 4
@.str.1 = private unnamed_addr constant [13 x i32] [i32 119, i32 44, i32 32, i32 99, i32 99, i32 115, i32 61, i32 85, i32 84, i32 70, i32 45, i32 56, i32 0], align 4
@.str.2 = private unnamed_addr constant [16 x i32] [i32 119, i32 44, i32 32, i32 99, i32 99, i32 115, i32 61, i32 85, i32 84, i32 70, i32 45, i32 49, i32 54, i32 76, i32 69, i32 0], align 4
@__const.insert_section_data.outmode = private unnamed_addr constant [3 x i8*] [i8* bitcast ([2 x i32]* @.str to i8*), i8* bitcast ([13 x i32]* @.str.1 to i8*), i8* bitcast ([16 x i32]* @.str.2 to i8*)], align 16
@conversion_error = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [15 x i32] [i32 114, i32 44, i32 32, i32 99, i32 99, i32 115, i32 61, i32 85, i32 78, i32 73, i32 67, i32 79, i32 68, i32 69, i32 0], align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Could not open file '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Could not read file '%s'\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"Could not allocate space for temporary output name\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Could not open temporary output file '%s~'\0A\00", align 1
@wspace = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i32] [i32 37, i32 115, i32 10, i32 0], align 4
@.str.9 = private unnamed_addr constant [3 x i32] [i32 114, i32 98, i32 0], align 4
@.str.10 = private unnamed_addr constant [3 x i32] [i32 119, i32 98, i32 0], align 4
@.str.11 = private unnamed_addr constant [63 x i8] c"Could not write '%s' - original file has been left unmodified\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @insert_section_data(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [3 x i8*], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca [1024 x i8], align 16
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca [2 x i8], align 1
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %24 = bitcast [3 x i8*]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 bitcast ([3 x i8*]* @__const.insert_section_data.outmode to i8*), i64 24, i1 false)
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8 0, i8* %15, align 1
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i32 0, i32* %21, align 4
  store i8* null, i8** %22, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %4
  %28 = load i8*, i8** %7, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** %8, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %27, %4
  store i8* null, i8** %5, align 8
  br label %257

34:                                               ; preds = %30
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %34
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46, %40, %34
  store i8* null, i8** %5, align 8
  br label %257

53:                                               ; preds = %46
  %54 = load i8*, i8** %6, align 8
  %55 = call i8* @utf8_to_wchar(i8* %54)
  store i8* %55, i8** %12, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i8*, i8** @conversion_error, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 (i8*, ...) @uprintf(i8* %59, i8* %60)
  br label %169

62:                                               ; preds = %53
  %63 = load i8*, i8** %7, align 8
  %64 = call i8* @utf8_to_wchar(i8* %63)
  store i8* %64, i8** %11, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i8*, i8** @conversion_error, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 (i8*, ...) @uprintf(i8* %68, i8* %69)
  br label %169

71:                                               ; preds = %62
  %72 = load i8*, i8** %8, align 8
  %73 = call i8* @utf8_to_wchar(i8* %72)
  store i8* %73, i8** %14, align 8
  %74 = load i8*, i8** %14, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i8*, i8** @conversion_error, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 (i8*, ...) @uprintf(i8* %77, i8* %78)
  br label %169

80:                                               ; preds = %71
  %81 = load i8*, i8** %12, align 8
  %82 = call i32* @_wfopen(i8* %81, i8* bitcast ([15 x i32]* @.str.3 to i8*))
  store i32* %82, i32** %17, align 8
  %83 = load i32*, i32** %17, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %86)
  br label %169

88:                                               ; preds = %80
  %89 = load i32*, i32** %17, align 8
  %90 = call i32 @fread(i8* %15, i64 1, i32 1, i32* %89)
  %91 = icmp ne i32 %90, 1
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %93)
  br label %169

95:                                               ; preds = %88
  %96 = load i8, i8* %15, align 1
  %97 = sext i8 %96 to i32
  switch i32 %97, label %100 [
    i32 65279, label %98
    i32 48111, label %99
  ]

98:                                               ; preds = %95
  store i32 2, i32* %21, align 4
  br label %101

99:                                               ; preds = %95
  store i32 1, i32* %21, align 4
  br label %101

100:                                              ; preds = %95
  store i32 0, i32* %21, align 4
  br label %101

101:                                              ; preds = %100, %99, %98
  %102 = load i32*, i32** %17, align 8
  %103 = load i32, i32* @SEEK_SET, align 4
  %104 = call i32 @fseek(i32* %102, i32 0, i32 %103)
  %105 = load i8*, i8** %12, align 8
  %106 = call i64 @wcslen(i8* %105)
  %107 = add i64 %106, 2
  %108 = trunc i64 %107 to i32
  %109 = call i64 @calloc(i32 %108, i32 1)
  %110 = inttoptr i64 %109 to i8*
  store i8* %110, i8** %13, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = icmp eq i8* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %101
  %114 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  br label %169

115:                                              ; preds = %101
  %116 = load i8*, i8** %13, align 8
  %117 = load i8*, i8** %12, align 8
  %118 = call i32 @wcscpy(i8* %116, i8* %117)
  %119 = load i8*, i8** %13, align 8
  %120 = load i8*, i8** %13, align 8
  %121 = call i64 @wcslen(i8* %120)
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  store i8 126, i8* %122, align 1
  %123 = load i8*, i8** %13, align 8
  %124 = load i32, i32* %21, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = call i32* @_wfopen(i8* %123, i8* %127)
  store i32* %128, i32** %18, align 8
  %129 = load i32*, i32** %18, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %115
  %132 = load i8*, i8** %6, align 8
  %133 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i8* %132)
  br label %169

134:                                              ; preds = %115
  br label %135

135:                                              ; preds = %160, %156, %134
  %136 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %137 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %138 = call i32 @ARRAYSIZE(i8* %137)
  %139 = load i32*, i32** %17, align 8
  %140 = call i32* @fgetws(i8* %136, i32 %138, i32* %139)
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %168

142:                                              ; preds = %135
  store i64 0, i64* %19, align 8
  %143 = load i64, i64* %19, align 8
  %144 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 %143
  %145 = load i32, i32* @wspace, align 4
  %146 = call i64 @wcsspn(i8* %144, i32 %145)
  %147 = load i64, i64* %19, align 8
  %148 = add i64 %147, %146
  store i64 %148, i64* %19, align 8
  %149 = load i64, i64* %19, align 8
  %150 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 %149
  %151 = load i8*, i8** %11, align 8
  %152 = load i8*, i8** %11, align 8
  %153 = call i64 @wcslen(i8* %152)
  %154 = call i64 @_wcsnicmp(i8* %150, i8* %151, i64 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %142
  %157 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %158 = load i32*, i32** %18, align 8
  %159 = call i32 @fputws(i8* %157, i32* %158)
  br label %135

160:                                              ; preds = %142
  %161 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %162 = load i32*, i32** %18, align 8
  %163 = call i32 @fputws(i8* %161, i32* %162)
  %164 = load i32*, i32** %18, align 8
  %165 = load i8*, i8** %14, align 8
  %166 = call i32 @fwprintf_s(i32* %164, i8* bitcast ([4 x i32]* @.str.8 to i8*), i8* %165)
  %167 = load i8*, i8** %8, align 8
  store i8* %167, i8** %22, align 8
  br label %135

168:                                              ; preds = %135
  br label %169

169:                                              ; preds = %168, %131, %113, %92, %85, %76, %67, %58
  %170 = load i32*, i32** %17, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i32*, i32** %17, align 8
  %174 = call i32 @fclose(i32* %173)
  br label %175

175:                                              ; preds = %172, %169
  %176 = load i32*, i32** %18, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32*, i32** %18, align 8
  %180 = call i32 @fclose(i32* %179)
  br label %181

181:                                              ; preds = %178, %175
  %182 = load i8*, i8** %22, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %241

184:                                              ; preds = %181
  %185 = load i8*, i8** %13, align 8
  %186 = call i32* @_wfopen(i8* %185, i8* bitcast ([3 x i32]* @.str.9 to i8*))
  store i32* %186, i32** %17, align 8
  %187 = load i8*, i8** %12, align 8
  %188 = call i32* @_wfopen(i8* %187, i8* bitcast ([3 x i32]* @.str.10 to i8*))
  store i32* %188, i32** %18, align 8
  %189 = load i32*, i32** %17, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %191, label %225

191:                                              ; preds = %184
  %192 = load i32*, i32** %18, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %225

194:                                              ; preds = %191
  %195 = load i32, i32* %21, align 4
  %196 = icmp eq i32 %195, 2
  %197 = zext i1 %196 to i64
  %198 = select i1 %196, i32 2, i32 1
  %199 = sext i32 %198 to i64
  store i64 %199, i64* %20, align 8
  br label %200

200:                                              ; preds = %219, %194
  %201 = getelementptr inbounds [2 x i8], [2 x i8]* %23, i64 0, i64 0
  %202 = load i64, i64* %20, align 8
  %203 = load i32*, i32** %17, align 8
  %204 = call i32 @fread(i8* %201, i64 %202, i32 1, i32* %203)
  %205 = icmp eq i32 %204, 1
  br i1 %205, label %206, label %220

206:                                              ; preds = %200
  %207 = load i32, i32* %9, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %206
  %210 = getelementptr inbounds [2 x i8], [2 x i8]* %23, i64 0, i64 0
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp ne i32 %212, 13
  br i1 %213, label %214, label %219

214:                                              ; preds = %209, %206
  %215 = getelementptr inbounds [2 x i8], [2 x i8]* %23, i64 0, i64 0
  %216 = load i64, i64* %20, align 8
  %217 = load i32*, i32** %18, align 8
  %218 = call i32 @fwrite(i8* %215, i64 %216, i32 1, i32* %217)
  br label %219

219:                                              ; preds = %214, %209
  br label %200

220:                                              ; preds = %200
  %221 = load i32*, i32** %17, align 8
  %222 = call i32 @fclose(i32* %221)
  %223 = load i32*, i32** %18, align 8
  %224 = call i32 @fclose(i32* %223)
  br label %240

225:                                              ; preds = %191, %184
  %226 = load i8*, i8** %6, align 8
  %227 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.11, i64 0, i64 0), i8* %226)
  store i8* null, i8** %22, align 8
  %228 = load i32*, i32** %17, align 8
  %229 = icmp ne i32* %228, null
  br i1 %229, label %230, label %233

230:                                              ; preds = %225
  %231 = load i32*, i32** %17, align 8
  %232 = call i32 @fclose(i32* %231)
  br label %233

233:                                              ; preds = %230, %225
  %234 = load i32*, i32** %18, align 8
  %235 = icmp ne i32* %234, null
  br i1 %235, label %236, label %239

236:                                              ; preds = %233
  %237 = load i32*, i32** %18, align 8
  %238 = call i32 @fclose(i32* %237)
  br label %239

239:                                              ; preds = %236, %233
  br label %240

240:                                              ; preds = %239, %220
  br label %241

241:                                              ; preds = %240, %181
  %242 = load i8*, i8** %13, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %244, label %247

244:                                              ; preds = %241
  %245 = load i8*, i8** %13, align 8
  %246 = call i32 @_wunlink(i8* %245)
  br label %247

247:                                              ; preds = %244, %241
  %248 = load i8*, i8** %12, align 8
  %249 = call i32 @safe_free(i8* %248)
  %250 = load i8*, i8** %13, align 8
  %251 = call i32 @safe_free(i8* %250)
  %252 = load i8*, i8** %11, align 8
  %253 = call i32 @safe_free(i8* %252)
  %254 = load i8*, i8** %14, align 8
  %255 = call i32 @safe_free(i8* %254)
  %256 = load i8*, i8** %22, align 8
  store i8* %256, i8** %5, align 8
  br label %257

257:                                              ; preds = %247, %52, %33
  %258 = load i8*, i8** %5, align 8
  ret i8* %258
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

declare dso_local i64 @_wcsnicmp(i8*, i8*, i64) #2

declare dso_local i32 @fputws(i8*, i32*) #2

declare dso_local i32 @fwprintf_s(i32*, i8*, i8*) #2

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
