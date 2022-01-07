; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winhttp/extr_winhttp.c_test_SendRequest.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winhttp/extr_winhttp.c_test_SendRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_SendRequest.content_type = internal constant [48 x i8] c"Content-Type: application/x-www-form-urlencoded\00", align 16
@test_SendRequest.test_file = internal constant [15 x i8] c"tests/post.php\00", align 1
@test_SendRequest.test_verb = internal constant [5 x i8] c"POST\00", align 1
@test_SendRequest.post_data = internal global [10 x i8] c"mode=Test\00", align 1
@test_SendRequest.test_post = internal constant [15 x i8] c"mode => Test\00\0A\00", align 1
@test_useragent = common dso_local global i32 0, align 4
@WINHTTP_ACCESS_TYPE_DEFAULT_PROXY = common dso_local global i32 0, align 4
@WINHTTP_NO_PROXY_NAME = common dso_local global i32 0, align 4
@WINHTTP_NO_PROXY_BYPASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"WinHttpOpen failed to open session.\0A\00", align 1
@test_winehq = common dso_local global i32 0, align 4
@INTERNET_DEFAULT_HTTP_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"WinHttpConnect failed to open a connection, error: %u.\0A\00", align 1
@WINHTTP_NO_REFERER = common dso_local global i32 0, align 4
@WINHTTP_DEFAULT_ACCEPT_TYPES = common dso_local global i32 0, align 4
@WINHTTP_FLAG_BYPASS_PROXY_CACHE = common dso_local global i32 0, align 4
@ERROR_WINHTTP_NAME_NOT_RESOLVED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Network unreachable, skipping.\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"WinHttpOpenrequest failed to open a request, error: %u.\0A\00", align 1
@WINHTTP_OPTION_CONTEXT_VALUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"WinHttpSetOption failed: %u\0A\00", align 1
@WINHTTP_DISABLE_KEEP_ALIVE = common dso_local global i64 0, align 8
@WINHTTP_OPTION_DISABLE_FEATURE = common dso_local global i32 0, align 4
@ERROR_WINHTTP_CANNOT_CONNECT = common dso_local global i64 0, align 8
@ERROR_WINHTTP_TIMEOUT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"connection failed, skipping\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"WinHttpSendRequest failed: %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"WinHttpQueryOption failed: %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"expected 0xdeadbef0, got %lx\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"Expected ERROR_SUCCESS got %u.\0A\00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c"WinHttpWriteData failed, wrote %u bytes instead of 1 byte.\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [42 x i8] c"Expected ERROR_INVALID_PARAMETER got %u.\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Expected bytes_rw to remain unchanged.\0A\00", align 1
@ERROR_NO_TOKEN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [36 x i8] c"WinHttpReceiveResponse failed: %u.\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"WinHttpReadData failed: %u.\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Read %u bytes\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"Data read did not match.\0A\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"WinHttpCloseHandle failed on closing request, got %d.\0A\00", align 1
@.str.18 = private unnamed_addr constant [58 x i8] c"WinHttpCloseHandle failed on closing connection, got %d.\0A\00", align 1
@.str.19 = private unnamed_addr constant [55 x i8] c"WinHttpCloseHandle failed on closing session, got %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SendRequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SendRequest() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [256 x i8], align 16
  %14 = alloca i32, align 4
  store i64 -1, i64* %4, align 8
  store i64 10, i64* %5, align 8
  store i64 10, i64* %6, align 8
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %16 = call i32 @memset(i8* %15, i32 255, i32 256)
  %17 = load i32, i32* @test_useragent, align 4
  %18 = load i32, i32* @WINHTTP_ACCESS_TYPE_DEFAULT_PROXY, align 4
  %19 = load i32, i32* @WINHTTP_NO_PROXY_NAME, align 4
  %20 = load i32, i32* @WINHTTP_NO_PROXY_BYPASS, align 4
  %21 = call i32* @WinHttpOpen(i32 %17, i32 %18, i32 %19, i32 %20, i32 0)
  store i32* %21, i32** %1, align 8
  %22 = load i32*, i32** %1, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %26 = load i32*, i32** %1, align 8
  %27 = load i32, i32* @test_winehq, align 4
  %28 = load i32, i32* @INTERNET_DEFAULT_HTTP_PORT, align 4
  %29 = call i32* @WinHttpConnect(i32* %26, i32 %27, i32 %28, i32 0)
  store i32* %29, i32** %3, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 (...) @GetLastError()
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @WINHTTP_NO_REFERER, align 4
  %37 = load i32, i32* @WINHTTP_DEFAULT_ACCEPT_TYPES, align 4
  %38 = load i32, i32* @WINHTTP_FLAG_BYPASS_PROXY_CACHE, align 4
  %39 = call i32* @WinHttpOpenRequest(i32* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_SendRequest.test_verb, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_SendRequest.test_file, i64 0, i64 0), i32* null, i32 %36, i32 %37, i32 %38)
  store i32* %39, i32** %2, align 8
  %40 = load i32*, i32** %2, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %0
  %43 = call i32 (...) @GetLastError()
  %44 = load i32, i32* @ERROR_WINHTTP_NAME_NOT_RESOLVED, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 @skip(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %198

48:                                               ; preds = %42, %0
  %49 = load i32*, i32** %2, align 8
  %50 = icmp ne i32* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 (...) @GetLastError()
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load i32*, i32** %2, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  br label %198

57:                                               ; preds = %48
  store i32 -559038737, i32* %11, align 4
  %58 = load i32*, i32** %2, align 8
  %59 = load i32, i32* @WINHTTP_OPTION_CONTEXT_VALUE, align 4
  %60 = call i32 (i32*, i32, ...) @WinHttpSetOption(i32* %58, i32 %59, i32* %11, i64 4)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 (...) @GetLastError()
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  %64 = load i64, i64* @WINHTTP_DISABLE_KEEP_ALIVE, align 8
  store i64 %64, i64* %10, align 8
  %65 = load i32*, i32** %2, align 8
  %66 = load i32, i32* @WINHTTP_OPTION_DISABLE_FEATURE, align 4
  %67 = call i32 (i32*, i32, ...) @WinHttpSetOption(i32* %65, i32 %66, i64* %10, i64 8)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 (...) @GetLastError()
  %70 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  %73 = load i32*, i32** %2, align 8
  %74 = load i64, i64* %4, align 8
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* %6, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @WinHttpSendRequest(i32* %73, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @test_SendRequest.content_type, i64 0, i64 0), i64 %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @test_SendRequest.post_data, i64 0, i64 0), i64 %75, i64 %76, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = call i32 (...) @GetLastError()
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %9, align 8
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %57
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* @ERROR_WINHTTP_CANNOT_CONNECT, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* @ERROR_WINHTTP_TIMEOUT, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87, %83
  %92 = call i32 @skip(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %198

93:                                               ; preds = %87, %57
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @TRUE, align 4
  %96 = icmp eq i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 (...) @GetLastError()
  %99 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %98)
  store i32 0, i32* %11, align 4
  store i64 4, i64* %8, align 8
  %100 = load i32*, i32** %2, align 8
  %101 = load i32, i32* @WINHTTP_OPTION_CONTEXT_VALUE, align 4
  %102 = call i32 @WinHttpQueryOption(i32* %100, i32 %101, i32* %11, i64* %8)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = call i32 (...) @GetLastError()
  %105 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %11, align 4
  %107 = icmp eq i32 %106, -559038736
  %108 = zext i1 %107 to i32
  %109 = load i32, i32* %11, align 4
  %110 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %109)
  store i32 3, i32* %14, align 4
  br label %111

111:                                              ; preds = %150, %93
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [10 x i8], [10 x i8]* @test_SendRequest.post_data, i64 0, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = icmp ne i8 %115, 0
  br i1 %116, label %117, label %153

117:                                              ; preds = %111
  store i64 -1, i64* %7, align 8
  %118 = call i32 @SetLastError(i32 -559038737)
  %119 = load i32*, i32** %2, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [10 x i8], [10 x i8]* @test_SendRequest.post_data, i64 0, i64 %121
  %123 = call i32 @WinHttpWriteData(i32* %119, i8* %122, i32 1, i64* %7)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %117
  %127 = call i32 (...) @GetLastError()
  %128 = load i32, i32* @ERROR_SUCCESS, align 4
  %129 = icmp eq i32 %127, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 (...) @GetLastError()
  %132 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %131)
  %133 = load i64, i64* %7, align 8
  %134 = icmp eq i64 %133, 1
  %135 = zext i1 %134 to i32
  %136 = load i64, i64* %7, align 8
  %137 = call i32 (i32, i8*, ...) @ok(i32 %135, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i64 0, i64 0), i64 %136)
  br label %149

138:                                              ; preds = %117
  %139 = call i32 (...) @GetLastError()
  %140 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %141 = icmp eq i32 %139, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 (...) @GetLastError()
  %144 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i32 %143)
  %145 = load i64, i64* %7, align 8
  %146 = icmp eq i64 %145, -1
  %147 = zext i1 %146 to i32
  %148 = call i32 (i32, i8*, ...) @ok(i32 %147, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  br label %149

149:                                              ; preds = %138, %126
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %14, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %14, align 4
  br label %111

153:                                              ; preds = %111
  %154 = call i32 @SetLastError(i32 -559038737)
  %155 = load i32*, i32** %2, align 8
  %156 = call i32 @WinHttpReceiveResponse(i32* %155, i32* null)
  store i32 %156, i32* %12, align 4
  %157 = call i32 (...) @GetLastError()
  %158 = load i32, i32* @ERROR_SUCCESS, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %167, label %160

160:                                              ; preds = %153
  %161 = call i32 (...) @GetLastError()
  %162 = load i32, i32* @ERROR_NO_TOKEN, align 4
  %163 = icmp eq i32 %161, %162
  %164 = zext i1 %163 to i32
  %165 = call i64 @broken(i32 %164)
  %166 = icmp ne i64 %165, 0
  br label %167

167:                                              ; preds = %160, %153
  %168 = phi i1 [ true, %153 ], [ %166, %160 ]
  %169 = zext i1 %168 to i32
  %170 = call i32 (...) @GetLastError()
  %171 = call i32 (i32, i8*, ...) @ok(i32 %169, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %170)
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* @TRUE, align 4
  %174 = icmp eq i32 %172, %173
  %175 = zext i1 %174 to i32
  %176 = call i32 (...) @GetLastError()
  %177 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i32 %176)
  store i64 -1, i64* %7, align 8
  %178 = load i32*, i32** %2, align 8
  %179 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %180 = call i32 @WinHttpReadData(i32* %178, i8* %179, i32 255, i64* %7)
  store i32 %180, i32* %12, align 4
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* @TRUE, align 4
  %183 = icmp eq i32 %181, %182
  %184 = zext i1 %183 to i32
  %185 = call i32 (...) @GetLastError()
  %186 = call i32 (i32, i8*, ...) @ok(i32 %184, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 %185)
  %187 = load i64, i64* %7, align 8
  %188 = icmp eq i64 %187, 14
  %189 = zext i1 %188 to i32
  %190 = load i64, i64* %7, align 8
  %191 = call i32 (i32, i8*, ...) @ok(i32 %189, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i64 %190)
  %192 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %193 = call i32 @memcmp(i8* %192, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_SendRequest.test_post, i64 0, i64 0), i32 14)
  %194 = icmp ne i32 %193, 0
  %195 = xor i1 %194, true
  %196 = zext i1 %195 to i32
  %197 = call i32 (i32, i8*, ...) @ok(i32 %196, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0))
  br label %198

198:                                              ; preds = %167, %91, %56, %46
  %199 = load i32*, i32** %2, align 8
  %200 = call i32 @WinHttpCloseHandle(i32* %199)
  store i32 %200, i32* %12, align 4
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* @TRUE, align 4
  %203 = icmp eq i32 %201, %202
  %204 = zext i1 %203 to i32
  %205 = load i32, i32* %12, align 4
  %206 = call i32 (i32, i8*, ...) @ok(i32 %204, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i64 0, i64 0), i32 %205)
  %207 = load i32*, i32** %3, align 8
  %208 = call i32 @WinHttpCloseHandle(i32* %207)
  store i32 %208, i32* %12, align 4
  %209 = load i32, i32* %12, align 4
  %210 = load i32, i32* @TRUE, align 4
  %211 = icmp eq i32 %209, %210
  %212 = zext i1 %211 to i32
  %213 = load i32, i32* %12, align 4
  %214 = call i32 (i32, i8*, ...) @ok(i32 %212, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i32 %213)
  %215 = load i32*, i32** %1, align 8
  %216 = call i32 @WinHttpCloseHandle(i32* %215)
  store i32 %216, i32* %12, align 4
  %217 = load i32, i32* %12, align 4
  %218 = load i32, i32* @TRUE, align 4
  %219 = icmp eq i32 %217, %218
  %220 = zext i1 %219 to i32
  %221 = load i32, i32* %12, align 4
  %222 = call i32 (i32, i8*, ...) @ok(i32 %220, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.19, i64 0, i64 0), i32 %221)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32* @WinHttpOpen(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @WinHttpConnect(i32*, i32, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32* @WinHttpOpenRequest(i32*, i8*, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @WinHttpSetOption(i32*, i32, ...) #1

declare dso_local i32 @WinHttpSendRequest(i32*, i8*, i64, i8*, i64, i64, i32) #1

declare dso_local i32 @WinHttpQueryOption(i32*, i32, i32*, i64*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @WinHttpWriteData(i32*, i8*, i32, i64*) #1

declare dso_local i32 @WinHttpReceiveResponse(i32*, i32*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @WinHttpReadData(i32*, i8*, i32, i64*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @WinHttpCloseHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
