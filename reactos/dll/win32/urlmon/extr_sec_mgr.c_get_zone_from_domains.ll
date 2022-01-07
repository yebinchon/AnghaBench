; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_sec_mgr.c_get_zone_from_domains.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_sec_mgr.c_get_zone_from_domains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@URL_SCHEME_UNKNOWN = common dso_local global i64 0, align 8
@S_FALSE = common dso_local global i64 0, align 8
@URL_SCHEME_FILE = common dso_local global i64 0, align 8
@URLZONE_INVALID = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@wszZoneMapDomainsKey = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Failed to open HKCU's %s key\0A\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to open HKLM's %s key\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64*)* @get_zone_from_domains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_zone_from_domains(i32* %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @IUri_GetScheme(i32* %12, i64* %11)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i64 @FAILED(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* %3, align 8
  br label %118

19:                                               ; preds = %2
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* @URL_SCHEME_UNKNOWN, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i64, i64* @S_FALSE, align 8
  store i64 %24, i64* %3, align 8
  br label %118

25:                                               ; preds = %19
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @IUri_GetHost(i32* %26, i32** %7)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @FAILED(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i64, i64* %6, align 8
  store i64 %32, i64* %3, align 8
  br label %118

33:                                               ; preds = %25
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @URL_SCHEME_UNKNOWN, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* @URL_SCHEME_FILE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = load i64, i64* %11, align 8
  %43 = call i64 @is_hierarchical_scheme(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* @URLZONE_INVALID, align 8
  %51 = load i64*, i64** %5, align 8
  store i64 %50, i64* %51, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @SysFreeString(i32* %52)
  %54 = load i64, i64* @S_OK, align 8
  store i64 %54, i64* %3, align 8
  br label %118

55:                                               ; preds = %45, %41, %37, %33
  %56 = load i32*, i32** %4, align 8
  %57 = call i64 @IUri_GetSchemeName(i32* %56, i32** %8)
  store i64 %57, i64* %6, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i64 @FAILED(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @SysFreeString(i32* %62)
  %64 = load i64, i64* %6, align 8
  store i64 %64, i64* %3, align 8
  br label %118

65:                                               ; preds = %55
  %66 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %67 = load i32, i32* @wszZoneMapDomainsKey, align 4
  %68 = call i64 @RegOpenKeyW(i32 %66, i32 %67, i32* %10)
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* @ERROR_SUCCESS, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %65
  %73 = load i32, i32* %10, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @SysStringLen(i32* %76)
  %78 = load i64*, i64** %5, align 8
  %79 = call i64 @search_for_domain_mapping(i32 %73, i32* %74, i32* %75, i32 %77, i64* %78)
  store i64 %79, i64* %6, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @RegCloseKey(i32 %80)
  br label %86

82:                                               ; preds = %65
  %83 = load i32, i32* @wszZoneMapDomainsKey, align 4
  %84 = call i32 @debugstr_w(i32 %83)
  %85 = call i32 @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %82, %72
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* @S_FALSE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %112

90:                                               ; preds = %86
  %91 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %92 = load i32, i32* @wszZoneMapDomainsKey, align 4
  %93 = call i64 @RegOpenKeyW(i32 %91, i32 %92, i32* %10)
  store i64 %93, i64* %9, align 8
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* @ERROR_SUCCESS, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %90
  %98 = load i32, i32* %10, align 4
  %99 = load i32*, i32** %8, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = call i32 @SysStringLen(i32* %101)
  %103 = load i64*, i64** %5, align 8
  %104 = call i64 @search_for_domain_mapping(i32 %98, i32* %99, i32* %100, i32 %102, i64* %103)
  store i64 %104, i64* %6, align 8
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @RegCloseKey(i32 %105)
  br label %111

107:                                              ; preds = %90
  %108 = load i32, i32* @wszZoneMapDomainsKey, align 4
  %109 = call i32 @debugstr_w(i32 %108)
  %110 = call i32 @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %107, %97
  br label %112

112:                                              ; preds = %111, %86
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @SysFreeString(i32* %113)
  %115 = load i32*, i32** %8, align 8
  %116 = call i32 @SysFreeString(i32* %115)
  %117 = load i64, i64* %6, align 8
  store i64 %117, i64* %3, align 8
  br label %118

118:                                              ; preds = %112, %61, %49, %31, %23, %17
  %119 = load i64, i64* %3, align 8
  ret i64 %119
}

declare dso_local i64 @IUri_GetScheme(i32*, i64*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @IUri_GetHost(i32*, i32**) #1

declare dso_local i64 @is_hierarchical_scheme(i64) #1

declare dso_local i32 @SysFreeString(i32*) #1

declare dso_local i64 @IUri_GetSchemeName(i32*, i32**) #1

declare dso_local i64 @RegOpenKeyW(i32, i32, i32*) #1

declare dso_local i64 @search_for_domain_mapping(i32, i32*, i32*, i32, i64*) #1

declare dso_local i32 @SysStringLen(i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
