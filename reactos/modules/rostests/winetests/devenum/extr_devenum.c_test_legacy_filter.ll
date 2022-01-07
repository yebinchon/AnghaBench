; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/devenum/extr_devenum.c_test_legacy_filter.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/devenum/extr_devenum.c_test_legacy_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_legacy_filter.nameW = internal constant [5 x i8] c"test\00", align 1
@CLSID_CDeviceMoniker = common dso_local global i32 0, align 4
@CLSCTX_INPROC = common dso_local global i32 0, align 4
@IID_IParseDisplayName = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Failed to create ParseDisplayName: %#x\0A\00", align 1
@CLSID_FilterMapper2 = common dso_local global i32 0, align 4
@IID_IFilterMapper = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to create FilterMapper: %#x\0A\00", align 1
@CLSID_TestFilter = common dso_local global i32 0, align 4
@VFW_E_BAD_KEY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"not enough permissions to register filters\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"RegisterFilter failed: %#x\0A\00", align 1
@deviceW = common dso_local global i32 0, align 4
@cmW = common dso_local global i32 0, align 4
@CLSID_LegacyAmFilterCategory = common dso_local global i32 0, align 4
@CHARS_IN_GUID = common dso_local global i32 0, align 4
@backslashW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"filter should be registered\0A\00", align 1
@IID_IPropertyBag = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"BindToStorage failed: %#x\0A\00", align 1
@friendly_name = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"Read failed: %#x\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"expected %s, got %s\0A\00", align 1
@clsidW = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"UnregisterFilter failed: %#x\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"filter should not be registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_legacy_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_legacy_filter() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [200 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = load i32, i32* @CLSCTX_INPROC, align 4
  %9 = bitcast i32** %1 to i8**
  %10 = call i64 @CoCreateInstance(i32* @CLSID_CDeviceMoniker, i32* null, i32 %8, i32* @IID_IParseDisplayName, i8** %9)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @S_OK, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* %7, align 8
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load i32, i32* @CLSCTX_INPROC, align 4
  %18 = bitcast i32** %3 to i8**
  %19 = call i64 @CoCreateInstance(i32* @CLSID_FilterMapper2, i32* null, i32 %17, i32* @IID_IFilterMapper, i8** %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @S_OK, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %7, align 8
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @CLSID_TestFilter, align 4
  %28 = call i64 @IFilterMapper_RegisterFilter(i32* %26, i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_legacy_filter.nameW, i64 0, i64 0), i32 -559038737)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @VFW_E_BAD_KEY, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %0
  %33 = call i32 @win_skip(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %144

34:                                               ; preds = %0
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @S_OK, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %7, align 8
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %39)
  %41 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %42 = load i32, i32* @deviceW, align 4
  %43 = call i32 @lstrcpyW(i8* %41, i32 %42)
  %44 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %45 = load i32, i32* @cmW, align 4
  %46 = call i32 @lstrcatW(i8* %44, i32 %45)
  %47 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %48 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %49 = call i32 @lstrlenW(i8* %48)
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = load i32, i32* @CHARS_IN_GUID, align 4
  %53 = call i32 @StringFromGUID2(i32* @CLSID_LegacyAmFilterCategory, i8* %51, i32 %52)
  %54 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %55 = load i32, i32* @backslashW, align 4
  %56 = call i32 @lstrcatW(i8* %54, i32 %55)
  %57 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %58 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %59 = call i32 @lstrlenW(i8* %58)
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  %62 = load i32, i32* @CHARS_IN_GUID, align 4
  %63 = call i32 @StringFromGUID2(i32* @CLSID_TestFilter, i8* %61, i32 %62)
  %64 = load i32*, i32** %1, align 8
  %65 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %66 = call i32* @check_display_name(i32* %64, i8* %65)
  store i32* %66, i32** %4, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @find_moniker(i32* @CLSID_LegacyAmFilterCategory, i32* %67)
  %69 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %70 = load i32*, i32** %4, align 8
  %71 = bitcast i32** %2 to i8**
  %72 = call i64 @IMoniker_BindToStorage(i32* %70, i32* null, i32* null, i32* @IID_IPropertyBag, i8** %71)
  store i64 %72, i64* %7, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* @S_OK, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i64, i64* %7, align 8
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 %77)
  %79 = call i32 @VariantInit(i32* %6)
  %80 = load i32*, i32** %2, align 8
  %81 = load i32, i32* @friendly_name, align 4
  %82 = call i64 @IPropertyBag_Read(i32* %80, i32 %81, i32* %6, i32* null)
  store i64 %82, i64* %7, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* @S_OK, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i64, i64* %7, align 8
  %88 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i64 %87)
  %89 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %90 = load i32, i32* @CHARS_IN_GUID, align 4
  %91 = call i32 @StringFromGUID2(i32* @CLSID_TestFilter, i8* %89, i32 %90)
  %92 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %93 = call i8* @V_BSTR(i32* %6)
  %94 = call i32 @lstrcmpW(i8* %92, i8* %93)
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %99 = call i32 @wine_dbgstr_w(i8* %98)
  %100 = call i8* @V_BSTR(i32* %6)
  %101 = call i32 @wine_dbgstr_w(i8* %100)
  %102 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %99, i32 %101)
  %103 = call i32 @VariantClear(i32* %6)
  %104 = load i32*, i32** %2, align 8
  %105 = load i32, i32* @clsidW, align 4
  %106 = call i64 @IPropertyBag_Read(i32* %104, i32 %105, i32* %6, i32* null)
  store i64 %106, i64* %7, align 8
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* @S_OK, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i64, i64* %7, align 8
  %112 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i64 %111)
  %113 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %114 = call i8* @V_BSTR(i32* %6)
  %115 = call i32 @lstrcmpW(i8* %113, i8* %114)
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %120 = call i32 @wine_dbgstr_w(i8* %119)
  %121 = call i8* @V_BSTR(i32* %6)
  %122 = call i32 @wine_dbgstr_w(i8* %121)
  %123 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %120, i32 %122)
  %124 = call i32 @VariantClear(i32* %6)
  %125 = load i32*, i32** %2, align 8
  %126 = call i32 @IPropertyBag_Release(i32* %125)
  %127 = load i32*, i32** %3, align 8
  %128 = load i32, i32* @CLSID_TestFilter, align 4
  %129 = call i64 @IFilterMapper_UnregisterFilter(i32* %127, i32 %128)
  store i64 %129, i64* %7, align 8
  %130 = load i64, i64* %7, align 8
  %131 = load i64, i64* @S_OK, align 8
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i32
  %134 = load i64, i64* %7, align 8
  %135 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i64 %134)
  %136 = load i32*, i32** %4, align 8
  %137 = call i32 @find_moniker(i32* @CLSID_LegacyAmFilterCategory, i32* %136)
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  %141 = call i32 (i32, i8*, ...) @ok(i32 %140, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %142 = load i32*, i32** %4, align 8
  %143 = call i32 @IMoniker_Release(i32* %142)
  br label %144

144:                                              ; preds = %34, %32
  %145 = load i32*, i32** %3, align 8
  %146 = call i32 @IFilterMapper_Release(i32* %145)
  %147 = load i32*, i32** %1, align 8
  %148 = call i32 @IParseDisplayName_Release(i32* %147)
  ret void
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IFilterMapper_RegisterFilter(i32*, i32, i8*, i32) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @lstrcpyW(i8*, i32) #1

declare dso_local i32 @lstrcatW(i8*, i32) #1

declare dso_local i32 @StringFromGUID2(i32*, i8*, i32) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i32* @check_display_name(i32*, i8*) #1

declare dso_local i32 @find_moniker(i32*, i32*) #1

declare dso_local i64 @IMoniker_BindToStorage(i32*, i32*, i32*, i32*, i8**) #1

declare dso_local i32 @VariantInit(i32*) #1

declare dso_local i64 @IPropertyBag_Read(i32*, i32, i32*, i32*) #1

declare dso_local i32 @lstrcmpW(i8*, i8*) #1

declare dso_local i8* @V_BSTR(i32*) #1

declare dso_local i32 @wine_dbgstr_w(i8*) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i32 @IPropertyBag_Release(i32*) #1

declare dso_local i64 @IFilterMapper_UnregisterFilter(i32*, i32) #1

declare dso_local i32 @IMoniker_Release(i32*) #1

declare dso_local i32 @IFilterMapper_Release(i32*) #1

declare dso_local i32 @IParseDisplayName_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
