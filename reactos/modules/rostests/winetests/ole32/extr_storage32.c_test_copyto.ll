; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_copyto.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_copyto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@file1_name = common dso_local global i32 0, align 4
@STGM_CREATE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"StgCreateDocfile failed: 0x%08x\0A\00", align 1
@file2_name = common dso_local global i32 0, align 4
@STG_E_INVALIDPOINTER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"CopyTo should give STG_E_INVALIDPONITER, gave: 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"CopyTo failed: 0x%08x\0A\00", align 1
@stgA_name = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"OpenStorage failed: 0x%08x\0A\00", align 1
@strmA_name = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"OpenStream failed: 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Read failed: 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Expected %s to be read, got %s\0A\00", align 1
@stgB_name = common dso_local global i32 0, align 4
@strmB_name = common dso_local global i32* null, align 8
@strmC_name = common dso_local global i32* null, align 8
@file1_nameA = common dso_local global i32 0, align 4
@file2_nameA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_copyto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_copyto() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [64 x i32], align 16
  %6 = alloca i64, align 8
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  %7 = load i32, i32* @file1_name, align 4
  %8 = load i32, i32* @STGM_CREATE, align 4
  %9 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @STGM_READWRITE, align 4
  %12 = or i32 %10, %11
  %13 = call i64 @StgCreateDocfile(i32 %7, i32 %12, i32 0, i32** %1)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @S_OK, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %6, align 8
  %19 = call i32 (i32, i8*, i64, ...) @ok(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @FAILED(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %0
  br label %248

24:                                               ; preds = %0
  %25 = load i32*, i32** %1, align 8
  %26 = call i64 @create_test_file(i32* %25)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @FAILED(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %248

31:                                               ; preds = %24
  %32 = load i32, i32* @file2_name, align 4
  %33 = load i32, i32* @STGM_CREATE, align 4
  %34 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @STGM_READWRITE, align 4
  %37 = or i32 %35, %36
  %38 = call i64 @StgCreateDocfile(i32 %32, i32 %37, i32 0, i32** %2)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @S_OK, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %6, align 8
  %44 = call i32 (i32, i8*, i64, ...) @ok(i32 %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %43)
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @FAILED(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %31
  br label %248

49:                                               ; preds = %31
  %50 = load i32*, i32** %1, align 8
  %51 = call i64 @IStorage_CopyTo(i32* %50, i32 0, i32* null, i32* null, i32* null)
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @STG_E_INVALIDPOINTER, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i64, i64* %6, align 8
  %57 = call i32 (i32, i8*, i64, ...) @ok(i32 %55, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  %58 = load i32*, i32** %1, align 8
  %59 = load i32*, i32** %2, align 8
  %60 = call i64 @IStorage_CopyTo(i32* %58, i32 0, i32* null, i32* null, i32* %59)
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @S_OK, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i64, i64* %6, align 8
  %66 = call i32 (i32, i8*, i64, ...) @ok(i32 %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %65)
  %67 = load i64, i64* %6, align 8
  %68 = call i64 @FAILED(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %49
  br label %248

71:                                               ; preds = %49
  %72 = load i32*, i32** %2, align 8
  %73 = load i32, i32* @stgA_name, align 4
  %74 = load i32, i32* @STGM_READWRITE, align 4
  %75 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %76 = or i32 %74, %75
  %77 = call i64 @IStorage_OpenStorage(i32* %72, i32 %73, i32* null, i32 %76, i32* null, i32 0, i32** %3)
  store i64 %77, i64* %6, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* @S_OK, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i64, i64* %6, align 8
  %83 = call i32 (i32, i8*, i64, ...) @ok(i32 %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %82)
  %84 = load i64, i64* %6, align 8
  %85 = call i64 @SUCCEEDED(i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %136

87:                                               ; preds = %71
  %88 = load i32*, i32** %3, align 8
  %89 = load i32*, i32** @strmA_name, align 8
  %90 = load i32, i32* @STGM_READWRITE, align 4
  %91 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %92 = or i32 %90, %91
  %93 = call i64 @IStorage_OpenStream(i32* %88, i32* %89, i32* null, i32 %92, i32 0, i32** %4)
  store i64 %93, i64* %6, align 8
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* @S_OK, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i64, i64* %6, align 8
  %99 = call i32 (i32, i8*, i64, ...) @ok(i32 %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %98)
  %100 = load i64, i64* %6, align 8
  %101 = call i64 @SUCCEEDED(i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %133

103:                                              ; preds = %87
  %104 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %105 = call i32 @memset(i32* %104, i32 0, i32 256)
  %106 = load i32*, i32** %4, align 8
  %107 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %108 = call i64 @IStream_Read(i32* %106, i32* %107, i32 256, i32* null)
  store i64 %108, i64* %6, align 8
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* @S_OK, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = load i64, i64* %6, align 8
  %114 = call i32 (i32, i8*, i64, ...) @ok(i32 %112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %113)
  %115 = load i64, i64* %6, align 8
  %116 = call i64 @SUCCEEDED(i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %103
  %119 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %120 = load i32*, i32** @strmA_name, align 8
  %121 = call i64 @strcmp_ww(i32* %119, i32* %120)
  %122 = icmp eq i64 %121, 0
  %123 = zext i1 %122 to i32
  %124 = load i32*, i32** @strmA_name, align 8
  %125 = call i32 @wine_dbgstr_w(i32* %124)
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %128 = call i32 @wine_dbgstr_w(i32* %127)
  %129 = call i32 (i32, i8*, i64, ...) @ok(i32 %123, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i64 %126, i32 %128)
  br label %130

130:                                              ; preds = %118, %103
  %131 = load i32*, i32** %4, align 8
  %132 = call i32 @IStream_Release(i32* %131)
  br label %133

133:                                              ; preds = %130, %87
  %134 = load i32*, i32** %3, align 8
  %135 = call i32 @IStorage_Release(i32* %134)
  br label %136

136:                                              ; preds = %133, %71
  %137 = load i32*, i32** %2, align 8
  %138 = load i32, i32* @stgB_name, align 4
  %139 = load i32, i32* @STGM_READWRITE, align 4
  %140 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %141 = or i32 %139, %140
  %142 = call i64 @IStorage_OpenStorage(i32* %137, i32 %138, i32* null, i32 %141, i32* null, i32 0, i32** %3)
  store i64 %142, i64* %6, align 8
  %143 = load i64, i64* %6, align 8
  %144 = load i64, i64* @S_OK, align 8
  %145 = icmp eq i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = load i64, i64* %6, align 8
  %148 = call i32 (i32, i8*, i64, ...) @ok(i32 %146, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %147)
  %149 = load i64, i64* %6, align 8
  %150 = call i64 @SUCCEEDED(i64 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %201

152:                                              ; preds = %136
  %153 = load i32*, i32** %3, align 8
  %154 = load i32*, i32** @strmB_name, align 8
  %155 = load i32, i32* @STGM_READWRITE, align 4
  %156 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %157 = or i32 %155, %156
  %158 = call i64 @IStorage_OpenStream(i32* %153, i32* %154, i32* null, i32 %157, i32 0, i32** %4)
  store i64 %158, i64* %6, align 8
  %159 = load i64, i64* %6, align 8
  %160 = load i64, i64* @S_OK, align 8
  %161 = icmp eq i64 %159, %160
  %162 = zext i1 %161 to i32
  %163 = load i64, i64* %6, align 8
  %164 = call i32 (i32, i8*, i64, ...) @ok(i32 %162, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %163)
  %165 = load i64, i64* %6, align 8
  %166 = call i64 @SUCCEEDED(i64 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %198

168:                                              ; preds = %152
  %169 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %170 = call i32 @memset(i32* %169, i32 0, i32 256)
  %171 = load i32*, i32** %4, align 8
  %172 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %173 = call i64 @IStream_Read(i32* %171, i32* %172, i32 256, i32* null)
  store i64 %173, i64* %6, align 8
  %174 = load i64, i64* %6, align 8
  %175 = load i64, i64* @S_OK, align 8
  %176 = icmp eq i64 %174, %175
  %177 = zext i1 %176 to i32
  %178 = load i64, i64* %6, align 8
  %179 = call i32 (i32, i8*, i64, ...) @ok(i32 %177, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %178)
  %180 = load i64, i64* %6, align 8
  %181 = call i64 @SUCCEEDED(i64 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %195

183:                                              ; preds = %168
  %184 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %185 = load i32*, i32** @strmB_name, align 8
  %186 = call i64 @strcmp_ww(i32* %184, i32* %185)
  %187 = icmp eq i64 %186, 0
  %188 = zext i1 %187 to i32
  %189 = load i32*, i32** @strmB_name, align 8
  %190 = call i32 @wine_dbgstr_w(i32* %189)
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %193 = call i32 @wine_dbgstr_w(i32* %192)
  %194 = call i32 (i32, i8*, i64, ...) @ok(i32 %188, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i64 %191, i32 %193)
  br label %195

195:                                              ; preds = %183, %168
  %196 = load i32*, i32** %4, align 8
  %197 = call i32 @IStream_Release(i32* %196)
  br label %198

198:                                              ; preds = %195, %152
  %199 = load i32*, i32** %3, align 8
  %200 = call i32 @IStorage_Release(i32* %199)
  br label %201

201:                                              ; preds = %198, %136
  %202 = load i32*, i32** %2, align 8
  %203 = load i32*, i32** @strmC_name, align 8
  %204 = load i32, i32* @STGM_READWRITE, align 4
  %205 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %206 = or i32 %204, %205
  %207 = call i64 @IStorage_OpenStream(i32* %202, i32* %203, i32* null, i32 %206, i32 0, i32** %4)
  store i64 %207, i64* %6, align 8
  %208 = load i64, i64* %6, align 8
  %209 = load i64, i64* @S_OK, align 8
  %210 = icmp eq i64 %208, %209
  %211 = zext i1 %210 to i32
  %212 = load i64, i64* %6, align 8
  %213 = call i32 (i32, i8*, i64, ...) @ok(i32 %211, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %212)
  %214 = load i64, i64* %6, align 8
  %215 = call i64 @SUCCEEDED(i64 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %247

217:                                              ; preds = %201
  %218 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %219 = call i32 @memset(i32* %218, i32 0, i32 256)
  %220 = load i32*, i32** %4, align 8
  %221 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %222 = call i64 @IStream_Read(i32* %220, i32* %221, i32 256, i32* null)
  store i64 %222, i64* %6, align 8
  %223 = load i64, i64* %6, align 8
  %224 = load i64, i64* @S_OK, align 8
  %225 = icmp eq i64 %223, %224
  %226 = zext i1 %225 to i32
  %227 = load i64, i64* %6, align 8
  %228 = call i32 (i32, i8*, i64, ...) @ok(i32 %226, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %227)
  %229 = load i64, i64* %6, align 8
  %230 = call i64 @SUCCEEDED(i64 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %244

232:                                              ; preds = %217
  %233 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %234 = load i32*, i32** @strmC_name, align 8
  %235 = call i64 @strcmp_ww(i32* %233, i32* %234)
  %236 = icmp eq i64 %235, 0
  %237 = zext i1 %236 to i32
  %238 = load i32*, i32** @strmC_name, align 8
  %239 = call i32 @wine_dbgstr_w(i32* %238)
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %242 = call i32 @wine_dbgstr_w(i32* %241)
  %243 = call i32 (i32, i8*, i64, ...) @ok(i32 %237, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i64 %240, i32 %242)
  br label %244

244:                                              ; preds = %232, %217
  %245 = load i32*, i32** %4, align 8
  %246 = call i32 @IStream_Release(i32* %245)
  br label %247

247:                                              ; preds = %244, %201
  br label %248

248:                                              ; preds = %247, %70, %48, %30, %23
  %249 = load i32*, i32** %1, align 8
  %250 = icmp ne i32* %249, null
  br i1 %250, label %251, label %254

251:                                              ; preds = %248
  %252 = load i32*, i32** %1, align 8
  %253 = call i32 @IStorage_Release(i32* %252)
  br label %254

254:                                              ; preds = %251, %248
  %255 = load i32*, i32** %2, align 8
  %256 = icmp ne i32* %255, null
  br i1 %256, label %257, label %260

257:                                              ; preds = %254
  %258 = load i32*, i32** %2, align 8
  %259 = call i32 @IStorage_Release(i32* %258)
  br label %260

260:                                              ; preds = %257, %254
  %261 = load i32, i32* @file1_nameA, align 4
  %262 = call i32 @DeleteFileA(i32 %261)
  %263 = load i32, i32* @file2_nameA, align 4
  %264 = call i32 @DeleteFileA(i32 %263)
  ret void
}

declare dso_local i64 @StgCreateDocfile(i32, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @create_test_file(i32*) #1

declare dso_local i64 @IStorage_CopyTo(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i64 @IStorage_OpenStorage(i32*, i32, i32*, i32, i32*, i32, i32**) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @IStorage_OpenStream(i32*, i32*, i32*, i32, i32, i32**) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @IStream_Read(i32*, i32*, i32, i32*) #1

declare dso_local i64 @strcmp_ww(i32*, i32*) #1

declare dso_local i32 @wine_dbgstr_w(i32*) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i32 @IStorage_Release(i32*) #1

declare dso_local i32 @DeleteFileA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
