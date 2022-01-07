; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_fgetwc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_fgetwc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_fgetwc.mytext = internal constant [22 x i8] c"This is test_fgetwc\0D\0A\00", align 16
@BUFSIZ = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"wne\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"ftell expected %d got %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"fgetwc difference found in TEXT mode\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Carriage return was not skipped\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"fgetc expected %d got %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"expected carriage return got %04hx\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"expected newline got %04hx\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Char %d expected %04hx got %04hx\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"fgetwc difference found in BINARY mode\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Should get newline\0A\00", align 1
@LLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_fgetwc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fgetwc() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = load i32, i32* @BUFSIZ, align 4
  %13 = add nsw i32 %12, 512
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %3, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %4, align 8
  store i8* null, i8** %5, align 8
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %8, align 4
  %19 = call i8* @_tempnam(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %19, i8** %1, align 8
  %20 = load i8*, i8** %1, align 8
  %21 = call i32* @fopen(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %21, i32** %2, align 8
  store i32 97, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %31, %0
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @BUFSIZ, align 4
  %25 = sub nsw i32 %24, 4
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @fputc(i32 %28, i32* %29)
  br label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %10, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %10, align 4
  br label %22

34:                                               ; preds = %22
  store i32 13, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @fputc(i32 %35, i32* %36)
  store i32 10, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @fputc(i32 %38, i32* %39)
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @fputs(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @test_fgetwc.mytext, i64 0, i64 0), i32* %41)
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @fclose(i32* %43)
  %45 = load i8*, i8** %1, align 8
  %46 = call i32* @fopen(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %46, i32** %2, align 8
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @fgetws(i8* %17, i32 512, i32* %47)
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @ftell(i32* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @BUFSIZ, align 4
  %53 = sub nsw i32 %52, 2
  %54 = icmp eq i32 %51, %53
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* @BUFSIZ, align 4
  %57 = sub nsw i32 %56, 2
  %58 = load i32, i32* %11, align 4
  %59 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 @fgetws(i8* %17, i32 512, i32* %60)
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @ftell(i32* %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @BUFSIZ, align 4
  %66 = sub nsw i32 %65, 2
  %67 = call i32 @strlen(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @test_fgetwc.mytext, i64 0, i64 0))
  %68 = add nsw i32 %66, %67
  %69 = icmp eq i32 %64, %68
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* @BUFSIZ, align 4
  %72 = sub nsw i32 %71, 2
  %73 = call i32 @lstrlenA(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @test_fgetwc.mytext, i64 0, i64 0))
  %74 = add nsw i32 %72, %73
  %75 = load i32, i32* %11, align 4
  %76 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %74, i32 %75)
  %77 = call i8* @AtoW(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @test_fgetwc.mytext, i64 0, i64 0))
  store i8* %77, i8** %5, align 8
  %78 = load i8*, i8** %5, align 8
  store i8* %78, i8** %6, align 8
  store i8* %17, i8** %7, align 8
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %95, %34
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @strlen(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @test_fgetwc.mytext, i64 0, i64 0))
  %82 = sub nsw i32 %81, 2
  %83 = icmp ult i32 %80, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %79
  %85 = load i8*, i8** %6, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = load i8*, i8** %7, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %87, %90
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* %8, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %84
  %96 = load i32, i32* %10, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %10, align 4
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %6, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %7, align 8
  br label %79

102:                                              ; preds = %79
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %108 = load i8*, i8** %7, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 10
  %112 = zext i1 %111 to i32
  %113 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %114 = load i32*, i32** %2, align 8
  %115 = call i32 @fclose(i32* %114)
  %116 = load i8*, i8** %1, align 8
  %117 = call i32 @unlink(i8* %116)
  %118 = load i8*, i8** %1, align 8
  %119 = call i32* @fopen(i8* %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %119, i32** %2, align 8
  store i32 97, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %120

120:                                              ; preds = %135, %102
  %121 = load i32, i32* %10, align 4
  %122 = zext i32 %121 to i64
  %123 = load i32, i32* @BUFSIZ, align 4
  %124 = sub nsw i32 %123, 3
  %125 = sext i32 %124 to i64
  %126 = call i32 @strlen(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @test_fgetwc.mytext, i64 0, i64 0))
  %127 = sext i32 %126 to i64
  %128 = mul i64 %127, 1
  %129 = sub i64 %125, %128
  %130 = icmp ult i64 %122, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %120
  %132 = load i32, i32* %9, align 4
  %133 = load i32*, i32** %2, align 8
  %134 = call i32 @fputc(i32 %132, i32* %133)
  br label %135

135:                                              ; preds = %131
  %136 = load i32, i32* %10, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %10, align 4
  br label %120

138:                                              ; preds = %120
  store i32 13, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load i32*, i32** %2, align 8
  %141 = call i32 @fputwc(i32 %139, i32* %140)
  store i32 10, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load i32*, i32** %2, align 8
  %144 = call i32 @fputwc(i32 %142, i32* %143)
  %145 = load i32*, i32** %2, align 8
  %146 = call i32 @fputws(i8* %17, i32* %145)
  %147 = load i32*, i32** %2, align 8
  %148 = call i32 @fputws(i8* %17, i32* %147)
  %149 = load i32*, i32** %2, align 8
  %150 = call i32 @fclose(i32* %149)
  %151 = load i8*, i8** %1, align 8
  %152 = call i32* @fopen(i8* %151, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32* %152, i32** %2, align 8
  %153 = load i32, i32* @BUFSIZ, align 4
  %154 = sub nsw i32 %153, 2
  %155 = sext i32 %154 to i64
  %156 = udiv i64 %155, 1
  %157 = call i32 @strlen(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @test_fgetwc.mytext, i64 0, i64 0))
  %158 = sext i32 %157 to i64
  %159 = sub i64 %156, %158
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %9, align 4
  %162 = load i32*, i32** %2, align 8
  %163 = call i32 @fgetws(i8* %17, i32 %161, i32* %162)
  %164 = load i32*, i32** %2, align 8
  %165 = call i32 @ftell(i32* %164)
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %9, align 4
  %167 = sub nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = mul i64 %168, 1
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* %9, align 4
  %173 = icmp eq i32 %171, %172
  %174 = zext i1 %173 to i32
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %11, align 4
  %177 = call i32 (i32, i8*, ...) @ok(i32 %174, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %175, i32 %176)
  %178 = load i32*, i32** %2, align 8
  %179 = call i32 @fgetc(i32* %178)
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %10, align 4
  %181 = icmp eq i32 %180, 97
  %182 = zext i1 %181 to i32
  %183 = load i32, i32* %10, align 4
  %184 = call i32 (i32, i8*, ...) @ok(i32 %182, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 97, i32 %183)
  %185 = load i32*, i32** %2, align 8
  %186 = call i32 @ftell(i32* %185)
  store i32 %186, i32* %11, align 4
  %187 = load i32, i32* %9, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %9, align 4
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* %9, align 4
  %191 = icmp eq i32 %189, %190
  %192 = zext i1 %191 to i32
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* %11, align 4
  %195 = call i32 (i32, i8*, ...) @ok(i32 %192, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %193, i32 %194)
  %196 = load i32*, i32** %2, align 8
  %197 = call i32 @fgetws(i8* %17, i32 3, i32* %196)
  %198 = getelementptr inbounds i8, i8* %17, i64 0
  %199 = load i8, i8* %198, align 16
  %200 = sext i8 %199 to i32
  %201 = icmp eq i32 %200, 13
  %202 = zext i1 %201 to i32
  %203 = getelementptr inbounds i8, i8* %17, i64 0
  %204 = load i8, i8* %203, align 16
  %205 = sext i8 %204 to i32
  %206 = call i32 (i32, i8*, ...) @ok(i32 %202, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %205)
  %207 = getelementptr inbounds i8, i8* %17, i64 1
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp eq i32 %209, 10
  %211 = zext i1 %210 to i32
  %212 = getelementptr inbounds i8, i8* %17, i64 1
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = call i32 (i32, i8*, ...) @ok(i32 %211, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %214)
  %216 = load i32*, i32** %2, align 8
  %217 = call i32 @ftell(i32* %216)
  store i32 %217, i32* %11, align 4
  %218 = load i32, i32* %9, align 4
  %219 = add nsw i32 %218, 4
  store i32 %219, i32* %9, align 4
  %220 = load i32, i32* %11, align 4
  %221 = load i32, i32* %9, align 4
  %222 = icmp eq i32 %220, %221
  %223 = zext i1 %222 to i32
  %224 = load i32, i32* %9, align 4
  %225 = load i32, i32* %11, align 4
  %226 = call i32 (i32, i8*, ...) @ok(i32 %223, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %224, i32 %225)
  store i32 0, i32* %10, align 4
  br label %227

227:                                              ; preds = %235, %138
  %228 = load i32, i32* %10, align 4
  %229 = call i32 @strlen(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @test_fgetwc.mytext, i64 0, i64 0))
  %230 = icmp ult i32 %228, %229
  br i1 %230, label %231, label %238

231:                                              ; preds = %227
  %232 = load i32, i32* %10, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %17, i64 %233
  store i8 0, i8* %234, align 1
  br label %235

235:                                              ; preds = %231
  %236 = load i32, i32* %10, align 4
  %237 = add i32 %236, 1
  store i32 %237, i32* %10, align 4
  br label %227

238:                                              ; preds = %227
  %239 = load i32*, i32** %2, align 8
  %240 = call i32 @fgetws(i8* %17, i32 512, i32* %239)
  %241 = load i32*, i32** %2, align 8
  %242 = call i32 @ftell(i32* %241)
  store i32 %242, i32* %11, align 4
  %243 = call i32 @strlen(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @test_fgetwc.mytext, i64 0, i64 0))
  %244 = sub nsw i32 %243, 1
  %245 = sext i32 %244 to i64
  %246 = mul i64 %245, 1
  %247 = load i32, i32* %9, align 4
  %248 = sext i32 %247 to i64
  %249 = add i64 %248, %246
  %250 = trunc i64 %249 to i32
  store i32 %250, i32* %9, align 4
  %251 = load i32, i32* %11, align 4
  %252 = load i32, i32* %9, align 4
  %253 = icmp eq i32 %251, %252
  %254 = zext i1 %253 to i32
  %255 = load i32, i32* %9, align 4
  %256 = load i32, i32* %11, align 4
  %257 = call i32 (i32, i8*, ...) @ok(i32 %254, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %255, i32 %256)
  %258 = load i32, i32* @FALSE, align 4
  store i32 %258, i32* %8, align 4
  %259 = load i8*, i8** %5, align 8
  store i8* %259, i8** %6, align 8
  store i8* %17, i8** %7, align 8
  store i32 0, i32* %10, align 4
  br label %260

260:                                              ; preds = %292, %238
  %261 = load i32, i32* %10, align 4
  %262 = call i32 @strlen(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @test_fgetwc.mytext, i64 0, i64 0))
  %263 = sub nsw i32 %262, 2
  %264 = icmp ult i32 %261, %263
  br i1 %264, label %265, label %299

265:                                              ; preds = %260
  %266 = load i8*, i8** %6, align 8
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  %269 = load i8*, i8** %7, align 8
  %270 = load i8, i8* %269, align 1
  %271 = sext i8 %270 to i32
  %272 = icmp eq i32 %268, %271
  %273 = zext i1 %272 to i32
  %274 = load i32, i32* %10, align 4
  %275 = load i8*, i8** %6, align 8
  %276 = load i8, i8* %275, align 1
  %277 = sext i8 %276 to i32
  %278 = load i8*, i8** %7, align 8
  %279 = load i8, i8* %278, align 1
  %280 = sext i8 %279 to i32
  %281 = call i32 (i32, i8*, ...) @ok(i32 %273, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 %274, i32 %277, i32 %280)
  %282 = load i8*, i8** %6, align 8
  %283 = load i8, i8* %282, align 1
  %284 = sext i8 %283 to i32
  %285 = load i8*, i8** %7, align 8
  %286 = load i8, i8* %285, align 1
  %287 = sext i8 %286 to i32
  %288 = icmp ne i32 %284, %287
  %289 = zext i1 %288 to i32
  %290 = load i32, i32* %8, align 4
  %291 = or i32 %290, %289
  store i32 %291, i32* %8, align 4
  br label %292

292:                                              ; preds = %265
  %293 = load i32, i32* %10, align 4
  %294 = add i32 %293, 1
  store i32 %294, i32* %10, align 4
  %295 = load i8*, i8** %6, align 8
  %296 = getelementptr inbounds i8, i8* %295, i32 1
  store i8* %296, i8** %6, align 8
  %297 = load i8*, i8** %7, align 8
  %298 = getelementptr inbounds i8, i8* %297, i32 1
  store i8* %298, i8** %7, align 8
  br label %260

299:                                              ; preds = %260
  %300 = load i32, i32* %8, align 4
  %301 = icmp ne i32 %300, 0
  %302 = xor i1 %301, true
  %303 = zext i1 %302 to i32
  %304 = call i32 (i32, i8*, ...) @ok(i32 %303, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  %305 = load i8*, i8** %7, align 8
  %306 = load i8, i8* %305, align 1
  %307 = sext i8 %306 to i32
  %308 = icmp eq i32 %307, 10
  %309 = zext i1 %308 to i32
  %310 = call i32 (i32, i8*, ...) @ok(i32 %309, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %311

311:                                              ; preds = %319, %299
  %312 = load i32, i32* %10, align 4
  %313 = call i32 @strlen(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @test_fgetwc.mytext, i64 0, i64 0))
  %314 = icmp ult i32 %312, %313
  br i1 %314, label %315, label %322

315:                                              ; preds = %311
  %316 = load i32, i32* %10, align 4
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds i8, i8* %17, i64 %317
  store i8 0, i8* %318, align 1
  br label %319

319:                                              ; preds = %315
  %320 = load i32, i32* %10, align 4
  %321 = add i32 %320, 1
  store i32 %321, i32* %10, align 4
  br label %311

322:                                              ; preds = %311
  %323 = load i32*, i32** %2, align 8
  %324 = call i32 @fgetws(i8* %17, i32 512, i32* %323)
  %325 = load i32, i32* @FALSE, align 4
  store i32 %325, i32* %8, align 4
  %326 = load i8*, i8** %5, align 8
  store i8* %326, i8** %6, align 8
  store i8* %17, i8** %7, align 8
  store i32 0, i32* %10, align 4
  br label %327

327:                                              ; preds = %359, %322
  %328 = load i32, i32* %10, align 4
  %329 = call i32 @strlen(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @test_fgetwc.mytext, i64 0, i64 0))
  %330 = sub nsw i32 %329, 2
  %331 = icmp ult i32 %328, %330
  br i1 %331, label %332, label %366

332:                                              ; preds = %327
  %333 = load i8*, i8** %6, align 8
  %334 = load i8, i8* %333, align 1
  %335 = sext i8 %334 to i32
  %336 = load i8*, i8** %7, align 8
  %337 = load i8, i8* %336, align 1
  %338 = sext i8 %337 to i32
  %339 = icmp eq i32 %335, %338
  %340 = zext i1 %339 to i32
  %341 = load i32, i32* %10, align 4
  %342 = load i8*, i8** %6, align 8
  %343 = load i8, i8* %342, align 1
  %344 = sext i8 %343 to i32
  %345 = load i8*, i8** %7, align 8
  %346 = load i8, i8* %345, align 1
  %347 = sext i8 %346 to i32
  %348 = call i32 (i32, i8*, ...) @ok(i32 %340, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 %341, i32 %344, i32 %347)
  %349 = load i8*, i8** %6, align 8
  %350 = load i8, i8* %349, align 1
  %351 = sext i8 %350 to i32
  %352 = load i8*, i8** %7, align 8
  %353 = load i8, i8* %352, align 1
  %354 = sext i8 %353 to i32
  %355 = icmp ne i32 %351, %354
  %356 = zext i1 %355 to i32
  %357 = load i32, i32* %8, align 4
  %358 = or i32 %357, %356
  store i32 %358, i32* %8, align 4
  br label %359

359:                                              ; preds = %332
  %360 = load i32, i32* %10, align 4
  %361 = add i32 %360, 1
  store i32 %361, i32* %10, align 4
  %362 = load i8*, i8** %6, align 8
  %363 = getelementptr inbounds i8, i8* %362, i32 1
  store i8* %363, i8** %6, align 8
  %364 = load i8*, i8** %7, align 8
  %365 = getelementptr inbounds i8, i8* %364, i32 1
  store i8* %365, i8** %7, align 8
  br label %327

366:                                              ; preds = %327
  %367 = load i32, i32* %8, align 4
  %368 = icmp ne i32 %367, 0
  %369 = xor i1 %368, true
  %370 = zext i1 %369 to i32
  %371 = call i32 (i32, i8*, ...) @ok(i32 %370, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  %372 = load i8*, i8** %7, align 8
  %373 = load i8, i8* %372, align 1
  %374 = sext i8 %373 to i32
  %375 = icmp eq i32 %374, 10
  %376 = zext i1 %375 to i32
  %377 = call i32 (i32, i8*, ...) @ok(i32 %376, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  %378 = load i8*, i8** %5, align 8
  %379 = call i32 @free(i8* %378)
  %380 = load i32*, i32** %2, align 8
  %381 = call i32 @fclose(i32* %380)
  %382 = load i8*, i8** %1, align 8
  %383 = call i32 @unlink(i8* %382)
  %384 = load i8*, i8** %1, align 8
  %385 = call i32 @free(i8* %384)
  %386 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %386)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @_tempnam(i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fputc(i32, i32*) #2

declare dso_local i32 @fputs(i8*, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @fgetws(i8*, i32, i32*) #2

declare dso_local i32 @ftell(i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @lstrlenA(i8*) #2

declare dso_local i8* @AtoW(i8*) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @fputwc(i32, i32*) #2

declare dso_local i32 @fputws(i8*, i32*) #2

declare dso_local i32 @fgetc(i32*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
