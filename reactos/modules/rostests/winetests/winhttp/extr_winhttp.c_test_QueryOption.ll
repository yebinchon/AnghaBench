; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winhttp/extr_winhttp.c_test_QueryOption.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winhttp/extr_winhttp.c_test_QueryOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_useragent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"WinHttpOpen failed to open session, error %u\0A\00", align 1
@WINHTTP_OPTION_REDIRECT_POLICY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"should fail to set redirect policy %u\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"expected ERROR_INVALID_PARAMETER, got %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"should fail to query option\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"expected ERROR_INSUFFICIENT_BUFFER, got %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"expected 4, got %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"failed to query option %u\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"WinHttpQueryOption should set the size: %u\0A\00", align 1
@WINHTTP_OPTION_REDIRECT_POLICY_DISALLOW_HTTPS_TO_HTTP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [73 x i8] c"expected WINHTTP_OPTION_REDIRECT_POLICY_DISALLOW_HTTPS_TO_HTTP, got %#x\0A\00", align 1
@WINHTTP_OPTION_REDIRECT_POLICY_ALWAYS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"failed to set redirect policy %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"expected WINHTTP_OPTION_REDIRECT_POLICY_ALWAYS, got %#x\0A\00", align 1
@WINHTTP_DISABLE_COOKIES = common dso_local global i32 0, align 4
@WINHTTP_OPTION_DISABLE_FEATURE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [50 x i8] c"should fail to set disable feature for a session\0A\00", align 1
@ERROR_WINHTTP_INCORRECT_HANDLE_TYPE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [54 x i8] c"expected ERROR_WINHTTP_INCORRECT_HANDLE_TYPE, got %u\0A\00", align 1
@test_winehq = common dso_local global i32 0, align 4
@INTERNET_DEFAULT_HTTP_PORT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [55 x i8] c"WinHttpConnect failed to open a connection, error: %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c"should fail to set disable feature for a connection\0A\00", align 1
@WINHTTP_NO_REFERER = common dso_local global i32 0, align 4
@WINHTTP_DEFAULT_ACCEPT_TYPES = common dso_local global i32 0, align 4
@ERROR_WINHTTP_NAME_NOT_RESOLVED = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [40 x i8] c"Network unreachable, skipping the test\0A\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"should fail to query disable feature for a request\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"failed to set feature %u\0A\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"WinHttpCloseHandle failed on closing request: %u\0A\00", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"WinHttpCloseHandle failed on closing connection: %u\0A\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"WinHttpCloseHandle failed on closing session: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_QueryOption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_QueryOption() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @SetLastError(i32 -559038737)
  %8 = load i32, i32* @test_useragent, align 4
  %9 = call i32* @WinHttpOpen(i32 %8, i32 0, i32 0, i32 0, i32 0)
  store i32* %9, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 (...) @GetLastError()
  %14 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = call i32 @SetLastError(i32 -559038737)
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @WINHTTP_OPTION_REDIRECT_POLICY, align 4
  %18 = call i32 @WinHttpQueryOption(i32* %16, i32 %17, i32* null, i32* null)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 (...) @GetLastError()
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = call i32 (...) @GetLastError()
  %26 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 (...) @GetLastError()
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  store i32 -559038737, i32* %6, align 4
  %31 = call i32 @SetLastError(i32 -559038737)
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* @WINHTTP_OPTION_REDIRECT_POLICY, align 4
  %34 = call i32 @WinHttpQueryOption(i32* %32, i32 %33, i32* null, i32* %6)
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* %1, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %40 = call i32 (...) @GetLastError()
  %41 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 (...) @GetLastError()
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 4
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %6, align 4
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  store i32 -559038737, i32* %5, align 4
  store i32 3, i32* %6, align 4
  %51 = call i32 @SetLastError(i32 -559038737)
  %52 = load i32*, i32** %2, align 8
  %53 = load i32, i32* @WINHTTP_OPTION_REDIRECT_POLICY, align 4
  %54 = call i32 @WinHttpQueryOption(i32* %52, i32 %53, i32* %5, i32* %6)
  store i32 %54, i32* %1, align 4
  %55 = load i32, i32* %1, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %60 = call i32 (...) @GetLastError()
  %61 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 (...) @GetLastError()
  %65 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 4
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* %6, align 4
  %70 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %69)
  store i32 -559038737, i32* %5, align 4
  store i32 5, i32* %6, align 4
  %71 = call i32 @SetLastError(i32 -559038737)
  %72 = load i32*, i32** %2, align 8
  %73 = load i32, i32* @WINHTTP_OPTION_REDIRECT_POLICY, align 4
  %74 = call i32 @WinHttpQueryOption(i32* %72, i32 %73, i32* %5, i32* %6)
  store i32 %74, i32* %1, align 4
  %75 = load i32, i32* %1, align 4
  %76 = call i32 (...) @GetLastError()
  %77 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %76)
  %78 = call i32 (...) @GetLastError()
  %79 = load i32, i32* @ERROR_SUCCESS, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %0
  %82 = call i32 (...) @GetLastError()
  %83 = icmp eq i32 %82, -559038737
  %84 = zext i1 %83 to i32
  %85 = call i64 @broken(i32 %84)
  %86 = icmp ne i64 %85, 0
  br label %87

87:                                               ; preds = %81, %0
  %88 = phi i1 [ true, %0 ], [ %86, %81 ]
  %89 = zext i1 %88 to i32
  %90 = call i32 (...) @GetLastError()
  %91 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = icmp eq i64 %93, 4
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %6, align 4
  %97 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @WINHTTP_OPTION_REDIRECT_POLICY_DISALLOW_HTTPS_TO_HTTP, align 4
  %100 = icmp eq i32 %98, %99
  %101 = zext i1 %100 to i32
  %102 = load i32, i32* %5, align 4
  %103 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.9, i64 0, i64 0), i32 %102)
  %104 = call i32 @SetLastError(i32 -559038737)
  %105 = load i32*, i32** %2, align 8
  %106 = load i32, i32* @WINHTTP_OPTION_REDIRECT_POLICY, align 4
  %107 = call i32 @WinHttpSetOption(i32* %105, i32 %106, i32* null, i32 4)
  store i32 %107, i32* %1, align 4
  %108 = load i32, i32* %1, align 4
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = call i32 (...) @GetLastError()
  %113 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  %114 = call i32 (...) @GetLastError()
  %115 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %116 = icmp eq i32 %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 (...) @GetLastError()
  %119 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @WINHTTP_OPTION_REDIRECT_POLICY_ALWAYS, align 4
  store i32 %120, i32* %5, align 4
  %121 = call i32 @SetLastError(i32 -559038737)
  %122 = load i32*, i32** %2, align 8
  %123 = load i32, i32* @WINHTTP_OPTION_REDIRECT_POLICY, align 4
  %124 = call i32 @WinHttpSetOption(i32* %122, i32 %123, i32* %5, i32 3)
  store i32 %124, i32* %1, align 4
  %125 = load i32, i32* %1, align 4
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = call i32 (...) @GetLastError()
  %130 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %129)
  %131 = call i32 (...) @GetLastError()
  %132 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %133 = icmp eq i32 %131, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 (...) @GetLastError()
  %136 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @WINHTTP_OPTION_REDIRECT_POLICY_ALWAYS, align 4
  store i32 %137, i32* %5, align 4
  %138 = call i32 @SetLastError(i32 -559038737)
  %139 = load i32*, i32** %2, align 8
  %140 = load i32, i32* @WINHTTP_OPTION_REDIRECT_POLICY, align 4
  %141 = call i32 @WinHttpSetOption(i32* %139, i32 %140, i32* %5, i32 5)
  store i32 %141, i32* %1, align 4
  %142 = load i32, i32* %1, align 4
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = call i32 (...) @GetLastError()
  %147 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %146)
  %148 = call i32 (...) @GetLastError()
  %149 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %150 = icmp eq i32 %148, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 (...) @GetLastError()
  %153 = call i32 (i32, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* @WINHTTP_OPTION_REDIRECT_POLICY_ALWAYS, align 4
  store i32 %154, i32* %5, align 4
  %155 = call i32 @SetLastError(i32 -559038737)
  %156 = load i32*, i32** %2, align 8
  %157 = load i32, i32* @WINHTTP_OPTION_REDIRECT_POLICY, align 4
  %158 = call i32 @WinHttpSetOption(i32* %156, i32 %157, i32* %5, i32 4)
  store i32 %158, i32* %1, align 4
  %159 = load i32, i32* %1, align 4
  %160 = call i32 (...) @GetLastError()
  %161 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %160)
  store i32 -559038737, i32* %5, align 4
  store i32 4, i32* %6, align 4
  %162 = call i32 @SetLastError(i32 -559038737)
  %163 = load i32*, i32** %2, align 8
  %164 = load i32, i32* @WINHTTP_OPTION_REDIRECT_POLICY, align 4
  %165 = call i32 @WinHttpQueryOption(i32* %163, i32 %164, i32* %5, i32* %6)
  store i32 %165, i32* %1, align 4
  %166 = load i32, i32* %1, align 4
  %167 = call i32 (...) @GetLastError()
  %168 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %167)
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @WINHTTP_OPTION_REDIRECT_POLICY_ALWAYS, align 4
  %171 = icmp eq i32 %169, %170
  %172 = zext i1 %171 to i32
  %173 = load i32, i32* %5, align 4
  %174 = call i32 (i32, i8*, ...) @ok(i32 %172, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0), i32 %173)
  %175 = load i32, i32* @WINHTTP_DISABLE_COOKIES, align 4
  store i32 %175, i32* %5, align 4
  %176 = call i32 @SetLastError(i32 -559038737)
  %177 = load i32*, i32** %2, align 8
  %178 = load i32, i32* @WINHTTP_OPTION_DISABLE_FEATURE, align 4
  %179 = call i32 @WinHttpSetOption(i32* %177, i32 %178, i32* %5, i32 4)
  store i32 %179, i32* %1, align 4
  %180 = load i32, i32* %1, align 4
  %181 = icmp ne i32 %180, 0
  %182 = xor i1 %181, true
  %183 = zext i1 %182 to i32
  %184 = call i32 (i32, i8*, ...) @ok(i32 %183, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0))
  %185 = call i32 (...) @GetLastError()
  %186 = load i32, i32* @ERROR_WINHTTP_INCORRECT_HANDLE_TYPE, align 4
  %187 = icmp eq i32 %185, %186
  %188 = zext i1 %187 to i32
  %189 = call i32 (...) @GetLastError()
  %190 = call i32 (i32, i8*, ...) @ok(i32 %188, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0), i32 %189)
  %191 = call i32 @SetLastError(i32 -559038737)
  %192 = load i32*, i32** %2, align 8
  %193 = load i32, i32* @test_winehq, align 4
  %194 = load i32, i32* @INTERNET_DEFAULT_HTTP_PORT, align 4
  %195 = call i32* @WinHttpConnect(i32* %192, i32 %193, i32 %194, i32 0)
  store i32* %195, i32** %4, align 8
  %196 = load i32*, i32** %4, align 8
  %197 = icmp ne i32* %196, null
  %198 = zext i1 %197 to i32
  %199 = call i32 (...) @GetLastError()
  %200 = call i32 (i32, i8*, ...) @ok(i32 %198, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i64 0, i64 0), i32 %199)
  %201 = load i32, i32* @WINHTTP_DISABLE_COOKIES, align 4
  store i32 %201, i32* %5, align 4
  %202 = call i32 @SetLastError(i32 -559038737)
  %203 = load i32*, i32** %4, align 8
  %204 = load i32, i32* @WINHTTP_OPTION_DISABLE_FEATURE, align 4
  %205 = call i32 @WinHttpSetOption(i32* %203, i32 %204, i32* %5, i32 4)
  store i32 %205, i32* %1, align 4
  %206 = load i32, i32* %1, align 4
  %207 = icmp ne i32 %206, 0
  %208 = xor i1 %207, true
  %209 = zext i1 %208 to i32
  %210 = call i32 (i32, i8*, ...) @ok(i32 %209, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.15, i64 0, i64 0))
  %211 = call i32 (...) @GetLastError()
  %212 = load i32, i32* @ERROR_WINHTTP_INCORRECT_HANDLE_TYPE, align 4
  %213 = icmp eq i32 %211, %212
  %214 = zext i1 %213 to i32
  %215 = call i32 (...) @GetLastError()
  %216 = call i32 (i32, i8*, ...) @ok(i32 %214, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0), i32 %215)
  %217 = call i32 @SetLastError(i32 -559038737)
  %218 = load i32*, i32** %4, align 8
  %219 = load i32, i32* @WINHTTP_NO_REFERER, align 4
  %220 = load i32, i32* @WINHTTP_DEFAULT_ACCEPT_TYPES, align 4
  %221 = call i32* @WinHttpOpenRequest(i32* %218, i32* null, i32* null, i32* null, i32 %219, i32 %220, i32 0)
  store i32* %221, i32** %3, align 8
  %222 = load i32*, i32** %3, align 8
  %223 = icmp eq i32* %222, null
  br i1 %223, label %224, label %230

224:                                              ; preds = %87
  %225 = call i32 (...) @GetLastError()
  %226 = load i32, i32* @ERROR_WINHTTP_NAME_NOT_RESOLVED, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %224
  %229 = call i32 @skip(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0))
  br label %289

230:                                              ; preds = %224, %87
  store i32 -559038737, i32* %5, align 4
  store i32 4, i32* %6, align 4
  %231 = call i32 @SetLastError(i32 -559038737)
  %232 = load i32*, i32** %3, align 8
  %233 = load i32, i32* @WINHTTP_OPTION_DISABLE_FEATURE, align 4
  %234 = call i32 @WinHttpQueryOption(i32* %232, i32 %233, i32* %5, i32* %6)
  store i32 %234, i32* %1, align 4
  %235 = load i32, i32* %1, align 4
  %236 = icmp ne i32 %235, 0
  %237 = xor i1 %236, true
  %238 = zext i1 %237 to i32
  %239 = call i32 (i32, i8*, ...) @ok(i32 %238, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i64 0, i64 0))
  %240 = call i32 (...) @GetLastError()
  %241 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %242 = icmp eq i32 %240, %241
  %243 = zext i1 %242 to i32
  %244 = call i32 (...) @GetLastError()
  %245 = call i32 (i32, i8*, ...) @ok(i32 %243, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %244)
  store i32 0, i32* %5, align 4
  store i32 4, i32* %6, align 4
  %246 = call i32 @SetLastError(i32 -559038737)
  %247 = load i32*, i32** %3, align 8
  %248 = load i32, i32* @WINHTTP_OPTION_DISABLE_FEATURE, align 4
  %249 = call i32 @WinHttpSetOption(i32* %247, i32 %248, i32* %5, i32 4)
  store i32 %249, i32* %1, align 4
  %250 = load i32, i32* %1, align 4
  %251 = call i32 (...) @GetLastError()
  %252 = call i32 (i32, i8*, ...) @ok(i32 %250, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i32 %251)
  store i32 -1, i32* %5, align 4
  store i32 4, i32* %6, align 4
  %253 = call i32 @SetLastError(i32 -559038737)
  %254 = load i32*, i32** %3, align 8
  %255 = load i32, i32* @WINHTTP_OPTION_DISABLE_FEATURE, align 4
  %256 = call i32 @WinHttpSetOption(i32* %254, i32 %255, i32* %5, i32 4)
  store i32 %256, i32* %1, align 4
  %257 = load i32, i32* %1, align 4
  %258 = call i32 (...) @GetLastError()
  %259 = call i32 (i32, i8*, ...) @ok(i32 %257, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i32 %258)
  %260 = load i32, i32* @WINHTTP_DISABLE_COOKIES, align 4
  store i32 %260, i32* %5, align 4
  store i32 4, i32* %6, align 4
  %261 = call i32 @SetLastError(i32 -559038737)
  %262 = load i32*, i32** %3, align 8
  %263 = load i32, i32* @WINHTTP_OPTION_DISABLE_FEATURE, align 4
  %264 = call i32 @WinHttpSetOption(i32* %262, i32 %263, i32* %5, i32 4)
  store i32 %264, i32* %1, align 4
  %265 = load i32, i32* %1, align 4
  %266 = call i32 (...) @GetLastError()
  %267 = call i32 (i32, i8*, ...) @ok(i32 %265, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i32 %266)
  store i32 0, i32* %6, align 4
  %268 = call i32 @SetLastError(i32 -559038737)
  %269 = load i32*, i32** %3, align 8
  %270 = load i32, i32* @WINHTTP_OPTION_DISABLE_FEATURE, align 4
  %271 = call i32 @WinHttpQueryOption(i32* %269, i32 %270, i32* null, i32* %6)
  store i32 %271, i32* %1, align 4
  %272 = load i32, i32* %1, align 4
  %273 = icmp ne i32 %272, 0
  %274 = xor i1 %273, true
  %275 = zext i1 %274 to i32
  %276 = call i32 (i32, i8*, ...) @ok(i32 %275, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i64 0, i64 0))
  %277 = call i32 (...) @GetLastError()
  %278 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %279 = icmp eq i32 %277, %278
  %280 = zext i1 %279 to i32
  %281 = call i32 (...) @GetLastError()
  %282 = call i32 (i32, i8*, ...) @ok(i32 %280, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %281)
  %283 = call i32 @SetLastError(i32 -559038737)
  %284 = load i32*, i32** %3, align 8
  %285 = call i32 @WinHttpCloseHandle(i32* %284)
  store i32 %285, i32* %1, align 4
  %286 = load i32, i32* %1, align 4
  %287 = call i32 (...) @GetLastError()
  %288 = call i32 (i32, i8*, ...) @ok(i32 %286, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.19, i64 0, i64 0), i32 %287)
  br label %289

289:                                              ; preds = %230, %228
  %290 = call i32 @SetLastError(i32 -559038737)
  %291 = load i32*, i32** %4, align 8
  %292 = call i32 @WinHttpCloseHandle(i32* %291)
  store i32 %292, i32* %1, align 4
  %293 = load i32, i32* %1, align 4
  %294 = call i32 (...) @GetLastError()
  %295 = call i32 (i32, i8*, ...) @ok(i32 %293, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.20, i64 0, i64 0), i32 %294)
  %296 = call i32 @SetLastError(i32 -559038737)
  %297 = load i32*, i32** %2, align 8
  %298 = call i32 @WinHttpCloseHandle(i32* %297)
  store i32 %298, i32* %1, align 4
  %299 = load i32, i32* %1, align 4
  %300 = call i32 (...) @GetLastError()
  %301 = call i32 (i32, i8*, ...) @ok(i32 %299, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i64 0, i64 0), i32 %300)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32* @WinHttpOpen(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @WinHttpQueryOption(i32*, i32, i32*, i32*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @WinHttpSetOption(i32*, i32, i32*, i32) #1

declare dso_local i32* @WinHttpConnect(i32*, i32, i32, i32) #1

declare dso_local i32* @WinHttpOpenRequest(i32*, i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @WinHttpCloseHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
