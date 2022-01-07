; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_ordinal.c_test_GetAcceptLanguagesA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_ordinal.c_test_GetAcceptLanguagesA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_GetAcceptLanguagesA.table = internal global [6 x i8*] [i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [24 x i8] c"de,en-gb;q=0.7,en;q=0.3\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"de,en;q=0.3,en-gb;q=0.7\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"winetest\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"de-de,de;q=0.5\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@ERROR_SUCCESS = common dso_local global i8* null, align 8
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@ie_international = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"RegOpenKey(%s) failed: %d\0A\00", align 1
@acceptlanguage = common dso_local global i32 0, align 4
@LOCALE_SISO639LANGNAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@LOCALE_SISO3166CTRYNAME = common dso_local global i32 0, align 4
@LOCALE_SNAME = common dso_local global i32 0, align 4
@S_OK = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [38 x i8] c"GetAcceptLanguagesA failed with 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"LcidToRfc1766A returned 0x%x and %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"have '%s' (searching for '%s')\0A\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"no more ideas, how to build the default language '%s'\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"detected default: %s\0A\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [31 x i8] c"got %d for RegSetValueExA: %s\0A\00", align 1
@E_INVALIDARG = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [33 x i8] c"+2_#%d: got 0x%x with %d and %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"+1_#%d: got 0x%x with %d and %s\0A\00", align 1
@E_NOT_SUFFICIENT_BUFFER = common dso_local global i8* null, align 8
@ERROR_MORE_DATA = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [33 x i8] c"==_#%d: got 0x%x with %d and %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"-1_#%d: got 0x%x with %d and %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"=1_#%d: got 0x%x with %d and %s\0A\00", align 1
@E_FAIL = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [39 x i8] c"NULL,max #%d: got 0x%x with %d and %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [62 x i8] c"max: got 0x%x with %d and %s (expected S_OK with %d and '%s'\0A\00", align 1
@ERROR_CANNOT_COPY = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [29 x i8] c"=2: got 0x%x with %d and %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"=1: got 0x%x with %d and %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"got 0x%x\0A\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"got 0x%x (expected E_FAIL or E_INVALIDARG)\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"RegSetValueEx(%s) failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetAcceptLanguagesA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetAcceptLanguagesA() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [512 x i8], align 16
  %3 = alloca [32 x i8], align 16
  %4 = alloca [64 x i8], align 16
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32* null, i32** %5, align 8
  %14 = load i8*, i8** @ERROR_SUCCESS, align 8
  store i8* %14, i8** %6, align 8
  store i32 62, i32* %9, align 4
  store i64 0, i64* %13, align 8
  %15 = call i32 (...) @GetUserDefaultLCID()
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %17 = load i32, i32* @ie_international, align 4
  %18 = call i8* @RegOpenKeyA(i32 %16, i32 %17, i32** %5)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %0
  %22 = load i32, i32* @ie_international, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @skip(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %22, i8* %23)
  br label %687

25:                                               ; preds = %0
  store i32 512, i32* %10, align 4
  %26 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  store i8 0, i8* %26, align 16
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @acceptlanguage, align 4
  %29 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %30 = ptrtoint i8* %29 to i32
  %31 = call i8* @RegQueryValueExA(i32* %27, i32 %28, i32 0, i32* null, i32 %30, i32* %10)
  store i8* %31, i8** %6, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @acceptlanguage, align 4
  %34 = call i32 @RegDeleteValueA(i32* %32, i32 %33)
  %35 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %36 = call i32 @memset(i8* %35, i8 signext 0, i32 32)
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @LOCALE_SISO639LANGNAME, align 4
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %40 = call i32 @GetLocaleInfoA(i32 %37, i32 %38, i8* %39, i32 32)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %25
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %45 = call i32 @lstrcatA(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %47 = call i32 @memset(i8* %46, i8 signext 0, i32 64)
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @LOCALE_SISO3166CTRYNAME, align 4
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = sub i64 64, %52
  %54 = sub i64 %53, 1
  %55 = trunc i64 %54 to i32
  %56 = call i32 @GetLocaleInfoA(i32 %48, i32 %49, i8* %50, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %59 = call i32 @lstrcatA(i8* %57, i8* %58)
  br label %67

60:                                               ; preds = %25
  %61 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %62 = call i32 @memset(i8* %61, i8 signext 0, i32 32)
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @LOCALE_SNAME, align 4
  %65 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %66 = call i32 @GetLocaleInfoA(i32 %63, i32 %64, i8* %65, i32 32)
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %60, %43
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %10, align 4
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @memset(i8* %69, i8 signext 35, i32 %70)
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 %73
  store i8 0, i8* %74, align 1
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %76 = call i8* @pGetAcceptLanguagesA(i8* %75, i32* %10)
  store i8* %76, i8** %8, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = load i8*, i8** @S_OK, align 8
  %79 = icmp ne i8* %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %67
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @win_skip(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* %81)
  br label %653

83:                                               ; preds = %67
  %84 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %85 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %86 = call i64 @lstrcmpA(i8* %84, i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %83
  %89 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %89, align 16
  %90 = load i32, i32* %11, align 4
  %91 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %92 = call i8* @LcidToRfc1766A(i32 %90, i8* %91, i32 32)
  store i8* %92, i8** %8, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = load i8*, i8** @S_OK, align 8
  %95 = icmp eq i8* %93, %94
  %96 = zext i1 %95 to i32
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %99 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i8* %97, i8* %98)
  br label %100

100:                                              ; preds = %88, %83
  %101 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %102 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %103 = call i64 @lstrcmpA(i8* %101, i8* %102)
  %104 = icmp ne i64 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %108 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %109 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* %107, i8* %108)
  %110 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %111 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %112 = call i64 @lstrcmpA(i8* %110, i8* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %100
  %115 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %116 = call i32 @win_skip(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0), i8* %115)
  br label %653

117:                                              ; preds = %100
  %118 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %119 = call i32 @trace(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* %118)
  br label %120

120:                                              ; preds = %462, %117
  %121 = load i64, i64* %13, align 8
  %122 = getelementptr inbounds [6 x i8*], [6 x i8*]* @test_GetAcceptLanguagesA.table, i64 0, i64 %121
  %123 = load i8*, i8** %122, align 8
  store i8* %123, i8** %12, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %472

125:                                              ; preds = %120
  %126 = load i8*, i8** %12, align 8
  %127 = call i32 @lstrlenA(i8* %126)
  store i32 %127, i32* %1, align 4
  %128 = load i32*, i32** %5, align 8
  %129 = load i32, i32* @acceptlanguage, align 4
  %130 = load i32, i32* @REG_SZ, align 4
  %131 = load i8*, i8** %12, align 8
  %132 = bitcast i8* %131 to i32*
  %133 = load i32, i32* %1, align 4
  %134 = add nsw i32 %133, 1
  %135 = call i8* @RegSetValueExA(i32* %128, i32 %129, i32 0, i32 %130, i32* %132, i32 %134)
  store i8* %135, i8** %7, align 8
  %136 = load i8*, i8** %7, align 8
  %137 = icmp ne i8* %136, null
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = load i8*, i8** %7, align 8
  %141 = load i8*, i8** %12, align 8
  %142 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* %140, i8* %141)
  %143 = load i32, i32* %1, align 4
  %144 = add nsw i32 %143, 2
  store i32 %144, i32* %10, align 4
  %145 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @memset(i8* %145, i8 signext 35, i32 %146)
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 %149
  store i8 0, i8* %150, align 1
  %151 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %152 = call i8* @pGetAcceptLanguagesA(i8* %151, i32* %10)
  store i8* %152, i8** %8, align 8
  %153 = load i8*, i8** %8, align 8
  %154 = load i8*, i8** @E_INVALIDARG, align 8
  %155 = icmp eq i8* %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %125
  %157 = load i32, i32* %10, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %180, label %159

159:                                              ; preds = %156, %125
  %160 = load i8*, i8** %8, align 8
  %161 = call i64 @SUCCEEDED(i8* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %178

163:                                              ; preds = %159
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %1, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %172, label %167

167:                                              ; preds = %163
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* %1, align 4
  %170 = add nsw i32 %169, 1
  %171 = icmp eq i32 %168, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %167, %163
  %173 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %174 = load i8*, i8** %12, align 8
  %175 = call i64 @lstrcmpA(i8* %173, i8* %174)
  %176 = icmp ne i64 %175, 0
  %177 = xor i1 %176, true
  br label %178

178:                                              ; preds = %172, %167, %159
  %179 = phi i1 [ false, %167 ], [ false, %159 ], [ %177, %172 ]
  br label %180

180:                                              ; preds = %178, %156
  %181 = phi i1 [ true, %156 ], [ %179, %178 ]
  %182 = zext i1 %181 to i32
  %183 = load i64, i64* %13, align 8
  %184 = load i8*, i8** %8, align 8
  %185 = load i32, i32* %10, align 4
  %186 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %187 = call i32 (i32, i8*, ...) @ok(i32 %182, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i64 %183, i8* %184, i32 %185, i8* %186)
  %188 = load i32, i32* %1, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %10, align 4
  %190 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %191 = load i32, i32* %9, align 4
  %192 = call i32 @memset(i8* %190, i8 signext 35, i32 %191)
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 %194
  store i8 0, i8* %195, align 1
  %196 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %197 = call i8* @pGetAcceptLanguagesA(i8* %196, i32* %10)
  store i8* %197, i8** %8, align 8
  %198 = load i8*, i8** %8, align 8
  %199 = load i8*, i8** @E_INVALIDARG, align 8
  %200 = icmp eq i8* %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %180
  %202 = load i32, i32* %10, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %225, label %204

204:                                              ; preds = %201, %180
  %205 = load i8*, i8** %8, align 8
  %206 = call i64 @SUCCEEDED(i8* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %223

208:                                              ; preds = %204
  %209 = load i32, i32* %10, align 4
  %210 = load i32, i32* %1, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %217, label %212

212:                                              ; preds = %208
  %213 = load i32, i32* %10, align 4
  %214 = load i32, i32* %1, align 4
  %215 = add nsw i32 %214, 1
  %216 = icmp eq i32 %213, %215
  br i1 %216, label %217, label %223

217:                                              ; preds = %212, %208
  %218 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %219 = load i8*, i8** %12, align 8
  %220 = call i64 @lstrcmpA(i8* %218, i8* %219)
  %221 = icmp ne i64 %220, 0
  %222 = xor i1 %221, true
  br label %223

223:                                              ; preds = %217, %212, %204
  %224 = phi i1 [ false, %212 ], [ false, %204 ], [ %222, %217 ]
  br label %225

225:                                              ; preds = %223, %201
  %226 = phi i1 [ true, %201 ], [ %224, %223 ]
  %227 = zext i1 %226 to i32
  %228 = load i64, i64* %13, align 8
  %229 = load i8*, i8** %8, align 8
  %230 = load i32, i32* %10, align 4
  %231 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %232 = call i32 (i32, i8*, ...) @ok(i32 %227, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i64 %228, i8* %229, i32 %230, i8* %231)
  %233 = load i32, i32* %1, align 4
  store i32 %233, i32* %10, align 4
  %234 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %235 = load i32, i32* %9, align 4
  %236 = call i32 @memset(i8* %234, i8 signext 35, i32 %235)
  %237 = load i32, i32* %9, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 %238
  store i8 0, i8* %239, align 1
  %240 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %241 = call i8* @pGetAcceptLanguagesA(i8* %240, i32* %10)
  store i8* %241, i8** %8, align 8
  %242 = load i8*, i8** %8, align 8
  %243 = load i8*, i8** @E_INVALIDARG, align 8
  %244 = icmp eq i8* %242, %243
  br i1 %244, label %245, label %248

245:                                              ; preds = %225
  %246 = load i32, i32* %10, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %292, label %248

248:                                              ; preds = %245, %225
  %249 = load i8*, i8** %8, align 8
  %250 = load i8*, i8** @S_OK, align 8
  %251 = icmp eq i8* %249, %250
  br i1 %251, label %252, label %262

252:                                              ; preds = %248
  %253 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %254 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %255 = call i64 @lstrcmpA(i8* %253, i8* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %262, label %257

257:                                              ; preds = %252
  %258 = load i32, i32* %10, align 4
  %259 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %260 = call i32 @lstrlenA(i8* %259)
  %261 = icmp eq i32 %258, %260
  br i1 %261, label %290, label %262

262:                                              ; preds = %257, %252, %248
  %263 = load i8*, i8** %8, align 8
  %264 = load i8*, i8** @S_OK, align 8
  %265 = icmp eq i8* %263, %264
  br i1 %265, label %266, label %272

266:                                              ; preds = %262
  %267 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %268 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %269 = load i32, i32* %10, align 4
  %270 = call i32 @memcmp(i8* %267, i8* %268, i32 %269)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %290

272:                                              ; preds = %266, %262
  %273 = load i8*, i8** %8, align 8
  %274 = load i8*, i8** @E_NOT_SUFFICIENT_BUFFER, align 8
  %275 = icmp eq i8* %273, %274
  br i1 %275, label %276, label %279

276:                                              ; preds = %272
  %277 = load i32, i32* %10, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %290

279:                                              ; preds = %276, %272
  %280 = load i8*, i8** %8, align 8
  %281 = load i32, i32* @ERROR_MORE_DATA, align 4
  %282 = call i8* @__HRESULT_FROM_WIN32(i32 %281)
  %283 = icmp eq i8* %280, %282
  br i1 %283, label %284, label %288

284:                                              ; preds = %279
  %285 = load i32, i32* %10, align 4
  %286 = load i32, i32* %1, align 4
  %287 = icmp eq i32 %285, %286
  br label %288

288:                                              ; preds = %284, %279
  %289 = phi i1 [ false, %279 ], [ %287, %284 ]
  br label %290

290:                                              ; preds = %288, %276, %266, %257
  %291 = phi i1 [ true, %276 ], [ true, %266 ], [ true, %257 ], [ %289, %288 ]
  br label %292

292:                                              ; preds = %290, %245
  %293 = phi i1 [ true, %245 ], [ %291, %290 ]
  %294 = zext i1 %293 to i32
  %295 = load i64, i64* %13, align 8
  %296 = load i8*, i8** %8, align 8
  %297 = load i32, i32* %10, align 4
  %298 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %299 = call i32 (i32, i8*, ...) @ok(i32 %294, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i64 %295, i8* %296, i32 %297, i8* %298)
  %300 = load i32, i32* %1, align 4
  %301 = icmp sgt i32 %300, 1
  br i1 %301, label %302, label %372

302:                                              ; preds = %292
  %303 = load i32, i32* %1, align 4
  %304 = sub nsw i32 %303, 1
  store i32 %304, i32* %10, align 4
  %305 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %306 = load i32, i32* %9, align 4
  %307 = call i32 @memset(i8* %305, i8 signext 35, i32 %306)
  %308 = load i32, i32* %9, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 %309
  store i8 0, i8* %310, align 1
  %311 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %312 = call i8* @pGetAcceptLanguagesA(i8* %311, i32* %10)
  store i8* %312, i8** %8, align 8
  %313 = load i8*, i8** %8, align 8
  %314 = load i8*, i8** @E_INVALIDARG, align 8
  %315 = icmp eq i8* %313, %314
  br i1 %315, label %316, label %319

316:                                              ; preds = %302
  %317 = load i32, i32* %10, align 4
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %364, label %319

319:                                              ; preds = %316, %302
  %320 = load i8*, i8** %8, align 8
  %321 = load i8*, i8** @S_OK, align 8
  %322 = icmp eq i8* %320, %321
  br i1 %322, label %323, label %333

323:                                              ; preds = %319
  %324 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %325 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %326 = call i64 @lstrcmpA(i8* %324, i8* %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %333, label %328

328:                                              ; preds = %323
  %329 = load i32, i32* %10, align 4
  %330 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %331 = call i32 @lstrlenA(i8* %330)
  %332 = icmp eq i32 %329, %331
  br i1 %332, label %362, label %333

333:                                              ; preds = %328, %323, %319
  %334 = load i8*, i8** %8, align 8
  %335 = load i8*, i8** @S_OK, align 8
  %336 = icmp eq i8* %334, %335
  br i1 %336, label %337, label %343

337:                                              ; preds = %333
  %338 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %339 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %340 = load i32, i32* %10, align 4
  %341 = call i32 @memcmp(i8* %338, i8* %339, i32 %340)
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %362

343:                                              ; preds = %337, %333
  %344 = load i8*, i8** %8, align 8
  %345 = load i8*, i8** @E_NOT_SUFFICIENT_BUFFER, align 8
  %346 = icmp eq i8* %344, %345
  br i1 %346, label %347, label %350

347:                                              ; preds = %343
  %348 = load i32, i32* %10, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %362

350:                                              ; preds = %347, %343
  %351 = load i8*, i8** %8, align 8
  %352 = load i32, i32* @ERROR_MORE_DATA, align 4
  %353 = call i8* @__HRESULT_FROM_WIN32(i32 %352)
  %354 = icmp eq i8* %351, %353
  br i1 %354, label %355, label %360

355:                                              ; preds = %350
  %356 = load i32, i32* %10, align 4
  %357 = load i32, i32* %1, align 4
  %358 = sub nsw i32 %357, 1
  %359 = icmp eq i32 %356, %358
  br label %360

360:                                              ; preds = %355, %350
  %361 = phi i1 [ false, %350 ], [ %359, %355 ]
  br label %362

362:                                              ; preds = %360, %347, %337, %328
  %363 = phi i1 [ true, %347 ], [ true, %337 ], [ true, %328 ], [ %361, %360 ]
  br label %364

364:                                              ; preds = %362, %316
  %365 = phi i1 [ true, %316 ], [ %363, %362 ]
  %366 = zext i1 %365 to i32
  %367 = load i64, i64* %13, align 8
  %368 = load i8*, i8** %8, align 8
  %369 = load i32, i32* %10, align 4
  %370 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %371 = call i32 (i32, i8*, ...) @ok(i32 %366, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i64 %367, i8* %368, i32 %369, i8* %370)
  br label %372

372:                                              ; preds = %364, %292
  store i32 1, i32* %10, align 4
  %373 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %374 = load i32, i32* %9, align 4
  %375 = call i32 @memset(i8* %373, i8 signext 35, i32 %374)
  %376 = load i32, i32* %9, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 %377
  store i8 0, i8* %378, align 1
  %379 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %380 = call i8* @pGetAcceptLanguagesA(i8* %379, i32* %10)
  store i8* %380, i8** %8, align 8
  %381 = load i8*, i8** %8, align 8
  %382 = load i8*, i8** @E_INVALIDARG, align 8
  %383 = icmp eq i8* %381, %382
  br i1 %383, label %384, label %387

384:                                              ; preds = %372
  %385 = load i32, i32* %10, align 4
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %430, label %387

387:                                              ; preds = %384, %372
  %388 = load i8*, i8** %8, align 8
  %389 = load i8*, i8** @S_OK, align 8
  %390 = icmp eq i8* %388, %389
  br i1 %390, label %391, label %401

391:                                              ; preds = %387
  %392 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %393 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %394 = call i64 @lstrcmpA(i8* %392, i8* %393)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %401, label %396

396:                                              ; preds = %391
  %397 = load i32, i32* %10, align 4
  %398 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %399 = call i32 @lstrlenA(i8* %398)
  %400 = icmp eq i32 %397, %399
  br i1 %400, label %428, label %401

401:                                              ; preds = %396, %391, %387
  %402 = load i8*, i8** %8, align 8
  %403 = load i8*, i8** @S_OK, align 8
  %404 = icmp eq i8* %402, %403
  br i1 %404, label %405, label %411

405:                                              ; preds = %401
  %406 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %407 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %408 = load i32, i32* %10, align 4
  %409 = call i32 @memcmp(i8* %406, i8* %407, i32 %408)
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %428

411:                                              ; preds = %405, %401
  %412 = load i8*, i8** %8, align 8
  %413 = load i8*, i8** @E_NOT_SUFFICIENT_BUFFER, align 8
  %414 = icmp eq i8* %412, %413
  br i1 %414, label %415, label %418

415:                                              ; preds = %411
  %416 = load i32, i32* %10, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %428

418:                                              ; preds = %415, %411
  %419 = load i8*, i8** %8, align 8
  %420 = load i32, i32* @ERROR_MORE_DATA, align 4
  %421 = call i8* @__HRESULT_FROM_WIN32(i32 %420)
  %422 = icmp eq i8* %419, %421
  br i1 %422, label %423, label %426

423:                                              ; preds = %418
  %424 = load i32, i32* %10, align 4
  %425 = icmp eq i32 %424, 1
  br label %426

426:                                              ; preds = %423, %418
  %427 = phi i1 [ false, %418 ], [ %425, %423 ]
  br label %428

428:                                              ; preds = %426, %415, %405, %396
  %429 = phi i1 [ true, %415 ], [ true, %405 ], [ true, %396 ], [ %427, %426 ]
  br label %430

430:                                              ; preds = %428, %384
  %431 = phi i1 [ true, %384 ], [ %429, %428 ]
  %432 = zext i1 %431 to i32
  %433 = load i64, i64* %13, align 8
  %434 = load i8*, i8** %8, align 8
  %435 = load i32, i32* %10, align 4
  %436 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %437 = call i32 (i32, i8*, ...) @ok(i32 %432, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i64 %433, i8* %434, i32 %435, i8* %436)
  %438 = load i32, i32* %9, align 4
  store i32 %438, i32* %10, align 4
  %439 = call i8* @pGetAcceptLanguagesA(i8* null, i32* %10)
  store i8* %439, i8** %8, align 8
  %440 = load i8*, i8** %8, align 8
  %441 = load i8*, i8** @S_OK, align 8
  %442 = icmp eq i8* %440, %441
  br i1 %442, label %443, label %452

443:                                              ; preds = %430
  %444 = load i32, i32* %10, align 4
  %445 = load i32, i32* %1, align 4
  %446 = icmp eq i32 %444, %445
  br i1 %446, label %462, label %447

447:                                              ; preds = %443
  %448 = load i32, i32* %10, align 4
  %449 = load i32, i32* %1, align 4
  %450 = add nsw i32 %449, 1
  %451 = icmp eq i32 %448, %450
  br i1 %451, label %462, label %452

452:                                              ; preds = %447, %430
  %453 = load i8*, i8** %8, align 8
  %454 = load i8*, i8** @E_FAIL, align 8
  %455 = icmp eq i8* %453, %454
  br i1 %455, label %456, label %460

456:                                              ; preds = %452
  %457 = load i32, i32* %10, align 4
  %458 = load i32, i32* %9, align 4
  %459 = icmp eq i32 %457, %458
  br label %460

460:                                              ; preds = %456, %452
  %461 = phi i1 [ false, %452 ], [ %459, %456 ]
  br label %462

462:                                              ; preds = %460, %447, %443
  %463 = phi i1 [ true, %447 ], [ true, %443 ], [ %461, %460 ]
  %464 = zext i1 %463 to i32
  %465 = load i64, i64* %13, align 8
  %466 = load i8*, i8** %8, align 8
  %467 = load i32, i32* %10, align 4
  %468 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %469 = call i32 (i32, i8*, ...) @ok(i32 %464, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i64 0, i64 0), i64 %465, i8* %466, i32 %467, i8* %468)
  %470 = load i64, i64* %13, align 8
  %471 = add i64 %470, 1
  store i64 %471, i64* %13, align 8
  br label %120

472:                                              ; preds = %120
  %473 = load i32*, i32** %5, align 8
  %474 = load i32, i32* @acceptlanguage, align 4
  %475 = call i32 @RegDeleteValueA(i32* %473, i32 %474)
  %476 = load i32, i32* %9, align 4
  store i32 %476, i32* %10, align 4
  %477 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %478 = load i32, i32* %9, align 4
  %479 = call i32 @memset(i8* %477, i8 signext 35, i32 %478)
  %480 = load i32, i32* %9, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 %481
  store i8 0, i8* %482, align 1
  %483 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %484 = call i8* @pGetAcceptLanguagesA(i8* %483, i32* %10)
  store i8* %484, i8** %8, align 8
  %485 = load i8*, i8** %8, align 8
  %486 = load i8*, i8** @S_OK, align 8
  %487 = icmp eq i8* %485, %486
  br i1 %487, label %488, label %493

488:                                              ; preds = %472
  %489 = load i32, i32* %10, align 4
  %490 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %491 = call i32 @lstrlenA(i8* %490)
  %492 = icmp eq i32 %489, %491
  br label %493

493:                                              ; preds = %488, %472
  %494 = phi i1 [ false, %472 ], [ %492, %488 ]
  %495 = zext i1 %494 to i32
  %496 = load i8*, i8** %8, align 8
  %497 = load i32, i32* %10, align 4
  %498 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %499 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %500 = call i32 @lstrlenA(i8* %499)
  %501 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %502 = call i32 (i32, i8*, ...) @ok(i32 %495, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.19, i64 0, i64 0), i8* %496, i32 %497, i8* %498, i32 %500, i8* %501)
  store i32 2, i32* %10, align 4
  %503 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %504 = load i32, i32* %9, align 4
  %505 = call i32 @memset(i8* %503, i8 signext 35, i32 %504)
  %506 = load i32, i32* %9, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 %507
  store i8 0, i8* %508, align 1
  %509 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %510 = call i8* @pGetAcceptLanguagesA(i8* %509, i32* %10)
  store i8* %510, i8** %8, align 8
  %511 = load i8*, i8** %8, align 8
  %512 = load i8*, i8** @S_OK, align 8
  %513 = icmp eq i8* %511, %512
  br i1 %513, label %518, label %514

514:                                              ; preds = %493
  %515 = load i8*, i8** %8, align 8
  %516 = load i8*, i8** @E_INVALIDARG, align 8
  %517 = icmp eq i8* %515, %516
  br i1 %517, label %518, label %524

518:                                              ; preds = %514, %493
  %519 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %520 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %521 = load i32, i32* %10, align 4
  %522 = call i32 @memcmp(i8* %519, i8* %520, i32 %521)
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %524, label %542

524:                                              ; preds = %518, %514
  %525 = load i8*, i8** %8, align 8
  %526 = load i8*, i8** @E_NOT_SUFFICIENT_BUFFER, align 8
  %527 = icmp eq i8* %525, %526
  br i1 %527, label %528, label %531

528:                                              ; preds = %524
  %529 = load i32, i32* %10, align 4
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %542

531:                                              ; preds = %528, %524
  %532 = load i8*, i8** %8, align 8
  %533 = load i32, i32* @ERROR_CANNOT_COPY, align 4
  %534 = call i8* @__HRESULT_FROM_WIN32(i32 %533)
  %535 = icmp eq i8* %532, %534
  br i1 %535, label %536, label %540

536:                                              ; preds = %531
  %537 = load i32, i32* %10, align 4
  %538 = icmp ne i32 %537, 0
  %539 = xor i1 %538, true
  br label %540

540:                                              ; preds = %536, %531
  %541 = phi i1 [ false, %531 ], [ %539, %536 ]
  br label %542

542:                                              ; preds = %540, %528, %518
  %543 = phi i1 [ true, %528 ], [ true, %518 ], [ %541, %540 ]
  %544 = zext i1 %543 to i32
  %545 = load i8*, i8** %8, align 8
  %546 = load i32, i32* %10, align 4
  %547 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %548 = call i32 (i32, i8*, ...) @ok(i32 %544, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i8* %545, i32 %546, i8* %547)
  store i32 1, i32* %10, align 4
  %549 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %550 = load i32, i32* %9, align 4
  %551 = call i32 @memset(i8* %549, i8 signext 35, i32 %550)
  %552 = load i32, i32* %9, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 %553
  store i8 0, i8* %554, align 1
  %555 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %556 = call i8* @pGetAcceptLanguagesA(i8* %555, i32* %10)
  store i8* %556, i8** %8, align 8
  %557 = load i8*, i8** %8, align 8
  %558 = load i8*, i8** @S_OK, align 8
  %559 = icmp eq i8* %557, %558
  br i1 %559, label %564, label %560

560:                                              ; preds = %542
  %561 = load i8*, i8** %8, align 8
  %562 = load i8*, i8** @E_INVALIDARG, align 8
  %563 = icmp eq i8* %561, %562
  br i1 %563, label %564, label %570

564:                                              ; preds = %560, %542
  %565 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %566 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %567 = load i32, i32* %10, align 4
  %568 = call i32 @memcmp(i8* %565, i8* %566, i32 %567)
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %570, label %588

570:                                              ; preds = %564, %560
  %571 = load i8*, i8** %8, align 8
  %572 = load i8*, i8** @E_NOT_SUFFICIENT_BUFFER, align 8
  %573 = icmp eq i8* %571, %572
  br i1 %573, label %574, label %577

574:                                              ; preds = %570
  %575 = load i32, i32* %10, align 4
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %577, label %588

577:                                              ; preds = %574, %570
  %578 = load i8*, i8** %8, align 8
  %579 = load i32, i32* @ERROR_CANNOT_COPY, align 4
  %580 = call i8* @__HRESULT_FROM_WIN32(i32 %579)
  %581 = icmp eq i8* %578, %580
  br i1 %581, label %582, label %586

582:                                              ; preds = %577
  %583 = load i32, i32* %10, align 4
  %584 = icmp ne i32 %583, 0
  %585 = xor i1 %584, true
  br label %586

586:                                              ; preds = %582, %577
  %587 = phi i1 [ false, %577 ], [ %585, %582 ]
  br label %588

588:                                              ; preds = %586, %574, %564
  %589 = phi i1 [ true, %574 ], [ true, %564 ], [ %587, %586 ]
  %590 = zext i1 %589 to i32
  %591 = load i8*, i8** %8, align 8
  %592 = load i32, i32* %10, align 4
  %593 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %594 = call i32 (i32, i8*, ...) @ok(i32 %590, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), i8* %591, i32 %592, i8* %593)
  store i32 0, i32* %10, align 4
  %595 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %596 = load i32, i32* %9, align 4
  %597 = call i32 @memset(i8* %595, i8 signext 35, i32 %596)
  %598 = load i32, i32* %9, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 %599
  store i8 0, i8* %600, align 1
  %601 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %602 = call i8* @pGetAcceptLanguagesA(i8* %601, i32* %10)
  store i8* %602, i8** %8, align 8
  %603 = load i8*, i8** %8, align 8
  %604 = load i8*, i8** @E_FAIL, align 8
  %605 = icmp eq i8* %603, %604
  br i1 %605, label %615, label %606

606:                                              ; preds = %588
  %607 = load i8*, i8** %8, align 8
  %608 = load i8*, i8** @E_INVALIDARG, align 8
  %609 = icmp eq i8* %607, %608
  br i1 %609, label %615, label %610

610:                                              ; preds = %606
  %611 = load i8*, i8** %8, align 8
  %612 = load i32, i32* @ERROR_CANNOT_COPY, align 4
  %613 = call i8* @__HRESULT_FROM_WIN32(i32 %612)
  %614 = icmp eq i8* %611, %613
  br label %615

615:                                              ; preds = %610, %606, %588
  %616 = phi i1 [ true, %606 ], [ true, %588 ], [ %614, %610 ]
  %617 = zext i1 %616 to i32
  %618 = load i8*, i8** %8, align 8
  %619 = call i32 (i32, i8*, ...) @ok(i32 %617, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i8* %618)
  %620 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %621 = load i32, i32* %9, align 4
  %622 = call i32 @memset(i8* %620, i8 signext 35, i32 %621)
  %623 = load i32, i32* %9, align 4
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 %624
  store i8 0, i8* %625, align 1
  %626 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %627 = call i8* @pGetAcceptLanguagesA(i8* %626, i32* null)
  store i8* %627, i8** %8, align 8
  %628 = load i8*, i8** %8, align 8
  %629 = load i8*, i8** @E_FAIL, align 8
  %630 = icmp eq i8* %628, %629
  br i1 %630, label %635, label %631

631:                                              ; preds = %615
  %632 = load i8*, i8** %8, align 8
  %633 = load i8*, i8** @E_INVALIDARG, align 8
  %634 = icmp eq i8* %632, %633
  br label %635

635:                                              ; preds = %631, %615
  %636 = phi i1 [ true, %615 ], [ %634, %631 ]
  %637 = zext i1 %636 to i32
  %638 = load i8*, i8** %8, align 8
  %639 = call i32 (i32, i8*, ...) @ok(i32 %637, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.23, i64 0, i64 0), i8* %638)
  %640 = call i8* @pGetAcceptLanguagesA(i8* null, i32* null)
  store i8* %640, i8** %8, align 8
  %641 = load i8*, i8** %8, align 8
  %642 = load i8*, i8** @E_FAIL, align 8
  %643 = icmp eq i8* %641, %642
  br i1 %643, label %648, label %644

644:                                              ; preds = %635
  %645 = load i8*, i8** %8, align 8
  %646 = load i8*, i8** @E_INVALIDARG, align 8
  %647 = icmp eq i8* %645, %646
  br label %648

648:                                              ; preds = %644, %635
  %649 = phi i1 [ true, %635 ], [ %647, %644 ]
  %650 = zext i1 %649 to i32
  %651 = load i8*, i8** %8, align 8
  %652 = call i32 (i32, i8*, ...) @ok(i32 %650, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.23, i64 0, i64 0), i8* %651)
  br label %653

653:                                              ; preds = %648, %114, %80
  %654 = load i8*, i8** %6, align 8
  %655 = icmp ne i8* %654, null
  br i1 %655, label %680, label %656

656:                                              ; preds = %653
  %657 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %658 = call i32 @lstrlenA(i8* %657)
  store i32 %658, i32* %10, align 4
  %659 = load i32*, i32** %5, align 8
  %660 = load i32, i32* @acceptlanguage, align 4
  %661 = load i32, i32* @REG_SZ, align 4
  %662 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %663 = bitcast i8* %662 to i32*
  %664 = load i32, i32* %10, align 4
  %665 = icmp ne i32 %664, 0
  br i1 %665, label %666, label %669

666:                                              ; preds = %656
  %667 = load i32, i32* %10, align 4
  %668 = add nsw i32 %667, 1
  br label %670

669:                                              ; preds = %656
  br label %670

670:                                              ; preds = %669, %666
  %671 = phi i32 [ %668, %666 ], [ 0, %669 ]
  %672 = call i8* @RegSetValueExA(i32* %659, i32 %660, i32 0, i32 %661, i32* %663, i32 %671)
  store i8* %672, i8** %7, align 8
  %673 = load i8*, i8** %7, align 8
  %674 = icmp ne i8* %673, null
  %675 = xor i1 %674, true
  %676 = zext i1 %675 to i32
  %677 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %678 = load i8*, i8** %7, align 8
  %679 = call i32 (i32, i8*, ...) @ok(i32 %676, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0), i8* %677, i8* %678)
  br label %684

680:                                              ; preds = %653
  %681 = load i32*, i32** %5, align 8
  %682 = load i32, i32* @acceptlanguage, align 4
  %683 = call i32 @RegDeleteValueA(i32* %681, i32 %682)
  br label %684

684:                                              ; preds = %680, %670
  %685 = load i32*, i32** %5, align 8
  %686 = call i32 @RegCloseKey(i32* %685)
  br label %687

687:                                              ; preds = %684, %21
  ret void
}

declare dso_local i32 @GetUserDefaultLCID(...) #1

declare dso_local i8* @RegOpenKeyA(i32, i32, i32**) #1

declare dso_local i32 @skip(i8*, i32, i8*) #1

declare dso_local i8* @RegQueryValueExA(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @RegDeleteValueA(i32*, i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @GetLocaleInfoA(i32, i32, i8*, i32) #1

declare dso_local i32 @lstrcatA(i8*, i8*) #1

declare dso_local i8* @pGetAcceptLanguagesA(i8*, i32*) #1

declare dso_local i32 @win_skip(i8*, i8*) #1

declare dso_local i64 @lstrcmpA(i8*, i8*) #1

declare dso_local i8* @LcidToRfc1766A(i32, i8*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @trace(i8*, i8*) #1

declare dso_local i32 @lstrlenA(i8*) #1

declare dso_local i8* @RegSetValueExA(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @SUCCEEDED(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i8* @__HRESULT_FROM_WIN32(i32) #1

declare dso_local i32 @RegCloseKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
