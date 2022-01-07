; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_internet.c_test_InternetCanonicalizeUrlA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_internet.c_test_InternetCanonicalizeUrlA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [57 x i8] c"http://swupmf.adobe.com/manifest/50/win/AdobeUpdater.upd\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"got %u and %u with size %u for '%s' (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"file:///C:/Program%20Files/Atmel/AVR%20Tools/STK500/STK500.xml\00", align 1
@ICU_DECODE = common dso_local global i32 0, align 4
@ICU_NO_ENCODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"InternetCanonicalizeUrlA failed %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"got %d expected %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"file://C:\\Program Files\\Atmel\\AVR Tools\\STK500\\STK500.xml\00", align 1
@.str.6 = private unnamed_addr constant [77 x i8] c"got %s expected 'file://C:\\Program Files\\Atmel\\AVR Tools\\STK500\\STK500.xml'\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [36 x i8] c"http://www.winehq.org/index.php?x= \00", align 1
@ICU_BROWSER_MODE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"InternetCanonicalizeUrlA failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"http://www.winehq.org/index.php?x=\00", align 1
@.str.10 = private unnamed_addr constant [72 x i8] c"Trailing space should have been stripped even in ICU_BROWSER_MODE (%s)\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"InternetSetOptionA succeeded\0A\00", align 1
@ERROR_INTERNET_INVALID_OPTION = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [70 x i8] c"InternetSetOptionA failed %u, expected ERROR_INTERNET_INVALID_OPTION\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_InternetCanonicalizeUrlA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_InternetCanonicalizeUrlA() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @lstrlenA(i8* %6)
  store i32 %7, i32* %3, align 4
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %9 = call i32 @memset(i8* %8, i8 signext 35, i32 255)
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 255
  store i8 0, i8* %10, align 1
  store i32 1, i32* %4, align 4
  %11 = call i32 @SetLastError(i32 -559038737)
  %12 = load i8*, i8** %2, align 8
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %14 = call i32 @InternetCanonicalizeUrlA(i8* %12, i8* %13, i32* %4, i32 0)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %0
  %18 = call i8* (...) @GetLastError()
  %19 = load i8*, i8** @ERROR_INSUFFICIENT_BUFFER, align 8
  %20 = icmp eq i8* %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  %25 = icmp eq i32 %22, %24
  br label %26

26:                                               ; preds = %21, %17, %0
  %27 = phi i1 [ false, %17 ], [ false, %0 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %5, align 4
  %30 = call i8* (...) @GetLastError()
  %31 = load i32, i32* %4, align 4
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %34 = call i32 @lstrlenA(i8* %33)
  %35 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %29, i8* %30, i32 %31, i8* %32, i32 %34)
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %37 = call i32 @memset(i8* %36, i8 signext 35, i32 255)
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 255
  store i8 0, i8* %38, align 1
  %39 = load i32, i32* %3, align 4
  store i32 %39, i32* %4, align 4
  %40 = call i32 @SetLastError(i32 -559038737)
  %41 = load i8*, i8** %2, align 8
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %43 = call i32 @InternetCanonicalizeUrlA(i8* %41, i8* %42, i32* %4, i32 0)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %26
  %47 = call i8* (...) @GetLastError()
  %48 = load i8*, i8** @ERROR_INSUFFICIENT_BUFFER, align 8
  %49 = icmp eq i8* %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  %54 = icmp eq i32 %51, %53
  br label %55

55:                                               ; preds = %50, %46, %26
  %56 = phi i1 [ false, %46 ], [ false, %26 ], [ %54, %50 ]
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %5, align 4
  %59 = call i8* (...) @GetLastError()
  %60 = load i32, i32* %4, align 4
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %63 = call i32 @lstrlenA(i8* %62)
  %64 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %58, i8* %59, i32 %60, i8* %61, i32 %63)
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %66 = call i32 @memset(i8* %65, i8 signext 35, i32 255)
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 255
  store i8 0, i8* %67, align 1
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  %70 = call i32 @SetLastError(i32 -559038737)
  %71 = load i8*, i8** %2, align 8
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %73 = call i32 @InternetCanonicalizeUrlA(i8* %71, i8* %72, i32* %4, i32 0)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %55
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %3, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i8*, i8** %2, align 8
  %82 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %83 = call i64 @lstrcmpA(i8* %81, i8* %82)
  %84 = icmp eq i64 %83, 0
  br label %85

85:                                               ; preds = %80, %76, %55
  %86 = phi i1 [ false, %76 ], [ false, %55 ], [ %84, %80 ]
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* %5, align 4
  %89 = call i8* (...) @GetLastError()
  %90 = load i32, i32* %4, align 4
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %92 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %93 = call i32 @lstrlenA(i8* %92)
  %94 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %88, i8* %89, i32 %90, i8* %91, i32 %93)
  %95 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %96 = call i32 @memset(i8* %95, i8 signext 35, i32 255)
  %97 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 255
  store i8 0, i8* %97, align 1
  store i32 256, i32* %4, align 4
  %98 = call i32 @SetLastError(i32 -559038737)
  %99 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %100 = load i32, i32* @ICU_DECODE, align 4
  %101 = load i32, i32* @ICU_NO_ENCODE, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @InternetCanonicalizeUrlA(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i8* %99, i32* %4, i32 %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i8* (...) @GetLastError()
  %106 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %105)
  %107 = load i32, i32* %4, align 4
  %108 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %109 = call i32 @lstrlenA(i8* %108)
  %110 = icmp eq i32 %107, %109
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %4, align 4
  %113 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %114 = call i32 @lstrlenA(i8* %113)
  %115 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %112, i32 %114)
  %116 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %117 = call i64 @lstrcmpA(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i8* %116)
  %118 = icmp ne i64 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %122 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.6, i64 0, i64 0), i8* %121)
  %123 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %124 = call i32 @memset(i8* %123, i8 signext 35, i32 255)
  %125 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 255
  store i8 0, i8* %125, align 1
  %126 = load i32, i32* %3, align 4
  %127 = add nsw i32 %126, 2
  store i32 %127, i32* %4, align 4
  %128 = call i32 @SetLastError(i32 -559038737)
  %129 = load i8*, i8** %2, align 8
  %130 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %131 = call i32 @InternetCanonicalizeUrlA(i8* %129, i8* %130, i32* %4, i32 0)
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %5, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %85
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* %3, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = load i8*, i8** %2, align 8
  %140 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %141 = call i64 @lstrcmpA(i8* %139, i8* %140)
  %142 = icmp eq i64 %141, 0
  br label %143

143:                                              ; preds = %138, %134, %85
  %144 = phi i1 [ false, %134 ], [ false, %85 ], [ %142, %138 ]
  %145 = zext i1 %144 to i32
  %146 = load i32, i32* %5, align 4
  %147 = call i8* (...) @GetLastError()
  %148 = load i32, i32* %4, align 4
  %149 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %150 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %151 = call i32 @lstrlenA(i8* %150)
  %152 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %146, i8* %147, i32 %148, i8* %149, i32 %151)
  %153 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %154 = load i32, i32* %3, align 4
  %155 = add nsw i32 %154, 4
  %156 = call i32 @memset(i8* %153, i8 signext 35, i32 %155)
  %157 = load i32, i32* %3, align 4
  %158 = add nsw i32 %157, 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 %159
  store i8 0, i8* %160, align 1
  %161 = load i32, i32* %3, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %4, align 4
  %163 = call i32 @SetLastError(i32 -559038737)
  %164 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %165 = call i32 @InternetCanonicalizeUrlA(i8* null, i8* %164, i32* %4, i32 0)
  store i32 %165, i32* %5, align 4
  %166 = load i32, i32* %5, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %143
  %169 = call i8* (...) @GetLastError()
  %170 = load i8*, i8** @ERROR_INVALID_PARAMETER, align 8
  %171 = icmp eq i8* %169, %170
  br label %172

172:                                              ; preds = %168, %143
  %173 = phi i1 [ false, %143 ], [ %171, %168 ]
  %174 = zext i1 %173 to i32
  %175 = load i32, i32* %5, align 4
  %176 = call i8* (...) @GetLastError()
  %177 = load i32, i32* %4, align 4
  %178 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %179 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %180 = call i32 @lstrlenA(i8* %179)
  %181 = call i32 (i32, i8*, ...) @ok(i32 %174, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %175, i8* %176, i32 %177, i8* %178, i32 %180)
  %182 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %183 = load i32, i32* %3, align 4
  %184 = add nsw i32 %183, 4
  %185 = call i32 @memset(i8* %182, i8 signext 35, i32 %184)
  %186 = load i32, i32* %3, align 4
  %187 = add nsw i32 %186, 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 %188
  store i8 0, i8* %189, align 1
  %190 = load i32, i32* %3, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %4, align 4
  %192 = call i32 @SetLastError(i32 -559038737)
  %193 = load i8*, i8** %2, align 8
  %194 = call i32 @InternetCanonicalizeUrlA(i8* %193, i8* null, i32* %4, i32 0)
  store i32 %194, i32* %5, align 4
  %195 = load i32, i32* %5, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %172
  %198 = call i8* (...) @GetLastError()
  %199 = load i8*, i8** @ERROR_INVALID_PARAMETER, align 8
  %200 = icmp eq i8* %198, %199
  br label %201

201:                                              ; preds = %197, %172
  %202 = phi i1 [ false, %172 ], [ %200, %197 ]
  %203 = zext i1 %202 to i32
  %204 = load i32, i32* %5, align 4
  %205 = call i8* (...) @GetLastError()
  %206 = load i32, i32* %4, align 4
  %207 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %208 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %209 = call i32 @lstrlenA(i8* %208)
  %210 = call i32 (i32, i8*, ...) @ok(i32 %203, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %204, i8* %205, i32 %206, i8* %207, i32 %209)
  %211 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %212 = load i32, i32* %3, align 4
  %213 = add nsw i32 %212, 4
  %214 = call i32 @memset(i8* %211, i8 signext 35, i32 %213)
  %215 = load i32, i32* %3, align 4
  %216 = add nsw i32 %215, 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 %217
  store i8 0, i8* %218, align 1
  %219 = load i32, i32* %3, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %4, align 4
  %221 = call i32 @SetLastError(i32 -559038737)
  %222 = load i8*, i8** %2, align 8
  %223 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %224 = call i32 @InternetCanonicalizeUrlA(i8* %222, i8* %223, i32* null, i32 0)
  store i32 %224, i32* %5, align 4
  %225 = load i32, i32* %5, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %231, label %227

227:                                              ; preds = %201
  %228 = call i8* (...) @GetLastError()
  %229 = load i8*, i8** @ERROR_INVALID_PARAMETER, align 8
  %230 = icmp eq i8* %228, %229
  br label %231

231:                                              ; preds = %227, %201
  %232 = phi i1 [ false, %201 ], [ %230, %227 ]
  %233 = zext i1 %232 to i32
  %234 = load i32, i32* %5, align 4
  %235 = call i8* (...) @GetLastError()
  %236 = load i32, i32* %4, align 4
  %237 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %238 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %239 = call i32 @lstrlenA(i8* %238)
  %240 = call i32 (i32, i8*, ...) @ok(i32 %233, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %234, i8* %235, i32 %236, i8* %237, i32 %239)
  store i32 256, i32* %4, align 4
  %241 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %242 = load i32, i32* @ICU_BROWSER_MODE, align 4
  %243 = call i32 @InternetCanonicalizeUrlA(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i8* %241, i32* %4, i32 %242)
  store i32 %243, i32* %5, align 4
  %244 = load i32, i32* %5, align 4
  %245 = icmp eq i32 %244, 1
  %246 = zext i1 %245 to i32
  %247 = call i32 (i32, i8*, ...) @ok(i32 %246, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %248 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %249 = call i32 @strcmp(i8* %248, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %250 = icmp ne i32 %249, 0
  %251 = xor i1 %250, true
  %252 = zext i1 %251 to i32
  %253 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %254 = call i32 (i32, i8*, ...) @ok(i32 %252, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.10, i64 0, i64 0), i8* %253)
  %255 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %256 = call i32 @InternetSetOptionA(i32* null, i32 -559038737, i8* %255, i32 256)
  store i32 %256, i32* %5, align 4
  %257 = load i32, i32* %5, align 4
  %258 = icmp ne i32 %257, 0
  %259 = xor i1 %258, true
  %260 = zext i1 %259 to i32
  %261 = call i32 (i32, i8*, ...) @ok(i32 %260, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  %262 = call i8* (...) @GetLastError()
  %263 = load i8*, i8** @ERROR_INTERNET_INVALID_OPTION, align 8
  %264 = icmp eq i8* %262, %263
  %265 = zext i1 %264 to i32
  %266 = call i8* (...) @GetLastError()
  %267 = call i32 (i32, i8*, ...) @ok(i32 %265, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.12, i64 0, i64 0), i8* %266)
  ret void
}

declare dso_local i32 @lstrlenA(i8*) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @InternetCanonicalizeUrlA(i8*, i8*, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i8* @GetLastError(...) #1

declare dso_local i64 @lstrcmpA(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @InternetSetOptionA(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
