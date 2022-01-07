; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_istream.c_test_SHCreateStreamOnFileEx.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_istream.c_test_SHCreateStreamOnFileEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@test_SHCreateStreamOnFileEx.testEx_txt = internal constant [12 x i8] c"\\testEx.txt\00", align 1
@winetest_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"SHCreateStreamOnFileEx: testing mode %d, STGM flags %08x\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"File probably locked by Anti-Virus/Spam software, trying again\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [134 x i8] c"SHCreateStreamOnFileEx: expected HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND) or HRESULT_FROM_WIN32(ERROR_INVALID_PARAMETER), got 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"SHCreateStreamOnFileEx: expected a NULL IStream object, got %p\0A\00", align 1
@STGM_FAILIFTHERE = common dso_local global i32 0, align 4
@STGM_TRANSACTED = common dso_local global i32 0, align 4
@STGM_READ = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [103 x i8] c"SHCreateStreamOnFileEx: expected E_INVALIDARG or HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), got 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [78 x i8] c"SHCreateStreamOnFileEx: STGM_TRANSACTED not supported in this configuration.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"Not supported\0A\00", align 1
@S_OK = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [51 x i8] c"SHCreateStreamOnFileEx: expected S_OK, got 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [67 x i8] c"SHCreateStreamOnFileEx: expected a valid IStream object, got NULL\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"SHCreateStreamOnFileEx: expected 0, got %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [70 x i8] c"SHCreateStreamOnFileEx: could not delete the test file, got error %d\0A\00", align 1
@STGM_CREATE = common dso_local global i32 0, align 4
@ERROR_FILE_EXISTS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [84 x i8] c"SHCreateStreamOnFileEx: expected HRESULT_FROM_WIN32(ERROR_FILE_EXISTS), got 0x%08x\0A\00", align 1
@ERROR_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @test_SHCreateStreamOnFileEx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SHCreateStreamOnFileEx(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %6, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %21 = load i32, i32* @winetest_debug, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @trace(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %2
  %28 = load i32, i32* @MAX_PATH, align 4
  %29 = call i32 @GetTempPathA(i32 %28, i8* %20)
  %30 = call i32 @lstrcatA(i8* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_SHCreateStreamOnFileEx.testEx_txt, i64 0, i64 0))
  %31 = load i32, i32* @CP_ACP, align 4
  %32 = load i32, i32* @MAX_PATH, align 4
  %33 = call i32 @MultiByteToWideChar(i32 %31, i32 0, i8* %20, i32 -1, i32* %17, i32 %32)
  store i32* null, i32** %5, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @FALSE, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = call i32* @SHCreateStreamOnFileEx(i32* %17, i32 %34, i32 0, i32 %35, i32* %36, i32** %5)
  store i32* %37, i32** %7, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %40 = call i32* @HRESULT_FROM_WIN32(i32 %39)
  %41 = icmp eq i32* %38, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %27
  %43 = call i32 @win_skip(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %44 = call i32 @Sleep(i32 1000)
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @FALSE, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = call i32* @SHCreateStreamOnFileEx(i32* %17, i32 %45, i32 0, i32 %46, i32* %47, i32** %5)
  store i32* %48, i32** %7, align 8
  br label %49

49:                                               ; preds = %42, %27
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %52 = call i32* @HRESULT_FROM_WIN32(i32 %51)
  %53 = icmp eq i32* %50, %52
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %57 = call i32* @HRESULT_FROM_WIN32(i32 %56)
  %58 = icmp eq i32* %55, %57
  br label %59

59:                                               ; preds = %54, %49
  %60 = phi i1 [ true, %49 ], [ %58, %54 ]
  %61 = zext i1 %60 to i32
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.2, i64 0, i64 0), i32* %62)
  %64 = load i32*, i32** %5, align 8
  %65 = icmp eq i32* %64, null
  %66 = zext i1 %65 to i32
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32* %67)
  store i32* null, i32** %5, align 8
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @STGM_FAILIFTHERE, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %4, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @FALSE, align 4
  %75 = call i32* @SHCreateStreamOnFileEx(i32* %17, i32 %73, i32 0, i32 %74, i32* null, i32** %5)
  store i32* %75, i32** %7, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @STGM_TRANSACTED, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* @STGM_TRANSACTED, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %105

81:                                               ; preds = %59
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @STGM_READ, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %105

85:                                               ; preds = %81
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %88 = call i32* @HRESULT_FROM_WIN32(i32 %87)
  %89 = icmp eq i32* %86, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %85
  %91 = load i32*, i32** %7, align 8
  %92 = load i32*, i32** @E_INVALIDARG, align 8
  %93 = icmp eq i32* %91, %92
  br label %94

94:                                               ; preds = %90, %85
  %95 = phi i1 [ true, %85 ], [ %93, %90 ]
  %96 = zext i1 %95 to i32
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32* %97)
  %99 = load i32*, i32** %7, align 8
  %100 = load i32*, i32** @E_INVALIDARG, align 8
  %101 = icmp eq i32* %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = call i32 @skip(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %391

104:                                              ; preds = %94
  br label %120

105:                                              ; preds = %81, %59
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %108 = call i32* @HRESULT_FROM_WIN32(i32 %107)
  %109 = icmp eq i32* %106, %108
  br i1 %109, label %115, label %110

110:                                              ; preds = %105
  %111 = load i32*, i32** %7, align 8
  %112 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %113 = call i32* @HRESULT_FROM_WIN32(i32 %112)
  %114 = icmp eq i32* %111, %113
  br label %115

115:                                              ; preds = %110, %105
  %116 = phi i1 [ true, %105 ], [ %114, %110 ]
  %117 = zext i1 %116 to i32
  %118 = load i32*, i32** %7, align 8
  %119 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.2, i64 0, i64 0), i32* %118)
  br label %120

120:                                              ; preds = %115, %104
  %121 = load i32*, i32** %5, align 8
  %122 = icmp eq i32* %121, null
  %123 = zext i1 %122 to i32
  %124 = load i32*, i32** %5, align 8
  %125 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32* %124)
  store i32* null, i32** %5, align 8
  %126 = load i32, i32* %3, align 4
  %127 = load i32, i32* @STGM_FAILIFTHERE, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* %4, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @TRUE, align 4
  %132 = call i32* @SHCreateStreamOnFileEx(i32* %17, i32 %130, i32 0, i32 %131, i32* null, i32** %5)
  store i32* %132, i32** %7, align 8
  %133 = load i32*, i32** %7, align 8
  %134 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %135 = call i32* @HRESULT_FROM_WIN32(i32 %134)
  %136 = icmp eq i32* %133, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %120
  %138 = load i32*, i32** %5, align 8
  %139 = icmp eq i32* %138, null
  br label %140

140:                                              ; preds = %137, %120
  %141 = phi i1 [ false, %120 ], [ %139, %137 ]
  %142 = zext i1 %141 to i32
  %143 = call i64 @broken(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = call i32 @skip(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %147 = call i32 @DeleteFileA(i8* %20)
  store i32 1, i32* %13, align 4
  br label %391

148:                                              ; preds = %140
  %149 = load i32*, i32** %7, align 8
  %150 = load i32*, i32** @S_OK, align 8
  %151 = icmp eq i32* %149, %150
  %152 = zext i1 %151 to i32
  %153 = load i32*, i32** %7, align 8
  %154 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32* %153)
  %155 = load i32*, i32** %5, align 8
  %156 = icmp ne i32* %155, null
  %157 = zext i1 %156 to i32
  %158 = call i32 (i32, i8*, ...) @ok(i32 %157, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.8, i64 0, i64 0))
  %159 = load i32*, i32** %5, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %178

161:                                              ; preds = %148
  %162 = load i32*, i32** %5, align 8
  %163 = call i32 @test_stream_qi(i32* %162)
  %164 = load i32*, i32** %5, align 8
  %165 = load i32, i32* %3, align 4
  %166 = call i32 @test_IStream_invalid_operations(i32* %164, i32 %165)
  %167 = load i32*, i32** %5, align 8
  %168 = call i32* @IStream_Release(i32* %167)
  store i32* %168, i32** %8, align 8
  %169 = load i32*, i32** %8, align 8
  %170 = icmp eq i32* %169, null
  %171 = zext i1 %170 to i32
  %172 = load i32*, i32** %8, align 8
  %173 = call i32 (i32, i8*, ...) @ok(i32 %171, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i32* %172)
  %174 = call i32 @DeleteFileA(i8* %20)
  store i32 %174, i32* %12, align 4
  %175 = load i32, i32* %12, align 4
  %176 = call i32* (...) @GetLastError()
  %177 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.10, i64 0, i64 0), i32* %176)
  br label %178

178:                                              ; preds = %161, %148
  store i32* null, i32** %5, align 8
  %179 = load i32, i32* %3, align 4
  %180 = load i32, i32* @STGM_CREATE, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* %4, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @FALSE, align 4
  %185 = call i32* @SHCreateStreamOnFileEx(i32* %17, i32 %183, i32 0, i32 %184, i32* null, i32** %5)
  store i32* %185, i32** %7, align 8
  %186 = load i32*, i32** %7, align 8
  %187 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %188 = call i32* @HRESULT_FROM_WIN32(i32 %187)
  %189 = icmp eq i32* %186, %188
  br i1 %189, label %190, label %200

190:                                              ; preds = %178
  %191 = call i32 @win_skip(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %192 = call i32 @Sleep(i32 1000)
  %193 = load i32, i32* %3, align 4
  %194 = load i32, i32* @STGM_CREATE, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* %4, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* @FALSE, align 4
  %199 = call i32* @SHCreateStreamOnFileEx(i32* %17, i32 %197, i32 0, i32 %198, i32* null, i32** %5)
  store i32* %199, i32** %7, align 8
  br label %200

200:                                              ; preds = %190, %178
  %201 = load i32*, i32** %7, align 8
  %202 = load i32*, i32** @S_OK, align 8
  %203 = icmp eq i32* %201, %202
  %204 = zext i1 %203 to i32
  %205 = load i32*, i32** %7, align 8
  %206 = call i32 (i32, i8*, ...) @ok(i32 %204, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32* %205)
  %207 = load i32*, i32** %5, align 8
  %208 = icmp ne i32* %207, null
  %209 = zext i1 %208 to i32
  %210 = call i32 (i32, i8*, ...) @ok(i32 %209, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.8, i64 0, i64 0))
  %211 = load i32*, i32** %5, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %213, label %228

213:                                              ; preds = %200
  %214 = load i32*, i32** %5, align 8
  %215 = load i32, i32* %3, align 4
  %216 = call i32 @test_IStream_invalid_operations(i32* %214, i32 %215)
  %217 = load i32*, i32** %5, align 8
  %218 = call i32* @IStream_Release(i32* %217)
  store i32* %218, i32** %8, align 8
  %219 = load i32*, i32** %8, align 8
  %220 = icmp eq i32* %219, null
  %221 = zext i1 %220 to i32
  %222 = load i32*, i32** %8, align 8
  %223 = call i32 (i32, i8*, ...) @ok(i32 %221, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i32* %222)
  %224 = call i32 @DeleteFileA(i8* %20)
  store i32 %224, i32* %12, align 4
  %225 = load i32, i32* %12, align 4
  %226 = call i32* (...) @GetLastError()
  %227 = call i32 (i32, i8*, ...) @ok(i32 %225, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.10, i64 0, i64 0), i32* %226)
  br label %228

228:                                              ; preds = %213, %200
  store i32* null, i32** %5, align 8
  %229 = load i32, i32* %3, align 4
  %230 = load i32, i32* @STGM_CREATE, align 4
  %231 = or i32 %229, %230
  %232 = load i32, i32* %4, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* @TRUE, align 4
  %235 = call i32* @SHCreateStreamOnFileEx(i32* %17, i32 %233, i32 0, i32 %234, i32* null, i32** %5)
  store i32* %235, i32** %7, align 8
  %236 = load i32*, i32** %7, align 8
  %237 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %238 = call i32* @HRESULT_FROM_WIN32(i32 %237)
  %239 = icmp eq i32* %236, %238
  br i1 %239, label %240, label %250

240:                                              ; preds = %228
  %241 = call i32 @win_skip(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %242 = call i32 @Sleep(i32 1000)
  %243 = load i32, i32* %3, align 4
  %244 = load i32, i32* @STGM_CREATE, align 4
  %245 = or i32 %243, %244
  %246 = load i32, i32* %4, align 4
  %247 = or i32 %245, %246
  %248 = load i32, i32* @TRUE, align 4
  %249 = call i32* @SHCreateStreamOnFileEx(i32* %17, i32 %247, i32 0, i32 %248, i32* null, i32** %5)
  store i32* %249, i32** %7, align 8
  br label %250

250:                                              ; preds = %240, %228
  %251 = load i32*, i32** %7, align 8
  %252 = load i32*, i32** @S_OK, align 8
  %253 = icmp eq i32* %251, %252
  %254 = zext i1 %253 to i32
  %255 = load i32*, i32** %7, align 8
  %256 = call i32 (i32, i8*, ...) @ok(i32 %254, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32* %255)
  %257 = load i32*, i32** %5, align 8
  %258 = icmp ne i32* %257, null
  %259 = zext i1 %258 to i32
  %260 = call i32 (i32, i8*, ...) @ok(i32 %259, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.8, i64 0, i64 0))
  %261 = load i32*, i32** %5, align 8
  %262 = icmp ne i32* %261, null
  br i1 %262, label %263, label %274

263:                                              ; preds = %250
  %264 = load i32*, i32** %5, align 8
  %265 = load i32, i32* %3, align 4
  %266 = call i32 @test_IStream_invalid_operations(i32* %264, i32 %265)
  %267 = load i32*, i32** %5, align 8
  %268 = call i32* @IStream_Release(i32* %267)
  store i32* %268, i32** %8, align 8
  %269 = load i32*, i32** %8, align 8
  %270 = icmp eq i32* %269, null
  %271 = zext i1 %270 to i32
  %272 = load i32*, i32** %8, align 8
  %273 = call i32 (i32, i8*, ...) @ok(i32 %271, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i32* %272)
  br label %274

274:                                              ; preds = %263, %250
  store i32* null, i32** %5, align 8
  %275 = load i32, i32* %3, align 4
  %276 = load i32, i32* @STGM_FAILIFTHERE, align 4
  %277 = or i32 %275, %276
  %278 = load i32, i32* %4, align 4
  %279 = or i32 %277, %278
  %280 = load i32, i32* @FALSE, align 4
  %281 = call i32* @SHCreateStreamOnFileEx(i32* %17, i32 %279, i32 0, i32 %280, i32* null, i32** %5)
  store i32* %281, i32** %7, align 8
  %282 = load i32*, i32** %7, align 8
  %283 = load i32*, i32** @S_OK, align 8
  %284 = icmp eq i32* %282, %283
  %285 = zext i1 %284 to i32
  %286 = load i32*, i32** %7, align 8
  %287 = call i32 (i32, i8*, ...) @ok(i32 %285, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32* %286)
  %288 = load i32*, i32** %5, align 8
  %289 = icmp ne i32* %288, null
  %290 = zext i1 %289 to i32
  %291 = call i32 (i32, i8*, ...) @ok(i32 %290, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.8, i64 0, i64 0))
  %292 = load i32*, i32** %5, align 8
  %293 = icmp ne i32* %292, null
  br i1 %293, label %294, label %305

294:                                              ; preds = %274
  %295 = load i32*, i32** %5, align 8
  %296 = load i32, i32* %3, align 4
  %297 = call i32 @test_IStream_invalid_operations(i32* %295, i32 %296)
  %298 = load i32*, i32** %5, align 8
  %299 = call i32* @IStream_Release(i32* %298)
  store i32* %299, i32** %8, align 8
  %300 = load i32*, i32** %8, align 8
  %301 = icmp eq i32* %300, null
  %302 = zext i1 %301 to i32
  %303 = load i32*, i32** %8, align 8
  %304 = call i32 (i32, i8*, ...) @ok(i32 %302, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i32* %303)
  br label %305

305:                                              ; preds = %294, %274
  store i32* null, i32** %5, align 8
  %306 = load i32, i32* %3, align 4
  %307 = load i32, i32* @STGM_FAILIFTHERE, align 4
  %308 = or i32 %306, %307
  %309 = load i32, i32* %4, align 4
  %310 = or i32 %308, %309
  %311 = load i32, i32* @TRUE, align 4
  %312 = call i32* @SHCreateStreamOnFileEx(i32* %17, i32 %310, i32 0, i32 %311, i32* null, i32** %5)
  store i32* %312, i32** %7, align 8
  %313 = load i32*, i32** %7, align 8
  %314 = load i32, i32* @ERROR_FILE_EXISTS, align 4
  %315 = call i32* @HRESULT_FROM_WIN32(i32 %314)
  %316 = icmp eq i32* %313, %315
  %317 = zext i1 %316 to i32
  %318 = load i32*, i32** %7, align 8
  %319 = call i32 (i32, i8*, ...) @ok(i32 %317, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.11, i64 0, i64 0), i32* %318)
  %320 = load i32*, i32** %5, align 8
  %321 = icmp eq i32* %320, null
  %322 = zext i1 %321 to i32
  %323 = load i32*, i32** %5, align 8
  %324 = call i32 (i32, i8*, ...) @ok(i32 %322, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32* %323)
  store i32* null, i32** %5, align 8
  %325 = load i32, i32* %3, align 4
  %326 = load i32, i32* @STGM_CREATE, align 4
  %327 = or i32 %325, %326
  %328 = load i32, i32* %4, align 4
  %329 = or i32 %327, %328
  %330 = load i32, i32* @FALSE, align 4
  %331 = call i32* @SHCreateStreamOnFileEx(i32* %17, i32 %329, i32 0, i32 %330, i32* null, i32** %5)
  store i32* %331, i32** %7, align 8
  %332 = load i32*, i32** %7, align 8
  %333 = load i32*, i32** @S_OK, align 8
  %334 = icmp eq i32* %332, %333
  %335 = zext i1 %334 to i32
  %336 = load i32*, i32** %7, align 8
  %337 = call i32 (i32, i8*, ...) @ok(i32 %335, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32* %336)
  %338 = load i32*, i32** %5, align 8
  %339 = icmp ne i32* %338, null
  %340 = zext i1 %339 to i32
  %341 = call i32 (i32, i8*, ...) @ok(i32 %340, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.8, i64 0, i64 0))
  %342 = load i32*, i32** %5, align 8
  %343 = icmp ne i32* %342, null
  br i1 %343, label %344, label %355

344:                                              ; preds = %305
  %345 = load i32*, i32** %5, align 8
  %346 = load i32, i32* %3, align 4
  %347 = call i32 @test_IStream_invalid_operations(i32* %345, i32 %346)
  %348 = load i32*, i32** %5, align 8
  %349 = call i32* @IStream_Release(i32* %348)
  store i32* %349, i32** %8, align 8
  %350 = load i32*, i32** %8, align 8
  %351 = icmp eq i32* %350, null
  %352 = zext i1 %351 to i32
  %353 = load i32*, i32** %8, align 8
  %354 = call i32 (i32, i8*, ...) @ok(i32 %352, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i32* %353)
  br label %355

355:                                              ; preds = %344, %305
  store i32* null, i32** %5, align 8
  %356 = load i32, i32* %3, align 4
  %357 = load i32, i32* @STGM_CREATE, align 4
  %358 = or i32 %356, %357
  %359 = load i32, i32* %4, align 4
  %360 = or i32 %358, %359
  %361 = load i32, i32* @TRUE, align 4
  %362 = call i32* @SHCreateStreamOnFileEx(i32* %17, i32 %360, i32 0, i32 %361, i32* null, i32** %5)
  store i32* %362, i32** %7, align 8
  %363 = load i32*, i32** %7, align 8
  %364 = load i32*, i32** @S_OK, align 8
  %365 = icmp eq i32* %363, %364
  %366 = zext i1 %365 to i32
  %367 = load i32*, i32** %7, align 8
  %368 = call i32 (i32, i8*, ...) @ok(i32 %366, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32* %367)
  %369 = load i32*, i32** %5, align 8
  %370 = icmp ne i32* %369, null
  %371 = zext i1 %370 to i32
  %372 = call i32 (i32, i8*, ...) @ok(i32 %371, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.8, i64 0, i64 0))
  %373 = load i32*, i32** %5, align 8
  %374 = icmp ne i32* %373, null
  br i1 %374, label %375, label %386

375:                                              ; preds = %355
  %376 = load i32*, i32** %5, align 8
  %377 = load i32, i32* %3, align 4
  %378 = call i32 @test_IStream_invalid_operations(i32* %376, i32 %377)
  %379 = load i32*, i32** %5, align 8
  %380 = call i32* @IStream_Release(i32* %379)
  store i32* %380, i32** %8, align 8
  %381 = load i32*, i32** %8, align 8
  %382 = icmp eq i32* %381, null
  %383 = zext i1 %382 to i32
  %384 = load i32*, i32** %8, align 8
  %385 = call i32 (i32, i8*, ...) @ok(i32 %383, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i32* %384)
  br label %386

386:                                              ; preds = %375, %355
  %387 = call i32 @DeleteFileA(i8* %20)
  store i32 %387, i32* %12, align 4
  %388 = load i32, i32* %12, align 4
  %389 = call i32* (...) @GetLastError()
  %390 = call i32 (i32, i8*, ...) @ok(i32 %388, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.10, i64 0, i64 0), i32* %389)
  store i32 0, i32* %13, align 4
  br label %391

391:                                              ; preds = %386, %145, %102
  %392 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %392)
  %393 = load i32, i32* %13, align 4
  switch i32 %393, label %395 [
    i32 0, label %394
    i32 1, label %394
  ]

394:                                              ; preds = %391, %391
  ret void

395:                                              ; preds = %391
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trace(i8*, i32, i32) #2

declare dso_local i32 @GetTempPathA(i32, i8*) #2

declare dso_local i32 @lstrcatA(i8*, i8*) #2

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #2

declare dso_local i32* @SHCreateStreamOnFileEx(i32*, i32, i32, i32, i32*, i32**) #2

declare dso_local i32* @HRESULT_FROM_WIN32(i32) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @Sleep(i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @DeleteFileA(i8*) #2

declare dso_local i32 @test_stream_qi(i32*) #2

declare dso_local i32 @test_IStream_invalid_operations(i32*, i32) #2

declare dso_local i32* @IStream_Release(i32*) #2

declare dso_local i32* @GetLastError(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
