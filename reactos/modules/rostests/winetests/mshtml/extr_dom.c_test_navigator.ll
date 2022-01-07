; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_navigator.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_navigator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_navigator.v40 = internal constant [3 x i8] c"4.0", align 1
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"parentWidnow failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"get_navigator failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"navigator == NULL\0A\00", align 1
@DIID_DispHTMLNavigator = common dso_local global i32 0, align 4
@IID_IOmNavigator = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"[object]\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"navigator2 != navihgator\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"get_appCodeName failed: %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Mozilla\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Unexpected appCodeName %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"get_appName failed: %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Microsoft Internet Explorer\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"get_platform failed: %08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"Win64\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Win32\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"unexpected platform %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"get_cpuClass failed: %08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"x64\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"unexpected cpuClass %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"get_appVersion failed: %08x\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"appVersion is %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"get_systemLanguage failed: %08x\0A\00", align 1
@LOCALE_SYSTEM_DEFAULT = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [34 x i8] c"get_browserLanguage failed: %08x\0A\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"GetUserDefaultUILanguage not available\0A\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"get_userLanguage failed: %08x\0A\00", align 1
@LOCALE_USER_DEFAULT = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [23 x i8] c"toString failed: %08x\0A\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"toString returned %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"get_onLine failed: %08x\0A\00", align 1
@VARIANT_TRUE = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [13 x i8] c"onLine = %x\0A\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"ObtainUserAgentString failed: %08x\0A\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"get_userAgent failed: %08x\0A\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"userAgent returned %s, expected \22%s\22\0A\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"Mozilla/\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"appVersion returned %s, expected \22%s\22\0A\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"nonstandard user agent\0A\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"get_appMonorVersion failed: %08x\0A\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"appMinorVersion returned NULL\0A\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"navigator should be destroyed here\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_navigator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_navigator(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [512 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @IHTMLDocument2_get_parentWindow(i32* %12, i32** %3)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* @S_OK, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %11, align 4
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @IHTMLWindow2_get_navigator(i32* %20, i32** %4)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @S_OK, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %11, align 4
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @test_disp2(i32* %32, i32* @DIID_DispHTMLNavigator, i32* @IID_IOmNavigator, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @IHTMLWindow2_get_navigator(i32* %34, i32** %5)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @S_OK, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %11, align 4
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = icmp ne i32* %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @IHTMLWindow2_Release(i32* %47)
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @IOmNavigator_Release(i32* %49)
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @IOmNavigator_get_appCodeName(i32* %51, i32** %10)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @S_OK, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %11, align 4
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %57)
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @strcmp_wa(i32* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @wine_dbgstr_w(i32* %64)
  %66 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %65)
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @SysFreeString(i32* %67)
  store i32* null, i32** %10, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @IOmNavigator_get_appName(i32* %69, i32** %10)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @S_OK, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %11, align 4
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %75)
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @strcmp_wa(i32* %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @wine_dbgstr_w(i32* %82)
  %84 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %83)
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @SysFreeString(i32* %85)
  store i32* null, i32** %10, align 8
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @IOmNavigator_get_platform(i32* %87, i32** %10)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @S_OK, align 4
  %91 = icmp eq i32 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* %11, align 4
  %94 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %93)
  %95 = load i32*, i32** %10, align 8
  %96 = call i32 @strcmp_wa(i32* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %1
  %99 = load i32*, i32** %10, align 8
  %100 = call i32 @strcmp_wa(i32* %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = call i64 @broken(i32 %103)
  %105 = icmp ne i64 %104, 0
  br label %106

106:                                              ; preds = %98, %1
  %107 = phi i1 [ true, %1 ], [ %105, %98 ]
  %108 = zext i1 %107 to i32
  %109 = load i32*, i32** %10, align 8
  %110 = call i32 @wine_dbgstr_w(i32* %109)
  %111 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %110)
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @SysFreeString(i32* %112)
  store i32* null, i32** %10, align 8
  %114 = load i32*, i32** %4, align 8
  %115 = call i32 @IOmNavigator_get_cpuClass(i32* %114, i32** %10)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @S_OK, align 4
  %118 = icmp eq i32 %116, %117
  %119 = zext i1 %118 to i32
  %120 = load i32, i32* %11, align 4
  %121 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i32 %120)
  %122 = load i32*, i32** %10, align 8
  %123 = call i32 @strcmp_wa(i32* %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = load i32*, i32** %10, align 8
  %128 = call i32 @wine_dbgstr_w(i32* %127)
  %129 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 %128)
  %130 = load i32*, i32** %10, align 8
  %131 = call i32 @SysFreeString(i32* %130)
  store i32* null, i32** %10, align 8
  %132 = load i32*, i32** %4, align 8
  %133 = call i32 @IOmNavigator_get_appVersion(i32* %132, i32** %10)
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* @S_OK, align 4
  %136 = icmp eq i32 %134, %135
  %137 = zext i1 %136 to i32
  %138 = load i32, i32* %11, align 4
  %139 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i32 %138)
  %140 = load i32*, i32** %10, align 8
  %141 = call i32 @memcmp(i32* %140, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_navigator.v40, i64 0, i64 0), i32 3)
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  %144 = zext i1 %143 to i32
  %145 = load i32*, i32** %10, align 8
  %146 = call i32 @wine_dbgstr_w(i32* %145)
  %147 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i32 %146)
  %148 = load i32*, i32** %10, align 8
  %149 = call i32 @SysFreeString(i32* %148)
  store i32* null, i32** %10, align 8
  %150 = load i32*, i32** %4, align 8
  %151 = call i32 @IOmNavigator_get_systemLanguage(i32* %150, i32** %10)
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* @S_OK, align 4
  %154 = icmp eq i32 %152, %153
  %155 = zext i1 %154 to i32
  %156 = load i32, i32* %11, align 4
  %157 = call i32 (i32, i8*, ...) @ok(i32 %155, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0), i32 %156)
  %158 = load i32*, i32** %10, align 8
  %159 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %160 = call i32 @test_language_string(i32* %158, i32 %159)
  %161 = load i32*, i32** %10, align 8
  %162 = call i32 @SysFreeString(i32* %161)
  br i1 true, label %163, label %177

163:                                              ; preds = %106
  store i32* null, i32** %10, align 8
  %164 = load i32*, i32** %4, align 8
  %165 = call i32 @IOmNavigator_get_browserLanguage(i32* %164, i32** %10)
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* @S_OK, align 4
  %168 = icmp eq i32 %166, %167
  %169 = zext i1 %168 to i32
  %170 = load i32, i32* %11, align 4
  %171 = call i32 (i32, i8*, ...) @ok(i32 %169, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0), i32 %170)
  %172 = load i32*, i32** %10, align 8
  %173 = call i32 (...) @pGetUserDefaultUILanguage()
  %174 = call i32 @test_language_string(i32* %172, i32 %173)
  %175 = load i32*, i32** %10, align 8
  %176 = call i32 @SysFreeString(i32* %175)
  br label %179

177:                                              ; preds = %106
  %178 = call i32 @win_skip(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0))
  br label %179

179:                                              ; preds = %177, %163
  store i32* null, i32** %10, align 8
  %180 = load i32*, i32** %4, align 8
  %181 = call i32 @IOmNavigator_get_userLanguage(i32* %180, i32** %10)
  store i32 %181, i32* %11, align 4
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* @S_OK, align 4
  %184 = icmp eq i32 %182, %183
  %185 = zext i1 %184 to i32
  %186 = load i32, i32* %11, align 4
  %187 = call i32 (i32, i8*, ...) @ok(i32 %185, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0), i32 %186)
  %188 = load i32*, i32** %10, align 8
  %189 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %190 = call i32 @test_language_string(i32* %188, i32 %189)
  %191 = load i32*, i32** %10, align 8
  %192 = call i32 @SysFreeString(i32* %191)
  %193 = load i32*, i32** %4, align 8
  %194 = call i32 @IOmNavigator_toString(i32* %193, i32** null)
  store i32 %194, i32* %11, align 4
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* @E_INVALIDARG, align 4
  %197 = icmp eq i32 %195, %196
  %198 = zext i1 %197 to i32
  %199 = load i32, i32* %11, align 4
  %200 = call i32 (i32, i8*, ...) @ok(i32 %198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 %199)
  store i32* null, i32** %10, align 8
  %201 = load i32*, i32** %4, align 8
  %202 = call i32 @IOmNavigator_toString(i32* %201, i32** %10)
  store i32 %202, i32* %11, align 4
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* @S_OK, align 4
  %205 = icmp eq i32 %203, %204
  %206 = zext i1 %205 to i32
  %207 = load i32, i32* %11, align 4
  %208 = call i32 (i32, i8*, ...) @ok(i32 %206, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 %207)
  %209 = load i32*, i32** %10, align 8
  %210 = call i32 @strcmp_wa(i32* %209, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %211 = icmp ne i32 %210, 0
  %212 = xor i1 %211, true
  %213 = zext i1 %212 to i32
  %214 = load i32*, i32** %10, align 8
  %215 = call i32 @wine_dbgstr_w(i32* %214)
  %216 = call i32 (i32, i8*, ...) @ok(i32 %213, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0), i32 %215)
  %217 = load i32*, i32** %10, align 8
  %218 = call i32 @SysFreeString(i32* %217)
  store i32 100, i32* %6, align 4
  %219 = load i32*, i32** %4, align 8
  %220 = call i32 @IOmNavigator_get_onLine(i32* %219, i32* %6)
  store i32 %220, i32* %11, align 4
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* @S_OK, align 4
  %223 = icmp eq i32 %221, %222
  %224 = zext i1 %223 to i32
  %225 = load i32, i32* %11, align 4
  %226 = call i32 (i32, i8*, ...) @ok(i32 %224, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i32 %225)
  %227 = load i32, i32* %6, align 4
  %228 = load i32, i32* @VARIANT_TRUE, align 4
  %229 = icmp eq i32 %227, %228
  %230 = zext i1 %229 to i32
  %231 = load i32, i32* %6, align 4
  %232 = call i32 (i32, i8*, ...) @ok(i32 %230, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i32 %231)
  store i32 512, i32* %8, align 4
  %233 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %234 = call i32 @ObtainUserAgentString(i32 0, i8* %233, i32* %8)
  store i32 %234, i32* %11, align 4
  %235 = load i32, i32* %11, align 4
  %236 = load i32, i32* @S_OK, align 4
  %237 = icmp eq i32 %235, %236
  %238 = zext i1 %237 to i32
  %239 = load i32, i32* %11, align 4
  %240 = call i32 (i32, i8*, ...) @ok(i32 %238, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.27, i64 0, i64 0), i32 %239)
  store i32* null, i32** %10, align 8
  %241 = load i32*, i32** %4, align 8
  %242 = call i32 @IOmNavigator_get_userAgent(i32* %241, i32** %10)
  store i32 %242, i32* %11, align 4
  %243 = load i32, i32* %11, align 4
  %244 = load i32, i32* @S_OK, align 4
  %245 = icmp eq i32 %243, %244
  %246 = zext i1 %245 to i32
  %247 = load i32, i32* %11, align 4
  %248 = call i32 (i32, i8*, ...) @ok(i32 %246, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i64 0, i64 0), i32 %247)
  %249 = load i32*, i32** %10, align 8
  %250 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %251 = call i32 @strcmp_wa(i32* %249, i8* %250)
  %252 = icmp ne i32 %251, 0
  %253 = xor i1 %252, true
  %254 = zext i1 %253 to i32
  %255 = load i32*, i32** %10, align 8
  %256 = call i32 @wine_dbgstr_w(i32* %255)
  %257 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %258 = call i32 (i32, i8*, ...) @ok(i32 %254, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.29, i64 0, i64 0), i32 %256, i8* %257)
  %259 = load i32*, i32** %10, align 8
  %260 = call i32 @SysFreeString(i32* %259)
  %261 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %262 = call i32 @strncmp(i8* %261, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0), i32 8)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %287, label %264

264:                                              ; preds = %179
  store i32* null, i32** %10, align 8
  %265 = load i32*, i32** %4, align 8
  %266 = call i32 @IOmNavigator_get_appVersion(i32* %265, i32** %10)
  store i32 %266, i32* %11, align 4
  %267 = load i32, i32* %11, align 4
  %268 = load i32, i32* @S_OK, align 4
  %269 = icmp eq i32 %267, %268
  %270 = zext i1 %269 to i32
  %271 = load i32, i32* %11, align 4
  %272 = call i32 (i32, i8*, ...) @ok(i32 %270, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i32 %271)
  %273 = load i32*, i32** %10, align 8
  %274 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %275 = getelementptr inbounds i8, i8* %274, i64 8
  %276 = call i32 @strcmp_wa(i32* %273, i8* %275)
  %277 = icmp ne i32 %276, 0
  %278 = xor i1 %277, true
  %279 = zext i1 %278 to i32
  %280 = load i32*, i32** %10, align 8
  %281 = call i32 @wine_dbgstr_w(i32* %280)
  %282 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %283 = getelementptr inbounds i8, i8* %282, i64 8
  %284 = call i32 (i32, i8*, ...) @ok(i32 %279, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0), i32 %281, i8* %283)
  %285 = load i32*, i32** %10, align 8
  %286 = call i32 @SysFreeString(i32* %285)
  br label %289

287:                                              ; preds = %179
  %288 = call i32 @skip(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0))
  br label %289

289:                                              ; preds = %287, %264
  store i32* null, i32** %10, align 8
  %290 = load i32*, i32** %4, align 8
  %291 = call i32 @IOmNavigator_get_appMinorVersion(i32* %290, i32** %10)
  store i32 %291, i32* %11, align 4
  %292 = load i32, i32* %11, align 4
  %293 = load i32, i32* @S_OK, align 4
  %294 = icmp eq i32 %292, %293
  %295 = zext i1 %294 to i32
  %296 = load i32, i32* %11, align 4
  %297 = call i32 (i32, i8*, ...) @ok(i32 %295, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i64 0, i64 0), i32 %296)
  %298 = load i32*, i32** %10, align 8
  %299 = icmp ne i32* %298, null
  %300 = zext i1 %299 to i32
  %301 = call i32 (i32, i8*, ...) @ok(i32 %300, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0))
  %302 = load i32*, i32** %10, align 8
  %303 = call i32 @SysFreeString(i32* %302)
  %304 = load i32*, i32** %4, align 8
  %305 = call i32 @test_mime_types_col(i32* %304)
  %306 = load i32*, i32** %4, align 8
  %307 = call i32 @IOmNavigator_Release(i32* %306)
  store i32 %307, i32* %9, align 4
  %308 = load i32, i32* %9, align 4
  %309 = icmp ne i32 %308, 0
  %310 = xor i1 %309, true
  %311 = zext i1 %310 to i32
  %312 = call i32 (i32, i8*, ...) @ok(i32 %311, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i64 0, i64 0))
  ret void
}

declare dso_local i32 @IHTMLDocument2_get_parentWindow(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IHTMLWindow2_get_navigator(i32*, i32**) #1

declare dso_local i32 @test_disp2(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @IHTMLWindow2_Release(i32*) #1

declare dso_local i32 @IOmNavigator_Release(i32*) #1

declare dso_local i32 @IOmNavigator_get_appCodeName(i32*, i32**) #1

declare dso_local i32 @strcmp_wa(i32*, i8*) #1

declare dso_local i32 @wine_dbgstr_w(i32*) #1

declare dso_local i32 @SysFreeString(i32*) #1

declare dso_local i32 @IOmNavigator_get_appName(i32*, i32**) #1

declare dso_local i32 @IOmNavigator_get_platform(i32*, i32**) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @IOmNavigator_get_cpuClass(i32*, i32**) #1

declare dso_local i32 @IOmNavigator_get_appVersion(i32*, i32**) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @IOmNavigator_get_systemLanguage(i32*, i32**) #1

declare dso_local i32 @test_language_string(i32*, i32) #1

declare dso_local i32 @pGetUserDefaultUILanguage(...) #1

declare dso_local i32 @IOmNavigator_get_browserLanguage(i32*, i32**) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @IOmNavigator_get_userLanguage(i32*, i32**) #1

declare dso_local i32 @IOmNavigator_toString(i32*, i32**) #1

declare dso_local i32 @IOmNavigator_get_onLine(i32*, i32*) #1

declare dso_local i32 @ObtainUserAgentString(i32, i8*, i32*) #1

declare dso_local i32 @IOmNavigator_get_userAgent(i32*, i32**) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @IOmNavigator_get_appMinorVersion(i32*, i32**) #1

declare dso_local i32 @test_mime_types_col(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
