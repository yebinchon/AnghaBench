; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_misc.c_test_FindMimeFromData.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_misc.c_test_FindMimeFromData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i8*, i32, i8*, i32, i32*, i32, i32 }

@test_FindMimeFromData.app_octet_streamW = internal constant [25 x i8] c"application/octet-stream\00", align 16
@test_FindMimeFromData.image_pjpegW = internal constant [12 x i8] c"image/pjpeg\00", align 1
@test_FindMimeFromData.text_htmlW = internal constant [10 x i8] c"text/html\00", align 1
@test_FindMimeFromData.text_plainW = internal constant [11 x i8] c"text/plain\00", align 1
@mime_tests = common dso_local global %struct.TYPE_4__* null, align 8
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"[%d] FindMimeFromData failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"[%d] wrong mime: %s\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"[%d] FindMimeFromData failed: %08x, expected %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"[%d] mime != 0xf0f0f0f0\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"application/octet-stream\00", align 1
@mime_tests2 = common dso_local global %struct.TYPE_4__* null, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"text/html\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"[%d] wrong mime, got %s\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [54 x i8] c"FindMimeFromData failed: %08x, expected E_INVALIDARG\0A\00", align 1
@data1 = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [48 x i8] c"FindMimeFromData failed: %08x, expected E_FAIL\0A\00", align 1
@url1 = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [31 x i8] c"FindMimeFromData failed: %08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"wrong mime: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_FindMimeFromData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_FindMimeFromData() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %168, %0
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %171

12:                                               ; preds = %7
  store i8* inttoptr (i64 4042322160 to i8*), i8** %1, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @a2w(i32 %18)
  store i8* %19, i8** %3, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @pFindMimeFromData(i32* null, i8* %20, i32* null, i32 0, i8* null, i32 0, i8** %1, i32 0)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %95

29:                                               ; preds = %12
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @S_OK, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %42, label %33

33:                                               ; preds = %29
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @broken(i32 %39)
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %33, %29
  %43 = phi i1 [ true, %29 ], [ %41, %33 ]
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 (i32, i8*, i32, ...) @ok(i32 %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @S_OK, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %94

51:                                               ; preds = %42
  %52 = load i8*, i8** %1, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @strcmp_wa(i8* %52, i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %51
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %80

69:                                               ; preds = %61
  %70 = load i8*, i8** %1, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strcmp_wa(i8* %70, i8* %76)
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  br label %80

80:                                               ; preds = %69, %61
  %81 = phi i1 [ false, %61 ], [ %79, %69 ]
  %82 = zext i1 %81 to i32
  %83 = call i64 @broken(i32 %82)
  %84 = icmp ne i64 %83, 0
  br label %85

85:                                               ; preds = %80, %51
  %86 = phi i1 [ true, %51 ], [ %84, %80 ]
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* %6, align 4
  %89 = load i8*, i8** %1, align 8
  %90 = call i32 @wine_dbgstr_w(i8* %89)
  %91 = call i32 (i32, i8*, i32, ...) @ok(i32 %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %90)
  %92 = load i8*, i8** %1, align 8
  %93 = call i32 @CoTaskMemFree(i8* %92)
  br label %94

94:                                               ; preds = %85, %42
  br label %125

95:                                               ; preds = %12
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @E_FAIL, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %108, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %4, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %100, %106
  br label %108

108:                                              ; preds = %99, %95
  %109 = phi i1 [ true, %95 ], [ %107, %99 ]
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %4, align 4
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (i32, i8*, i32, ...) @ok(i32 %110, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %111, i32 %112, i32 %118)
  %120 = load i8*, i8** %1, align 8
  %121 = icmp eq i8* %120, inttoptr (i64 4042322160 to i8*)
  %122 = zext i1 %121 to i32
  %123 = load i32, i32* %6, align 4
  %124 = call i32 (i32, i8*, i32, ...) @ok(i32 %122, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %108, %94
  store i8* inttoptr (i64 4042322160 to i8*), i8** %1, align 8
  %126 = load i8*, i8** %3, align 8
  %127 = call i32 @pFindMimeFromData(i32* null, i8* %126, i32* null, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_FindMimeFromData.text_plainW, i64 0, i64 0), i32 0, i8** %1, i32 0)
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* @S_OK, align 4
  %130 = icmp eq i32 %128, %129
  %131 = zext i1 %130 to i32
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %4, align 4
  %134 = call i32 (i32, i8*, i32, ...) @ok(i32 %131, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %132, i32 %133)
  %135 = load i8*, i8** %1, align 8
  %136 = call i32 @strcmp_wa(i8* %135, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = load i32, i32* %6, align 4
  %141 = load i8*, i8** %1, align 8
  %142 = call i32 @wine_dbgstr_w(i8* %141)
  %143 = call i32 (i32, i8*, i32, ...) @ok(i32 %139, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %140, i32 %142)
  %144 = load i8*, i8** %1, align 8
  %145 = call i32 @CoTaskMemFree(i8* %144)
  store i8* inttoptr (i64 4042322160 to i8*), i8** %1, align 8
  %146 = load i8*, i8** %3, align 8
  %147 = call i32 @pFindMimeFromData(i32* null, i8* %146, i32* null, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @test_FindMimeFromData.app_octet_streamW, i64 0, i64 0), i32 0, i8** %1, i32 0)
  store i32 %147, i32* %4, align 4
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* @S_OK, align 4
  %150 = icmp eq i32 %148, %149
  %151 = zext i1 %150 to i32
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* %4, align 4
  %154 = call i32 (i32, i8*, i32, ...) @ok(i32 %151, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %152, i32 %153)
  %155 = load i8*, i8** %1, align 8
  %156 = call i32 @strcmp_wa(i8* %155, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  %159 = zext i1 %158 to i32
  %160 = load i32, i32* %6, align 4
  %161 = load i8*, i8** %1, align 8
  %162 = call i32 @wine_dbgstr_w(i8* %161)
  %163 = call i32 (i32, i8*, i32, ...) @ok(i32 %159, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %160, i32 %162)
  %164 = load i8*, i8** %1, align 8
  %165 = call i32 @CoTaskMemFree(i8* %164)
  %166 = load i8*, i8** %3, align 8
  %167 = call i32 @heap_free(i8* %166)
  br label %168

168:                                              ; preds = %125
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %6, align 4
  br label %7

171:                                              ; preds = %7
  store i32 0, i32* %6, align 4
  br label %172

172:                                              ; preds = %536, %171
  %173 = load i32, i32* %6, align 4
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests2, align 8
  %175 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %174)
  %176 = icmp slt i32 %173, %175
  br i1 %176, label %177, label %539

177:                                              ; preds = %172
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests2, align 8
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 8
  %183 = load i32, i32* %182, align 4
  %184 = call i8* @a2w(i32 %183)
  store i8* %184, i8** %3, align 8
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests2, align 8
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 7
  %190 = load i32, i32* %189, align 8
  %191 = call i8* @a2w(i32 %190)
  store i8* %191, i8** %2, align 8
  %192 = load i8*, i8** %3, align 8
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests2, align 8
  %194 = load i32, i32* %6, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 6
  %198 = load i32*, i32** %197, align 8
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests2, align 8
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 8
  %205 = load i8*, i8** %2, align 8
  %206 = call i32 @pFindMimeFromData(i32* null, i8* %192, i32* %198, i32 %204, i8* %205, i32 0, i8** %1, i32 0)
  store i32 %206, i32* %4, align 4
  %207 = load i32, i32* %4, align 4
  %208 = load i32, i32* @S_OK, align 4
  %209 = icmp eq i32 %207, %208
  %210 = zext i1 %209 to i32
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* %4, align 4
  %213 = call i32 (i32, i8*, i32, ...) @ok(i32 %210, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %211, i32 %212)
  %214 = load i8*, i8** %1, align 8
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests2, align 8
  %216 = load i32, i32* %6, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = call i32 @strcmp_wa(i8* %214, i8* %220)
  %222 = icmp ne i32 %221, 0
  %223 = xor i1 %222, true
  %224 = zext i1 %223 to i32
  store i32 %224, i32* %5, align 4
  %225 = load i32, i32* %5, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %251, label %227

227:                                              ; preds = %177
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests2, align 8
  %229 = load i32, i32* %6, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 2
  %233 = load i8*, i8** %232, align 8
  %234 = icmp ne i8* %233, null
  br i1 %234, label %235, label %246

235:                                              ; preds = %227
  %236 = load i8*, i8** %1, align 8
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests2, align 8
  %238 = load i32, i32* %6, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 2
  %242 = load i8*, i8** %241, align 8
  %243 = call i32 @strcmp_wa(i8* %236, i8* %242)
  %244 = icmp ne i32 %243, 0
  %245 = xor i1 %244, true
  br label %246

246:                                              ; preds = %235, %227
  %247 = phi i1 [ false, %227 ], [ %245, %235 ]
  %248 = zext i1 %247 to i32
  %249 = call i64 @broken(i32 %248)
  %250 = icmp ne i64 %249, 0
  br label %251

251:                                              ; preds = %246, %177
  %252 = phi i1 [ true, %177 ], [ %250, %246 ]
  %253 = zext i1 %252 to i32
  %254 = load i32, i32* %6, align 4
  %255 = load i8*, i8** %1, align 8
  %256 = call i32 @wine_dbgstr_w(i8* %255)
  %257 = call i32 (i32, i8*, i32, ...) @ok(i32 %253, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %254, i32 %256)
  %258 = load i8*, i8** %2, align 8
  %259 = call i32 @heap_free(i8* %258)
  %260 = load i8*, i8** %3, align 8
  %261 = call i32 @heap_free(i8* %260)
  %262 = load i8*, i8** %1, align 8
  %263 = call i32 @CoTaskMemFree(i8* %262)
  %264 = load i32, i32* %5, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %251
  %267 = load i8*, i8** %3, align 8
  %268 = icmp ne i8* %267, null
  br i1 %268, label %272, label %269

269:                                              ; preds = %266
  %270 = load i8*, i8** %2, align 8
  %271 = icmp ne i8* %270, null
  br i1 %271, label %272, label %273

272:                                              ; preds = %269, %266, %251
  br label %536

273:                                              ; preds = %269
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests2, align 8
  %275 = load i32, i32* %6, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 6
  %279 = load i32*, i32** %278, align 8
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests2, align 8
  %281 = load i32, i32* %6, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @pFindMimeFromData(i32* null, i8* null, i32* %279, i32 %285, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @test_FindMimeFromData.app_octet_streamW, i64 0, i64 0), i32 0, i8** %1, i32 0)
  store i32 %286, i32* %4, align 4
  %287 = load i32, i32* %4, align 4
  %288 = load i32, i32* @S_OK, align 4
  %289 = icmp eq i32 %287, %288
  %290 = zext i1 %289 to i32
  %291 = load i32, i32* %6, align 4
  %292 = load i32, i32* %4, align 4
  %293 = call i32 (i32, i8*, i32, ...) @ok(i32 %290, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %291, i32 %292)
  %294 = load i8*, i8** %1, align 8
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests2, align 8
  %296 = load i32, i32* %6, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 0
  %300 = load i8*, i8** %299, align 8
  %301 = call i32 @strcmp_wa(i8* %294, i8* %300)
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %327

303:                                              ; preds = %273
  %304 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests2, align 8
  %305 = load i32, i32* %6, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i32 0, i32 2
  %309 = load i8*, i8** %308, align 8
  %310 = icmp ne i8* %309, null
  br i1 %310, label %311, label %322

311:                                              ; preds = %303
  %312 = load i8*, i8** %1, align 8
  %313 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests2, align 8
  %314 = load i32, i32* %6, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 2
  %318 = load i8*, i8** %317, align 8
  %319 = call i32 @strcmp_wa(i8* %312, i8* %318)
  %320 = icmp ne i32 %319, 0
  %321 = xor i1 %320, true
  br label %322

322:                                              ; preds = %311, %303
  %323 = phi i1 [ false, %303 ], [ %321, %311 ]
  %324 = zext i1 %323 to i32
  %325 = call i64 @broken(i32 %324)
  %326 = icmp ne i64 %325, 0
  br label %327

327:                                              ; preds = %322, %273
  %328 = phi i1 [ true, %273 ], [ %326, %322 ]
  %329 = zext i1 %328 to i32
  %330 = load i32, i32* %6, align 4
  %331 = load i8*, i8** %1, align 8
  %332 = call i32 @wine_dbgstr_w(i8* %331)
  %333 = call i32 (i32, i8*, i32, ...) @ok(i32 %329, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %330, i32 %332)
  %334 = load i8*, i8** %1, align 8
  %335 = call i32 @CoTaskMemFree(i8* %334)
  %336 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests2, align 8
  %337 = load i32, i32* %6, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i32 0, i32 6
  %341 = load i32*, i32** %340, align 8
  %342 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests2, align 8
  %343 = load i32, i32* %6, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %342, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 5
  %347 = load i32, i32* %346, align 8
  %348 = call i32 @pFindMimeFromData(i32* null, i8* null, i32* %341, i32 %347, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_FindMimeFromData.text_plainW, i64 0, i64 0), i32 0, i8** %1, i32 0)
  store i32 %348, i32* %4, align 4
  %349 = load i32, i32* %4, align 4
  %350 = load i32, i32* @S_OK, align 4
  %351 = icmp eq i32 %349, %350
  %352 = zext i1 %351 to i32
  %353 = load i32, i32* %6, align 4
  %354 = load i32, i32* %4, align 4
  %355 = call i32 (i32, i8*, i32, ...) @ok(i32 %352, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %353, i32 %354)
  %356 = load i8*, i8** %1, align 8
  %357 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests2, align 8
  %358 = load i32, i32* %6, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %360, i32 0, i32 0
  %362 = load i8*, i8** %361, align 8
  %363 = call i32 @strcmp_wa(i8* %356, i8* %362)
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %389

365:                                              ; preds = %327
  %366 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests2, align 8
  %367 = load i32, i32* %6, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %366, i64 %368
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 2
  %371 = load i8*, i8** %370, align 8
  %372 = icmp ne i8* %371, null
  br i1 %372, label %373, label %384

373:                                              ; preds = %365
  %374 = load i8*, i8** %1, align 8
  %375 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests2, align 8
  %376 = load i32, i32* %6, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %378, i32 0, i32 2
  %380 = load i8*, i8** %379, align 8
  %381 = call i32 @strcmp_wa(i8* %374, i8* %380)
  %382 = icmp ne i32 %381, 0
  %383 = xor i1 %382, true
  br label %384

384:                                              ; preds = %373, %365
  %385 = phi i1 [ false, %365 ], [ %383, %373 ]
  %386 = zext i1 %385 to i32
  %387 = call i64 @broken(i32 %386)
  %388 = icmp ne i64 %387, 0
  br label %389

389:                                              ; preds = %384, %327
  %390 = phi i1 [ true, %327 ], [ %388, %384 ]
  %391 = zext i1 %390 to i32
  %392 = load i32, i32* %6, align 4
  %393 = load i8*, i8** %1, align 8
  %394 = call i32 @wine_dbgstr_w(i8* %393)
  %395 = call i32 (i32, i8*, i32, ...) @ok(i32 %391, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %392, i32 %394)
  %396 = load i8*, i8** %1, align 8
  %397 = call i32 @CoTaskMemFree(i8* %396)
  %398 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests2, align 8
  %399 = load i32, i32* %6, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %398, i64 %400
  %402 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %401, i32 0, i32 6
  %403 = load i32*, i32** %402, align 8
  %404 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests2, align 8
  %405 = load i32, i32* %6, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %404, i64 %406
  %408 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %407, i32 0, i32 5
  %409 = load i32, i32* %408, align 8
  %410 = call i32 @pFindMimeFromData(i32* null, i8* null, i32* %403, i32 %409, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @test_FindMimeFromData.text_htmlW, i64 0, i64 0), i32 0, i8** %1, i32 0)
  store i32 %410, i32* %4, align 4
  %411 = load i32, i32* %4, align 4
  %412 = load i32, i32* @S_OK, align 4
  %413 = icmp eq i32 %411, %412
  %414 = zext i1 %413 to i32
  %415 = load i32, i32* %6, align 4
  %416 = load i32, i32* %4, align 4
  %417 = call i32 (i32, i8*, i32, ...) @ok(i32 %414, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %415, i32 %416)
  %418 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests2, align 8
  %419 = load i32, i32* %6, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %418, i64 %420
  %422 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %421, i32 0, i32 0
  %423 = load i8*, i8** %422, align 8
  %424 = call i32 @strcmp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %423)
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %438

426:                                              ; preds = %389
  %427 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests2, align 8
  %428 = load i32, i32* %6, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %427, i64 %429
  %431 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %430, i32 0, i32 0
  %432 = load i8*, i8** %431, align 8
  %433 = call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %432)
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %438

435:                                              ; preds = %426
  %436 = load i32, i32* %6, align 4
  %437 = icmp eq i32 %436, 92
  br i1 %437, label %438, label %448

438:                                              ; preds = %435, %426, %389
  %439 = load i8*, i8** %1, align 8
  %440 = call i32 @strcmp_wa(i8* %439, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %441 = icmp ne i32 %440, 0
  %442 = xor i1 %441, true
  %443 = zext i1 %442 to i32
  %444 = load i32, i32* %6, align 4
  %445 = load i8*, i8** %1, align 8
  %446 = call i32 @wine_dbgstr_w(i8* %445)
  %447 = call i32 (i32, i8*, i32, ...) @ok(i32 %443, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %444, i32 %446)
  br label %464

448:                                              ; preds = %435
  %449 = load i8*, i8** %1, align 8
  %450 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests2, align 8
  %451 = load i32, i32* %6, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %450, i64 %452
  %454 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %453, i32 0, i32 0
  %455 = load i8*, i8** %454, align 8
  %456 = call i32 @strcmp_wa(i8* %449, i8* %455)
  %457 = icmp ne i32 %456, 0
  %458 = xor i1 %457, true
  %459 = zext i1 %458 to i32
  %460 = load i32, i32* %6, align 4
  %461 = load i8*, i8** %1, align 8
  %462 = call i32 @wine_dbgstr_w(i8* %461)
  %463 = call i32 (i32, i8*, i32, ...) @ok(i32 %459, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %460, i32 %462)
  br label %464

464:                                              ; preds = %448, %438
  %465 = load i8*, i8** %1, align 8
  %466 = call i32 @CoTaskMemFree(i8* %465)
  %467 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests2, align 8
  %468 = load i32, i32* %6, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %467, i64 %469
  %471 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %470, i32 0, i32 6
  %472 = load i32*, i32** %471, align 8
  %473 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests2, align 8
  %474 = load i32, i32* %6, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %473, i64 %475
  %477 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %476, i32 0, i32 5
  %478 = load i32, i32* %477, align 8
  %479 = call i32 @pFindMimeFromData(i32* null, i8* null, i32* %472, i32 %478, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_FindMimeFromData.image_pjpegW, i64 0, i64 0), i32 0, i8** %1, i32 0)
  store i32 %479, i32* %4, align 4
  %480 = load i32, i32* %4, align 4
  %481 = load i32, i32* @S_OK, align 4
  %482 = icmp eq i32 %480, %481
  %483 = zext i1 %482 to i32
  %484 = load i32, i32* %6, align 4
  %485 = load i32, i32* %4, align 4
  %486 = call i32 (i32, i8*, i32, ...) @ok(i32 %483, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %484, i32 %485)
  %487 = load i8*, i8** %1, align 8
  %488 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests2, align 8
  %489 = load i32, i32* %6, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %488, i64 %490
  %492 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %491, i32 0, i32 4
  %493 = load i8*, i8** %492, align 8
  %494 = icmp ne i8* %493, null
  br i1 %494, label %495, label %502

495:                                              ; preds = %464
  %496 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests2, align 8
  %497 = load i32, i32* %6, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %496, i64 %498
  %500 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %499, i32 0, i32 4
  %501 = load i8*, i8** %500, align 8
  br label %509

502:                                              ; preds = %464
  %503 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests2, align 8
  %504 = load i32, i32* %6, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %503, i64 %505
  %507 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %506, i32 0, i32 0
  %508 = load i8*, i8** %507, align 8
  br label %509

509:                                              ; preds = %502, %495
  %510 = phi i8* [ %501, %495 ], [ %508, %502 ]
  %511 = call i32 @strcmp_wa(i8* %487, i8* %510)
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %527

513:                                              ; preds = %509
  %514 = load i8*, i8** %1, align 8
  %515 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mime_tests2, align 8
  %516 = load i32, i32* %6, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %515, i64 %517
  %519 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %518, i32 0, i32 0
  %520 = load i8*, i8** %519, align 8
  %521 = call i32 @strcmp_wa(i8* %514, i8* %520)
  %522 = icmp ne i32 %521, 0
  %523 = xor i1 %522, true
  %524 = zext i1 %523 to i32
  %525 = call i64 @broken(i32 %524)
  %526 = icmp ne i64 %525, 0
  br label %527

527:                                              ; preds = %513, %509
  %528 = phi i1 [ true, %509 ], [ %526, %513 ]
  %529 = zext i1 %528 to i32
  %530 = load i32, i32* %6, align 4
  %531 = load i8*, i8** %1, align 8
  %532 = call i32 @wine_dbgstr_w(i8* %531)
  %533 = call i32 (i32, i8*, i32, ...) @ok(i32 %529, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %530, i32 %532)
  %534 = load i8*, i8** %1, align 8
  %535 = call i32 @CoTaskMemFree(i8* %534)
  br label %536

536:                                              ; preds = %527, %272
  %537 = load i32, i32* %6, align 4
  %538 = add nsw i32 %537, 1
  store i32 %538, i32* %6, align 4
  br label %172

539:                                              ; preds = %172
  %540 = call i32 @pFindMimeFromData(i32* null, i8* null, i32* null, i32 0, i8* null, i32 0, i8** %1, i32 0)
  store i32 %540, i32* %4, align 4
  %541 = load i32, i32* %4, align 4
  %542 = load i32, i32* @E_INVALIDARG, align 4
  %543 = icmp eq i32 %541, %542
  %544 = zext i1 %543 to i32
  %545 = load i32, i32* %4, align 4
  %546 = call i32 (i32, i8*, i32, ...) @ok(i32 %544, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i32 %545)
  %547 = call i32 @pFindMimeFromData(i32* null, i8* null, i32* null, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_FindMimeFromData.text_plainW, i64 0, i64 0), i32 0, i8** %1, i32 0)
  store i32 %547, i32* %4, align 4
  %548 = load i32, i32* %4, align 4
  %549 = load i32, i32* @E_INVALIDARG, align 4
  %550 = icmp eq i32 %548, %549
  %551 = zext i1 %550 to i32
  %552 = load i32, i32* %4, align 4
  %553 = call i32 (i32, i8*, i32, ...) @ok(i32 %551, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i32 %552)
  %554 = load i32*, i32** @data1, align 8
  %555 = call i32 @pFindMimeFromData(i32* null, i8* null, i32* %554, i32 0, i8* null, i32 0, i8** %1, i32 0)
  store i32 %555, i32* %4, align 4
  %556 = load i32, i32* %4, align 4
  %557 = load i32, i32* @E_FAIL, align 4
  %558 = icmp eq i32 %556, %557
  %559 = zext i1 %558 to i32
  %560 = load i32, i32* %4, align 4
  %561 = call i32 (i32, i8*, i32, ...) @ok(i32 %559, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i32 %560)
  %562 = load i8*, i8** @url1, align 8
  %563 = load i32*, i32** @data1, align 8
  %564 = call i32 @pFindMimeFromData(i32* null, i8* %562, i32* %563, i32 0, i8* null, i32 0, i8** %1, i32 0)
  store i32 %564, i32* %4, align 4
  %565 = load i32, i32* %4, align 4
  %566 = load i32, i32* @E_FAIL, align 4
  %567 = icmp eq i32 %565, %566
  %568 = zext i1 %567 to i32
  %569 = load i32, i32* %4, align 4
  %570 = call i32 (i32, i8*, i32, ...) @ok(i32 %568, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i32 %569)
  %571 = load i32*, i32** @data1, align 8
  %572 = call i32 @pFindMimeFromData(i32* null, i8* null, i32* %571, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_FindMimeFromData.text_plainW, i64 0, i64 0), i32 0, i8** %1, i32 0)
  store i32 %572, i32* %4, align 4
  %573 = load i32, i32* %4, align 4
  %574 = load i32, i32* @S_OK, align 4
  %575 = icmp eq i32 %573, %574
  %576 = zext i1 %575 to i32
  %577 = load i32, i32* %4, align 4
  %578 = call i32 (i32, i8*, i32, ...) @ok(i32 %576, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %577)
  %579 = load i8*, i8** %1, align 8
  %580 = call i32 @strcmp_wa(i8* %579, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %581 = icmp ne i32 %580, 0
  %582 = xor i1 %581, true
  %583 = zext i1 %582 to i32
  %584 = load i8*, i8** %1, align 8
  %585 = call i32 @wine_dbgstr_w(i8* %584)
  %586 = call i32 (i32, i8*, i32, ...) @ok(i32 %583, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %585)
  %587 = load i8*, i8** %1, align 8
  %588 = call i32 @CoTaskMemFree(i8* %587)
  %589 = load i32*, i32** @data1, align 8
  %590 = call i32 @pFindMimeFromData(i32* null, i8* null, i32* %589, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_FindMimeFromData.text_plainW, i64 0, i64 0), i32 0, i8** null, i32 0)
  store i32 %590, i32* %4, align 4
  %591 = load i32, i32* %4, align 4
  %592 = load i32, i32* @E_INVALIDARG, align 4
  %593 = icmp eq i32 %591, %592
  %594 = zext i1 %593 to i32
  %595 = load i32, i32* %4, align 4
  %596 = call i32 (i32, i8*, i32, ...) @ok(i32 %594, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i32 %595)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i8* @a2w(i32) #1

declare dso_local i32 @pFindMimeFromData(i32*, i8*, i32*, i32, i8*, i32, i8**, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @strcmp_wa(i8*, i8*) #1

declare dso_local i32 @wine_dbgstr_w(i8*) #1

declare dso_local i32 @CoTaskMemFree(i8*) #1

declare dso_local i32 @heap_free(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
