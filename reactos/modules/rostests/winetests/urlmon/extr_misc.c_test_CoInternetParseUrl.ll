; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_misc.c_test_CoInternetParseUrl.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_misc.c_test_CoInternetParseUrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i64, i64, i32, i64, i64, i64, i64 }

@test_CoInternetParseUrl.buf = internal global [4096 x %struct.TYPE_8__] zeroinitializer, align 16
@parse_tests = common dso_local global %struct.TYPE_8__* null, align 8
@PARSE_SCHEMA = common dso_local global i32 0, align 4
@E_POINTER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"schema failed: %08x, expected E_POINTER\0A\00", align 1
@PARSE_SECURITY_URL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"[%d] security url failed: %08x, expected %08x\0A\00", align 1
@PARSE_ENCODE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"[%d] encoding failed: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"[%d] wrong size\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"[%d] wrong encoded url\0A\00", align 1
@PARSE_PATH_FROM_URL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"[%d] path failed: %08x, expected %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"[%d] wrong path\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"[%d] schema failed: %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"[%d] wrong schema\0A\00", align 1
@wszRes = common dso_local global i32 0, align 4
@wszAbout = common dso_local global i32 0, align 4
@PARSE_DOMAIN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"[%d] domain failed: %08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"[%d] wrong domain, received %s\0A\00", align 1
@PARSE_ROOTDOCUMENT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"[%d] rootdocument failed: %08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"[%d] wrong rootdocument, received %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CoInternetParseUrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CoInternetParseUrl() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = call i32 @memset(%struct.TYPE_8__* getelementptr inbounds ([4096 x %struct.TYPE_8__], [4096 x %struct.TYPE_8__]* @test_CoInternetParseUrl.buf, i64 0, i64 0), i32 240, i32 327680)
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** @parse_tests, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i64 0
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @PARSE_SCHEMA, align 4
  %10 = call i64 @pCoInternetParseUrl(i32 %8, i32 %9, i32 0, %struct.TYPE_8__* getelementptr inbounds ([4096 x %struct.TYPE_8__], [4096 x %struct.TYPE_8__]* @test_CoInternetParseUrl.buf, i64 0, i64 0), i32 3, i64* %2, i32 0)
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* @E_POINTER, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* %1, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 (i32, i8*, i32, ...) @ok(i32 %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %304, %0
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @parse_tests, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %307

23:                                               ; preds = %18
  %24 = call i32 @memset(%struct.TYPE_8__* getelementptr inbounds ([4096 x %struct.TYPE_8__], [4096 x %struct.TYPE_8__]* @test_CoInternetParseUrl.buf, i64 0, i64 0), i32 240, i32 327680)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @parse_tests, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PARSE_SECURITY_URL, align 4
  %32 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* getelementptr inbounds ([4096 x %struct.TYPE_8__], [4096 x %struct.TYPE_8__]* @test_CoInternetParseUrl.buf, i64 0, i64 0))
  %33 = call i64 @pCoInternetParseUrl(i32 %30, i32 %31, i32 0, %struct.TYPE_8__* getelementptr inbounds ([4096 x %struct.TYPE_8__], [4096 x %struct.TYPE_8__]* @test_CoInternetParseUrl.buf, i64 0, i64 0), i32 %32, i64* %2, i32 0)
  store i64 %33, i64* %1, align 8
  %34 = load i64, i64* %1, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** @parse_tests, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %34, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %3, align 4
  %44 = load i64, i64* %1, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @parse_tests, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (i32, i8*, i32, ...) @ok(i32 %42, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %43, i64 %44, i64 %50)
  %52 = call i32 @memset(%struct.TYPE_8__* getelementptr inbounds ([4096 x %struct.TYPE_8__], [4096 x %struct.TYPE_8__]* @test_CoInternetParseUrl.buf, i64 0, i64 0), i32 240, i32 327680)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** @parse_tests, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @PARSE_ENCODE, align 4
  %60 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* getelementptr inbounds ([4096 x %struct.TYPE_8__], [4096 x %struct.TYPE_8__]* @test_CoInternetParseUrl.buf, i64 0, i64 0))
  %61 = call i64 @pCoInternetParseUrl(i32 %58, i32 %59, i32 0, %struct.TYPE_8__* getelementptr inbounds ([4096 x %struct.TYPE_8__], [4096 x %struct.TYPE_8__]* @test_CoInternetParseUrl.buf, i64 0, i64 0), i32 %60, i64* %2, i32 0)
  store i64 %61, i64* %1, align 8
  %62 = load i64, i64* %1, align 8
  %63 = load i64, i64* @S_OK, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %3, align 4
  %67 = load i64, i64* %1, align 8
  %68 = call i32 (i32, i8*, i32, ...) @ok(i32 %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %66, i64 %67)
  %69 = load i64, i64* %2, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** @parse_tests, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 9
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @lstrlenW(i64 %75)
  %77 = icmp eq i64 %69, %76
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %3, align 4
  %80 = call i32 (i32, i8*, i32, ...) @ok(i32 %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** @parse_tests, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 9
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @lstrcmpW(i64 %86, %struct.TYPE_8__* getelementptr inbounds ([4096 x %struct.TYPE_8__], [4096 x %struct.TYPE_8__]* @test_CoInternetParseUrl.buf, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %3, align 4
  %92 = call i32 (i32, i8*, i32, ...) @ok(i32 %90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  %93 = call i32 @memset(%struct.TYPE_8__* getelementptr inbounds ([4096 x %struct.TYPE_8__], [4096 x %struct.TYPE_8__]* @test_CoInternetParseUrl.buf, i64 0, i64 0), i32 240, i32 327680)
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** @parse_tests, align 8
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @PARSE_PATH_FROM_URL, align 4
  %101 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* getelementptr inbounds ([4096 x %struct.TYPE_8__], [4096 x %struct.TYPE_8__]* @test_CoInternetParseUrl.buf, i64 0, i64 0))
  %102 = call i64 @pCoInternetParseUrl(i32 %99, i32 %100, i32 0, %struct.TYPE_8__* getelementptr inbounds ([4096 x %struct.TYPE_8__], [4096 x %struct.TYPE_8__]* @test_CoInternetParseUrl.buf, i64 0, i64 0), i32 %101, i64* %2, i32 0)
  store i64 %102, i64* %1, align 8
  %103 = load i64, i64* %1, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** @parse_tests, align 8
  %105 = load i32, i32* %3, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %103, %109
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %3, align 4
  %113 = load i64, i64* %1, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** @parse_tests, align 8
  %115 = load i32, i32* %3, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i32 (i32, i8*, i32, ...) @ok(i32 %111, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %112, i64 %113, i64 %119)
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** @parse_tests, align 8
  %122 = load i32, i32* %3, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 8
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %153

128:                                              ; preds = %23
  %129 = load i64, i64* %2, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** @parse_tests, align 8
  %131 = load i32, i32* %3, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 8
  %135 = load i64, i64* %134, align 8
  %136 = call i64 @lstrlenW(i64 %135)
  %137 = icmp eq i64 %129, %136
  %138 = zext i1 %137 to i32
  %139 = load i32, i32* %3, align 4
  %140 = call i32 (i32, i8*, i32, ...) @ok(i32 %138, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %139)
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** @parse_tests, align 8
  %142 = load i32, i32* %3, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 8
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @lstrcmpW(i64 %146, %struct.TYPE_8__* getelementptr inbounds ([4096 x %struct.TYPE_8__], [4096 x %struct.TYPE_8__]* @test_CoInternetParseUrl.buf, i64 0, i64 0))
  %148 = icmp ne i32 %147, 0
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i32
  %151 = load i32, i32* %3, align 4
  %152 = call i32 (i32, i8*, i32, ...) @ok(i32 %150, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %151)
  br label %153

153:                                              ; preds = %128, %23
  %154 = call i32 @memset(%struct.TYPE_8__* getelementptr inbounds ([4096 x %struct.TYPE_8__], [4096 x %struct.TYPE_8__]* @test_CoInternetParseUrl.buf, i64 0, i64 0), i32 240, i32 327680)
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** @parse_tests, align 8
  %156 = load i32, i32* %3, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @PARSE_SCHEMA, align 4
  %162 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* getelementptr inbounds ([4096 x %struct.TYPE_8__], [4096 x %struct.TYPE_8__]* @test_CoInternetParseUrl.buf, i64 0, i64 0))
  %163 = call i64 @pCoInternetParseUrl(i32 %160, i32 %161, i32 0, %struct.TYPE_8__* getelementptr inbounds ([4096 x %struct.TYPE_8__], [4096 x %struct.TYPE_8__]* @test_CoInternetParseUrl.buf, i64 0, i64 0), i32 %162, i64* %2, i32 0)
  store i64 %163, i64* %1, align 8
  %164 = load i64, i64* %1, align 8
  %165 = load i64, i64* @S_OK, align 8
  %166 = icmp eq i64 %164, %165
  %167 = zext i1 %166 to i32
  %168 = load i32, i32* %3, align 4
  %169 = load i64, i64* %1, align 8
  %170 = call i32 (i32, i8*, i32, ...) @ok(i32 %167, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %168, i64 %169)
  %171 = load i64, i64* %2, align 8
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** @parse_tests, align 8
  %173 = load i32, i32* %3, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 7
  %177 = load i64, i64* %176, align 8
  %178 = call i64 @lstrlenW(i64 %177)
  %179 = icmp eq i64 %171, %178
  %180 = zext i1 %179 to i32
  %181 = load i32, i32* %3, align 4
  %182 = call i32 (i32, i8*, i32, ...) @ok(i32 %180, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %181)
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** @parse_tests, align 8
  %184 = load i32, i32* %3, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 7
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @lstrcmpW(i64 %188, %struct.TYPE_8__* getelementptr inbounds ([4096 x %struct.TYPE_8__], [4096 x %struct.TYPE_8__]* @test_CoInternetParseUrl.buf, i64 0, i64 0))
  %190 = icmp ne i32 %189, 0
  %191 = xor i1 %190, true
  %192 = zext i1 %191 to i32
  %193 = load i32, i32* %3, align 4
  %194 = call i32 (i32, i8*, i32, ...) @ok(i32 %192, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %193)
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** @parse_tests, align 8
  %196 = load i32, i32* %3, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @wszRes, align 4
  %202 = call i64 @memcmp(i32 %200, i32 %201, i32 240)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %259

204:                                              ; preds = %153
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** @parse_tests, align 8
  %206 = load i32, i32* %3, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @wszAbout, align 4
  %212 = call i64 @memcmp(i32 %210, i32 %211, i32 400)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %259

214:                                              ; preds = %204
  %215 = call i32 @memset(%struct.TYPE_8__* getelementptr inbounds ([4096 x %struct.TYPE_8__], [4096 x %struct.TYPE_8__]* @test_CoInternetParseUrl.buf, i64 0, i64 0), i32 240, i32 327680)
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** @parse_tests, align 8
  %217 = load i32, i32* %3, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @PARSE_DOMAIN, align 4
  %223 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* getelementptr inbounds ([4096 x %struct.TYPE_8__], [4096 x %struct.TYPE_8__]* @test_CoInternetParseUrl.buf, i64 0, i64 0))
  %224 = call i64 @pCoInternetParseUrl(i32 %221, i32 %222, i32 0, %struct.TYPE_8__* getelementptr inbounds ([4096 x %struct.TYPE_8__], [4096 x %struct.TYPE_8__]* @test_CoInternetParseUrl.buf, i64 0, i64 0), i32 %223, i64* %2, i32 0)
  store i64 %224, i64* %1, align 8
  %225 = load i64, i64* %1, align 8
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** @parse_tests, align 8
  %227 = load i32, i32* %3, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = icmp eq i64 %225, %231
  %233 = zext i1 %232 to i32
  %234 = load i32, i32* %3, align 4
  %235 = load i64, i64* %1, align 8
  %236 = call i32 (i32, i8*, i32, ...) @ok(i32 %233, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %234, i64 %235)
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** @parse_tests, align 8
  %238 = load i32, i32* %3, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 6
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %258

244:                                              ; preds = %214
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** @parse_tests, align 8
  %246 = load i32, i32* %3, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 6
  %250 = load i64, i64* %249, align 8
  %251 = call i32 @lstrcmpW(i64 %250, %struct.TYPE_8__* getelementptr inbounds ([4096 x %struct.TYPE_8__], [4096 x %struct.TYPE_8__]* @test_CoInternetParseUrl.buf, i64 0, i64 0))
  %252 = icmp ne i32 %251, 0
  %253 = xor i1 %252, true
  %254 = zext i1 %253 to i32
  %255 = load i32, i32* %3, align 4
  %256 = call i64 @wine_dbgstr_w(%struct.TYPE_8__* getelementptr inbounds ([4096 x %struct.TYPE_8__], [4096 x %struct.TYPE_8__]* @test_CoInternetParseUrl.buf, i64 0, i64 0))
  %257 = call i32 (i32, i8*, i32, ...) @ok(i32 %254, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %255, i64 %256)
  br label %258

258:                                              ; preds = %244, %214
  br label %259

259:                                              ; preds = %258, %204, %153
  %260 = call i32 @memset(%struct.TYPE_8__* getelementptr inbounds ([4096 x %struct.TYPE_8__], [4096 x %struct.TYPE_8__]* @test_CoInternetParseUrl.buf, i64 0, i64 0), i32 240, i32 327680)
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** @parse_tests, align 8
  %262 = load i32, i32* %3, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @PARSE_ROOTDOCUMENT, align 4
  %268 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* getelementptr inbounds ([4096 x %struct.TYPE_8__], [4096 x %struct.TYPE_8__]* @test_CoInternetParseUrl.buf, i64 0, i64 0))
  %269 = call i64 @pCoInternetParseUrl(i32 %266, i32 %267, i32 0, %struct.TYPE_8__* getelementptr inbounds ([4096 x %struct.TYPE_8__], [4096 x %struct.TYPE_8__]* @test_CoInternetParseUrl.buf, i64 0, i64 0), i32 %268, i64* %2, i32 0)
  store i64 %269, i64* %1, align 8
  %270 = load i64, i64* %1, align 8
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** @parse_tests, align 8
  %272 = load i32, i32* %3, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 3
  %276 = load i64, i64* %275, align 8
  %277 = icmp eq i64 %270, %276
  %278 = zext i1 %277 to i32
  %279 = load i32, i32* %3, align 4
  %280 = load i64, i64* %1, align 8
  %281 = call i32 (i32, i8*, i32, ...) @ok(i32 %278, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %279, i64 %280)
  %282 = load %struct.TYPE_8__*, %struct.TYPE_8__** @parse_tests, align 8
  %283 = load i32, i32* %3, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 4
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %303

289:                                              ; preds = %259
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** @parse_tests, align 8
  %291 = load i32, i32* %3, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 4
  %295 = load i64, i64* %294, align 8
  %296 = call i32 @lstrcmpW(i64 %295, %struct.TYPE_8__* getelementptr inbounds ([4096 x %struct.TYPE_8__], [4096 x %struct.TYPE_8__]* @test_CoInternetParseUrl.buf, i64 0, i64 0))
  %297 = icmp ne i32 %296, 0
  %298 = xor i1 %297, true
  %299 = zext i1 %298 to i32
  %300 = load i32, i32* %3, align 4
  %301 = call i64 @wine_dbgstr_w(%struct.TYPE_8__* getelementptr inbounds ([4096 x %struct.TYPE_8__], [4096 x %struct.TYPE_8__]* @test_CoInternetParseUrl.buf, i64 0, i64 0))
  %302 = call i32 (i32, i8*, i32, ...) @ok(i32 %299, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i32 %300, i64 %301)
  br label %303

303:                                              ; preds = %289, %259
  br label %304

304:                                              ; preds = %303
  %305 = load i32, i32* %3, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %3, align 4
  br label %18

307:                                              ; preds = %18
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @pCoInternetParseUrl(i32, i32, i32, %struct.TYPE_8__*, i32, i64*, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i64 @lstrlenW(i64) #1

declare dso_local i32 @lstrcmpW(i64, %struct.TYPE_8__*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i64 @wine_dbgstr_w(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
