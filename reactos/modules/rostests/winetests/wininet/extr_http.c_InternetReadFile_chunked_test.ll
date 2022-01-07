; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_http.c_InternetReadFile_chunked_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_http.c_InternetReadFile_chunked_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@__const.InternetReadFile_chunked_test.types = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str.1 = private unnamed_addr constant [40 x i8] c"Starting InternetReadFile chunked test\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"InternetOpenA <--\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@INTERNET_OPEN_TYPE_PRECONFIG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"InternetOpen failed with error %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"InternetOpenA -->\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"InternetConnectA <--\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"test.winehq.org\00", align 1
@INTERNET_INVALID_PORT_NUMBER = common dso_local global i32 0, align 4
@INTERNET_SERVICE_HTTP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"InternetConnect failed with error %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"InternetConnectA -->\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"HttpOpenRequestA <--\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"/tests/chunked\00", align 1
@INTERNET_FLAG_KEEP_CONNECTION = common dso_local global i32 0, align 4
@INTERNET_FLAG_RELOAD = common dso_local global i32 0, align 4
@ERROR_INTERNET_NAME_NOT_RESOLVED = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [38 x i8] c"HttpOpenRequest failed with error %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"HttpOpenRequestA -->\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"HttpSendRequestA -->\0A\00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c"Synchronous HttpSendRequest returning 0, error %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"HttpSendRequestA <--\0A\00", align 1
@HTTP_QUERY_CONTENT_TYPE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [31 x i8] c"Option CONTENT_TYPE -> %i  %s\0A\00", align 1
@HTTP_QUERY_TRANSFER_ENCODING = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [36 x i8] c"Option TRANSFER_ENCODING -> %i  %s\0A\00", align 1
@ERROR_HTTP_HEADER_NOT_FOUND = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [50 x i8] c"Failed to get TRANSFER_ENCODING option, error %u\0A\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"chunked\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"Wrong transfer encoding '%s'\0A\00", align 1
@HTTP_QUERY_CONTENT_LENGTH = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [34 x i8] c"Found CONTENT_LENGTH option '%s'\0A\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"Wrong error %u\0A\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"Entering Query loop\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [56 x i8] c"InternetQueryDataAvailable failed with non-zero length\0A\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"InternetQueryDataAvailable failed, error %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"got %u available\0A\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"ReadFile -> %i %i\0A\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"only got %u of %u available\0A\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"received partial line '%s'\0A\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"InternetReadFile failed: %u\0A\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"aborting\0A\00", align 1
@.str.35 = private unnamed_addr constant [65 x i8] c"InternetCloseHandle of handle opened by HttpOpenRequestA failed\0A\00", align 1
@.str.36 = private unnamed_addr constant [62 x i8] c"InternetCloseHandle of handle opened by InternetOpenA failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @InternetReadFile_chunked_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InternetReadFile_chunked_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4000 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [2 x i8*], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = bitcast [2 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([2 x i8*]* @__const.InternetReadFile_chunked_test.types to i8*), i64 16, i1 false)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %13 = load i32, i32* @INTERNET_OPEN_TYPE_PRECONFIG, align 4
  %14 = call i32 @InternetOpenA(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 %13, i32* null, i32* null, i32 0)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 (...) @GetLastError()
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %18)
  %20 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %0
  br label %238

24:                                               ; preds = %0
  %25 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @INTERNET_INVALID_PORT_NUMBER, align 4
  %28 = load i32, i32* @INTERNET_SERVICE_HTTP, align 4
  %29 = call i32 @InternetConnectA(i32 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %27, i32* null, i32* null, i32 %28, i32 0, i32 -559038737)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 (...) @GetLastError()
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %33)
  %35 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  br label %238

39:                                               ; preds = %24
  %40 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %41 = load i32, i32* %7, align 4
  %42 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %43 = load i32, i32* @INTERNET_FLAG_KEEP_CONNECTION, align 4
  %44 = load i32, i32* @INTERNET_FLAG_RELOAD, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @HttpOpenRequestA(i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32* null, i32* null, i8** %42, i32 %45, i32 -559038803)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %39
  %50 = call i32 (...) @GetLastError()
  %51 = load i32, i32* @ERROR_INTERNET_NAME_NOT_RESOLVED, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %60

54:                                               ; preds = %49, %39
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 (...) @GetLastError()
  %59 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %54, %53
  %61 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %238

65:                                               ; preds = %60
  %66 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  %67 = call i32 @SetLastError(i32 -559038737)
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @HttpSendRequestA(i32 %68, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 -1, i32* null, i32 0)
  store i32 %69, i32* %1, align 4
  %70 = load i32, i32* %1, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %65
  %73 = call i32 (...) @GetLastError()
  %74 = load i32, i32* @ERROR_INTERNET_NAME_NOT_RESOLVED, align 4
  %75 = icmp eq i32 %73, %74
  br label %76

76:                                               ; preds = %72, %65
  %77 = phi i1 [ true, %65 ], [ %75, %72 ]
  %78 = zext i1 %77 to i32
  %79 = call i32 (...) @GetLastError()
  %80 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.16, i64 0, i64 0), i32 %79)
  %81 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0))
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @test_request_flags(i32 %82, i32 0)
  store i64 100, i64* %3, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @HTTP_QUERY_CONTENT_TYPE, align 4
  %86 = getelementptr inbounds [4000 x i8], [4000 x i8]* %2, i64 0, i64 0
  %87 = call i32 (i32, i32, ...) @HttpQueryInfoA(i32 %84, i32 %85, i8* %86, i64* %3, i32 0)
  store i32 %87, i32* %1, align 4
  %88 = load i64, i64* %3, align 8
  %89 = getelementptr inbounds [4000 x i8], [4000 x i8]* %2, i64 0, i64 %88
  store i8 0, i8* %89, align 1
  %90 = load i32, i32* %1, align 4
  %91 = getelementptr inbounds [4000 x i8], [4000 x i8]* %2, i64 0, i64 0
  %92 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i32 %90, i8* %91)
  %93 = call i32 @SetLastError(i32 -559038737)
  store i64 100, i64* %3, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @HTTP_QUERY_TRANSFER_ENCODING, align 4
  %96 = getelementptr inbounds [4000 x i8], [4000 x i8]* %2, i64 0, i64 0
  %97 = call i32 (i32, i32, ...) @HttpQueryInfoA(i32 %94, i32 %95, i8* %96, i64* %3, i32 0)
  store i32 %97, i32* %1, align 4
  %98 = load i64, i64* %3, align 8
  %99 = getelementptr inbounds [4000 x i8], [4000 x i8]* %2, i64 0, i64 %98
  store i8 0, i8* %99, align 1
  %100 = load i32, i32* %1, align 4
  %101 = getelementptr inbounds [4000 x i8], [4000 x i8]* %2, i64 0, i64 0
  %102 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0), i32 %100, i8* %101)
  %103 = load i32, i32* %1, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %76
  %106 = call i64 (...) @proxy_active()
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = call i32 (...) @GetLastError()
  %110 = load i32, i32* @ERROR_HTTP_HEADER_NOT_FOUND, align 4
  %111 = icmp eq i32 %109, %110
  br label %112

112:                                              ; preds = %108, %105
  %113 = phi i1 [ false, %105 ], [ %111, %108 ]
  br label %114

114:                                              ; preds = %112, %76
  %115 = phi i1 [ true, %76 ], [ %113, %112 ]
  %116 = zext i1 %115 to i32
  %117 = call i32 (...) @GetLastError()
  %118 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.20, i64 0, i64 0), i32 %117)
  %119 = getelementptr inbounds [4000 x i8], [4000 x i8]* %2, i64 0, i64 0
  %120 = call i32 @strcmp(i8* %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %114
  %123 = load i32, i32* %1, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %122
  %126 = call i64 (...) @proxy_active()
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = call i32 (...) @GetLastError()
  %130 = load i32, i32* @ERROR_HTTP_HEADER_NOT_FOUND, align 4
  %131 = icmp eq i32 %129, %130
  br label %132

132:                                              ; preds = %128, %125, %122
  %133 = phi i1 [ false, %125 ], [ false, %122 ], [ %131, %128 ]
  br label %134

134:                                              ; preds = %132, %114
  %135 = phi i1 [ true, %114 ], [ %133, %132 ]
  %136 = zext i1 %135 to i32
  %137 = getelementptr inbounds [4000 x i8], [4000 x i8]* %2, i64 0, i64 0
  %138 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i64 0, i64 0), i8* %137)
  %139 = call i32 @SetLastError(i32 -559038737)
  store i64 16, i64* %3, align 8
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @HTTP_QUERY_CONTENT_LENGTH, align 4
  %142 = call i32 (i32, i32, ...) @HttpQueryInfoA(i32 %140, i32 %141, [4000 x i8]* %2, i64* %3, i32 0)
  store i32 %142, i32* %1, align 4
  %143 = load i32, i32* %1, align 4
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  %147 = getelementptr inbounds [4000 x i8], [4000 x i8]* %2, i64 0, i64 0
  %148 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0), i8* %147)
  %149 = call i32 (...) @GetLastError()
  %150 = load i32, i32* @ERROR_HTTP_HEADER_NOT_FOUND, align 4
  %151 = icmp eq i32 %149, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 (...) @GetLastError()
  %154 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i32 %153)
  store i64 100, i64* %3, align 8
  %155 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0))
  br label %156

156:                                              ; preds = %236, %134
  %157 = load i64, i64* @TRUE, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %237

159:                                              ; preds = %156
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @InternetQueryDataAvailable(i32 %160, i64* %3, i32 0, i32 0)
  store i32 %161, i32* %1, align 4
  %162 = load i32, i32* %1, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %159
  %165 = load i64, i64* %3, align 8
  %166 = icmp ne i64 %165, 0
  br label %167

167:                                              ; preds = %164, %159
  %168 = phi i1 [ false, %159 ], [ %166, %164 ]
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  %171 = call i32 (i32, i8*, ...) @ok(i32 %170, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.26, i64 0, i64 0))
  %172 = load i32, i32* %1, align 4
  %173 = call i32 (...) @GetLastError()
  %174 = call i32 (i32, i8*, ...) @ok(i32 %172, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.27, i64 0, i64 0), i32 %173)
  %175 = load i64, i64* %3, align 8
  %176 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0), i64 %175)
  %177 = load i64, i64* %3, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %220

179:                                              ; preds = %167
  %180 = call i32 (...) @GetProcessHeap()
  %181 = load i64, i64* %3, align 8
  %182 = add i64 %181, 1
  %183 = trunc i64 %182 to i32
  %184 = call i8* @HeapAlloc(i32 %180, i32 0, i32 %183)
  store i8* %184, i8** %9, align 8
  %185 = load i32, i32* %8, align 4
  %186 = load i8*, i8** %9, align 8
  %187 = load i64, i64* %3, align 8
  %188 = trunc i64 %187 to i32
  %189 = call i32 @InternetReadFile(i32 %185, i8* %186, i32 %188, i64* %4)
  store i32 %189, i32* %1, align 4
  %190 = load i8*, i8** %9, align 8
  %191 = load i64, i64* %4, align 8
  %192 = getelementptr inbounds i8, i8* %190, i64 %191
  store i8 0, i8* %192, align 1
  %193 = load i32, i32* %1, align 4
  %194 = load i64, i64* %4, align 8
  %195 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0), i32 %193, i64 %194)
  %196 = load i64, i64* %3, align 8
  %197 = load i64, i64* %4, align 8
  %198 = icmp eq i64 %196, %197
  %199 = zext i1 %198 to i32
  %200 = load i64, i64* %4, align 8
  %201 = load i64, i64* %3, align 8
  %202 = call i32 (i32, i8*, ...) @ok(i32 %199, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i64 0, i64 0), i64 %200, i64 %201)
  %203 = load i8*, i8** %9, align 8
  %204 = load i64, i64* %4, align 8
  %205 = sub i64 %204, 1
  %206 = getelementptr inbounds i8, i8* %203, i64 %205
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp eq i32 %208, 10
  %210 = zext i1 %209 to i32
  %211 = load i8*, i8** %9, align 8
  %212 = call i32 (i32, i8*, ...) @ok(i32 %210, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i64 0, i64 0), i8* %211)
  %213 = call i32 (...) @GetProcessHeap()
  %214 = load i8*, i8** %9, align 8
  %215 = call i32 @HeapFree(i32 %213, i32 0, i8* %214)
  %216 = load i64, i64* %4, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %179
  br label %237

219:                                              ; preds = %179
  br label %220

220:                                              ; preds = %219, %167
  %221 = load i64, i64* %3, align 8
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %236

223:                                              ; preds = %220
  store i64 3735928559, i64* %4, align 8
  %224 = load i32, i32* %8, align 4
  %225 = getelementptr inbounds [4000 x i8], [4000 x i8]* %2, i64 0, i64 0
  %226 = call i32 @InternetReadFile(i32 %224, i8* %225, i32 1, i64* %4)
  store i32 %226, i32* %1, align 4
  %227 = load i32, i32* %1, align 4
  %228 = call i32 (...) @GetLastError()
  %229 = call i32 (i32, i8*, ...) @ok(i32 %227, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i64 0, i64 0), i32 %228)
  %230 = load i64, i64* %4, align 8
  %231 = icmp ne i64 %230, 0
  %232 = xor i1 %231, true
  %233 = zext i1 %232 to i32
  %234 = load i64, i64* %4, align 8
  %235 = call i32 (i32, i8*, ...) @ok(i32 %233, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0), i64 %234)
  br label %237

236:                                              ; preds = %220
  br label %156

237:                                              ; preds = %223, %218, %156
  br label %238

238:                                              ; preds = %237, %64, %38, %23
  %239 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0))
  %240 = load i32, i32* %8, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %238
  %243 = load i32, i32* %8, align 4
  %244 = call i32 @InternetCloseHandle(i32 %243)
  store i32 %244, i32* %1, align 4
  %245 = load i32, i32* %1, align 4
  %246 = call i32 (i32, i8*, ...) @ok(i32 %245, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.35, i64 0, i64 0))
  br label %247

247:                                              ; preds = %242, %238
  %248 = load i32, i32* %6, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %247
  %251 = load i32, i32* %6, align 4
  %252 = call i32 @InternetCloseHandle(i32 %251)
  store i32 %252, i32* %1, align 4
  %253 = load i32, i32* %1, align 4
  %254 = call i32 (i32, i8*, ...) @ok(i32 %253, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.36, i64 0, i64 0))
  br label %255

255:                                              ; preds = %250, %247
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @trace(i8*, ...) #2

declare dso_local i32 @InternetOpenA(i8*, i32, i32*, i32*, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @InternetConnectA(i32, i8*, i32, i32*, i32*, i32, i32, i32) #2

declare dso_local i32 @HttpOpenRequestA(i32, i8*, i8*, i32*, i32*, i8**, i32, i32) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @HttpSendRequestA(i32, i8*, i32, i32*, i32) #2

declare dso_local i32 @test_request_flags(i32, i32) #2

declare dso_local i32 @HttpQueryInfoA(i32, i32, ...) #2

declare dso_local i64 @proxy_active(...) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @InternetQueryDataAvailable(i32, i64*, i32, i32) #2

declare dso_local i8* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @InternetReadFile(i32, i8*, i32, i64*) #2

declare dso_local i32 @HeapFree(i32, i32, i8*) #2

declare dso_local i32 @InternetCloseHandle(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
