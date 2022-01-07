; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_sec_mgr.c_test_InternetGetSecurityUrl.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_sec_mgr.c_test_InternetGetSecurityUrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_InternetGetSecurityUrl.url5_out = private unnamed_addr constant [24 x i8] c"http:www.zone3.winetest\00", align 16
@__const.test_InternetGetSecurityUrl.url7_out = private unnamed_addr constant [19 x i8] c"ftp:zone3.winetest\00", align 16
@url2 = common dso_local global i8* null, align 8
@url3 = common dso_local global i8* null, align 8
@url4 = common dso_local global i8* null, align 8
@url5 = common dso_local global i8* null, align 8
@url7 = common dso_local global i8* null, align 8
@url8 = common dso_local global i8* null, align 8
@url9 = common dso_local global i8* null, align 8
@url10 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"testing CoInternetGetSecurityUrl...\0A\00", align 1
@PSU_DEFAULT = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"(%d) CoInternetGetSecurityUrl returned: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"(%d) Got %s, expected %s\0A\00", align 1
@PSU_SECURITY_URL_ONLY = common dso_local global i32 0, align 4
@ParseUrl_SECURITY_URL_input2 = common dso_local global i32 0, align 4
@ParseUrl_SECURITY_URL_expected = common dso_local global i32 0, align 4
@ParseUrl_SECURITY_DOMAIN_expected = common dso_local global i32 0, align 4
@security_url2W = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [57 x i8] c"CoInternetGetSecurityUrl returned 0x%08x, expected S_OK\0A\00", align 1
@security_expectedW = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"Expected %s but got %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_InternetGetSecurityUrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_InternetGetSecurityUrl() #0 {
  %1 = alloca [24 x i8], align 16
  %2 = alloca [19 x i8], align 16
  %3 = alloca [8 x i8*], align 16
  %4 = alloca [8 x i8*], align 16
  %5 = alloca [8 x i8*], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = bitcast [24 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 getelementptr inbounds ([24 x i8], [24 x i8]* @__const.test_InternetGetSecurityUrl.url5_out, i32 0, i32 0), i64 24, i1 false)
  %10 = bitcast [19 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 getelementptr inbounds ([19 x i8], [19 x i8]* @__const.test_InternetGetSecurityUrl.url7_out, i32 0, i32 0), i64 19, i1 false)
  %11 = getelementptr inbounds [8 x i8*], [8 x i8*]* %3, i64 0, i64 0
  %12 = load i8*, i8** @url2, align 8
  store i8* %12, i8** %11, align 8
  %13 = getelementptr inbounds i8*, i8** %11, i64 1
  %14 = load i8*, i8** @url3, align 8
  store i8* %14, i8** %13, align 8
  %15 = getelementptr inbounds i8*, i8** %13, i64 1
  %16 = load i8*, i8** @url4, align 8
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %15, i64 1
  %18 = load i8*, i8** @url5, align 8
  store i8* %18, i8** %17, align 8
  %19 = getelementptr inbounds i8*, i8** %17, i64 1
  %20 = load i8*, i8** @url7, align 8
  store i8* %20, i8** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %19, i64 1
  %22 = load i8*, i8** @url8, align 8
  store i8* %22, i8** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %21, i64 1
  %24 = load i8*, i8** @url9, align 8
  store i8* %24, i8** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 1
  %26 = load i8*, i8** @url10, align 8
  store i8* %26, i8** %25, align 8
  %27 = getelementptr inbounds [8 x i8*], [8 x i8*]* %4, i64 0, i64 0
  %28 = load i8*, i8** @url2, align 8
  store i8* %28, i8** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 1
  %30 = load i8*, i8** @url3, align 8
  store i8* %30, i8** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %29, i64 1
  %32 = load i8*, i8** @url4, align 8
  store i8* %32, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %31, i64 1
  %34 = getelementptr inbounds [24 x i8], [24 x i8]* %1, i64 0, i64 0
  store i8* %34, i8** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 1
  %36 = getelementptr inbounds [19 x i8], [19 x i8]* %2, i64 0, i64 0
  store i8* %36, i8** %35, align 8
  %37 = getelementptr inbounds i8*, i8** %35, i64 1
  %38 = load i8*, i8** @url8, align 8
  store i8* %38, i8** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 1
  %40 = getelementptr inbounds [24 x i8], [24 x i8]* %1, i64 0, i64 0
  store i8* %40, i8** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %39, i64 1
  %42 = load i8*, i8** @url10, align 8
  store i8* %42, i8** %41, align 8
  %43 = getelementptr inbounds [8 x i8*], [8 x i8*]* %5, i64 0, i64 0
  %44 = load i8*, i8** @url2, align 8
  store i8* %44, i8** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %43, i64 1
  %46 = load i8*, i8** @url3, align 8
  store i8* %46, i8** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %45, i64 1
  %48 = load i8*, i8** @url4, align 8
  store i8* %48, i8** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %47, i64 1
  %50 = load i8*, i8** @url5, align 8
  store i8* %50, i8** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 1
  %52 = load i8*, i8** @url7, align 8
  store i8* %52, i8** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %51, i64 1
  %54 = load i8*, i8** @url8, align 8
  store i8* %54, i8** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %53, i64 1
  %56 = load i8*, i8** @url9, align 8
  store i8* %56, i8** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %55, i64 1
  %58 = load i8*, i8** @url10, align 8
  store i8* %58, i8** %57, align 8
  %59 = call i32 @trace(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %7, align 8
  br label %60

60:                                               ; preds = %136, %0
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds [8 x i8*], [8 x i8*]* %3, i64 0, i64 0
  %63 = call i64 @ARRAY_SIZE(i8** %62)
  %64 = icmp ult i64 %61, %63
  br i1 %64, label %65, label %139

65:                                               ; preds = %60
  %66 = load i64, i64* %7, align 8
  %67 = getelementptr inbounds [8 x i8*], [8 x i8*]* %3, i64 0, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* @PSU_DEFAULT, align 4
  %70 = call i64 @pCoInternetGetSecurityUrl(i8* %68, i8** %6, i32 %69, i32 0)
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* @S_OK, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %8, align 8
  %77 = call i32 (i32, i8*, i64, ...) @ok(i32 %74, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %75, i64 %76)
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* @S_OK, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %65
  %82 = load i8*, i8** %6, align 8
  %83 = load i64, i64* %7, align 8
  %84 = getelementptr inbounds [8 x i8*], [8 x i8*]* %4, i64 0, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @strcmp_w(i8* %82, i8* %85)
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = load i64, i64* %7, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = call i64 @wine_dbgstr_w(i8* %91)
  %93 = load i64, i64* %7, align 8
  %94 = getelementptr inbounds [8 x i8*], [8 x i8*]* %4, i64 0, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @wine_dbgstr_w(i8* %95)
  %97 = call i32 (i32, i8*, i64, ...) @ok(i32 %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %90, i64 %92, i64 %96)
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @CoTaskMemFree(i8* %98)
  br label %100

100:                                              ; preds = %81, %65
  %101 = load i64, i64* %7, align 8
  %102 = getelementptr inbounds [8 x i8*], [8 x i8*]* %3, i64 0, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* @PSU_SECURITY_URL_ONLY, align 4
  %105 = call i64 @pCoInternetGetSecurityUrl(i8* %103, i8** %6, i32 %104, i32 0)
  store i64 %105, i64* %8, align 8
  %106 = load i64, i64* %8, align 8
  %107 = load i64, i64* @S_OK, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = load i64, i64* %7, align 8
  %111 = load i64, i64* %8, align 8
  %112 = call i32 (i32, i8*, i64, ...) @ok(i32 %109, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %110, i64 %111)
  %113 = load i64, i64* %8, align 8
  %114 = load i64, i64* @S_OK, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %135

116:                                              ; preds = %100
  %117 = load i8*, i8** %6, align 8
  %118 = load i64, i64* %7, align 8
  %119 = getelementptr inbounds [8 x i8*], [8 x i8*]* %5, i64 0, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @strcmp_w(i8* %117, i8* %120)
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  %125 = load i64, i64* %7, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = call i64 @wine_dbgstr_w(i8* %126)
  %128 = load i64, i64* %7, align 8
  %129 = getelementptr inbounds [8 x i8*], [8 x i8*]* %5, i64 0, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = call i64 @wine_dbgstr_w(i8* %130)
  %132 = call i32 (i32, i8*, i64, ...) @ok(i32 %124, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %125, i64 %127, i64 %131)
  %133 = load i8*, i8** %6, align 8
  %134 = call i32 @CoTaskMemFree(i8* %133)
  br label %135

135:                                              ; preds = %116, %100
  br label %136

136:                                              ; preds = %135
  %137 = load i64, i64* %7, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %7, align 8
  br label %60

139:                                              ; preds = %60
  %140 = load i32, i32* @ParseUrl_SECURITY_URL_input2, align 4
  %141 = call i32 @SET_EXPECT(i32 %140)
  %142 = load i32, i32* @ParseUrl_SECURITY_URL_expected, align 4
  %143 = call i32 @SET_EXPECT(i32 %142)
  %144 = load i32, i32* @ParseUrl_SECURITY_DOMAIN_expected, align 4
  %145 = call i32 @SET_EXPECT(i32 %144)
  %146 = load i8*, i8** @security_url2W, align 8
  %147 = load i32, i32* @PSU_DEFAULT, align 4
  %148 = call i64 @pCoInternetGetSecurityUrl(i8* %146, i8** %6, i32 %147, i32 0)
  store i64 %148, i64* %8, align 8
  %149 = load i64, i64* %8, align 8
  %150 = load i64, i64* @S_OK, align 8
  %151 = icmp eq i64 %149, %150
  %152 = zext i1 %151 to i32
  %153 = load i64, i64* %8, align 8
  %154 = call i32 (i32, i8*, i64, ...) @ok(i32 %152, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i64 %153)
  %155 = load i32, i32* @ParseUrl_SECURITY_URL_input2, align 4
  %156 = call i32 @CHECK_CALLED(i32 %155)
  %157 = load i32, i32* @ParseUrl_SECURITY_URL_expected, align 4
  %158 = call i32 @CHECK_CALLED(i32 %157)
  %159 = load i32, i32* @ParseUrl_SECURITY_DOMAIN_expected, align 4
  %160 = call i32 @CHECK_CALLED(i32 %159)
  %161 = load i8*, i8** @security_expectedW, align 8
  %162 = load i8*, i8** %6, align 8
  %163 = call i32 @lstrcmpW(i8* %161, i8* %162)
  %164 = icmp ne i32 %163, 0
  %165 = xor i1 %164, true
  %166 = zext i1 %165 to i32
  %167 = load i8*, i8** @security_expectedW, align 8
  %168 = call i64 @wine_dbgstr_w(i8* %167)
  %169 = load i8*, i8** %6, align 8
  %170 = call i64 @wine_dbgstr_w(i8* %169)
  %171 = call i32 (i32, i8*, i64, ...) @ok(i32 %166, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %168, i64 %170)
  %172 = load i8*, i8** %6, align 8
  %173 = call i32 @CoTaskMemFree(i8* %172)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @trace(i8*) #2

declare dso_local i64 @ARRAY_SIZE(i8**) #2

declare dso_local i64 @pCoInternetGetSecurityUrl(i8*, i8**, i32, i32) #2

declare dso_local i32 @ok(i32, i8*, i64, ...) #2

declare dso_local i32 @strcmp_w(i8*, i8*) #2

declare dso_local i64 @wine_dbgstr_w(i8*) #2

declare dso_local i32 @CoTaskMemFree(i8*) #2

declare dso_local i32 @SET_EXPECT(i32) #2

declare dso_local i32 @CHECK_CALLED(i32) #2

declare dso_local i32 @lstrcmpW(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
