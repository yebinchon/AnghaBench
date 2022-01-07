; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/devenum/extr_devenum.c_test_devenum.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/devenum/extr_devenum.c_test_devenum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_SystemDeviceEnum = common dso_local global i32 0, align 4
@CLSCTX_INPROC = common dso_local global i32 0, align 4
@IID_ICreateDevEnum = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Failed to create devenum: %#x\0A\00", align 1
@CLSID_ActiveMovieCategories = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to enum categories: %#x\0A\00", align 1
@IID_IPropertyBag = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"IMoniker_BindToStorage failed: %#x\0A\00", align 1
@clsidW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to read CLSID: %#x\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"got %#x\0A\00", align 1
@friendly_name = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to read FriendlyName: %#x\0A\00", align 1
@winetest_debug = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"%s %s:\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Failed to enum devices: %#x\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [38 x i8] c"IMoniker_GetClassID should failed %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"IMoniker_GetClassID failed with error %x\0A\00", align 1
@CLSID_CDeviceMoniker = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [38 x i8] c"Expected CLSID_CDeviceMoniker got %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"IMoniker_BindToStorage failed with error %x\0A\00", align 1
@ERROR_KEY_DOES_NOT_EXIST = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [31 x i8] c"IPropertyBag_Read failed: %#x\0A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"  %s %s\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@E_POINTER = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [71 x i8] c"CreateClassEnumerator() returned S_OK but no devices were enumerated.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_devenum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_devenum(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %14 = load i32, i32* @CLSCTX_INPROC, align 4
  %15 = bitcast i32** %5 to i8**
  %16 = call i64 @CoCreateInstance(i32* @CLSID_SystemDeviceEnum, i32* null, i32 %14, i32* @IID_ICreateDevEnum, i8** %15)
  store i64 %16, i64* %12, align 8
  %17 = load i64, i64* %12, align 8
  %18 = load i64, i64* @S_OK, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %12, align 8
  %22 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @ICreateDevEnum_CreateClassEnumerator(i32* %23, i32* @CLSID_ActiveMovieCategories, i32** %3, i32 0)
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* @S_OK, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %12, align 8
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  br label %31

31:                                               ; preds = %190, %1
  %32 = load i32*, i32** %3, align 8
  %33 = call i64 @IEnumMoniker_Next(i32* %32, i32 1, i32** %7, i32* null)
  %34 = load i64, i64* @S_OK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %191

36:                                               ; preds = %31
  %37 = load i32*, i32** %7, align 8
  %38 = load i32*, i32** %2, align 8
  %39 = bitcast i32** %6 to i8**
  %40 = call i64 @IMoniker_BindToStorage(i32* %37, i32* %38, i32* null, i32* @IID_IPropertyBag, i8** %39)
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* @S_OK, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %12, align 8
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %45)
  %47 = call i32 @VariantInit(i32* %11)
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* @clsidW, align 4
  %50 = call i64 @IPropertyBag_Read(i32* %48, i32 %49, i32* %11, i32* null)
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* @S_OK, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %12, align 8
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %55)
  %57 = call i32* @V_BSTR(i32* %11)
  %58 = call i64 @CLSIDFromString(i32* %57, i32* %8)
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* @S_OK, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i64, i64* %12, align 8
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %63)
  %65 = call i32 @VariantClear(i32* %11)
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* @friendly_name, align 4
  %68 = call i64 @IPropertyBag_Read(i32* %66, i32 %67, i32* %11, i32* null)
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* @S_OK, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i64, i64* %12, align 8
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i64 %73)
  %75 = load i32, i32* @winetest_debug, align 4
  %76 = icmp sgt i32 %75, 1
  br i1 %76, label %77, label %82

77:                                               ; preds = %36
  %78 = call i32 @wine_dbgstr_guid(i32* %8)
  %79 = call i32* @V_BSTR(i32* %11)
  %80 = call i32 @wine_dbgstr_w(i32* %79)
  %81 = call i32 @trace(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %78, i32 %80)
  br label %82

82:                                               ; preds = %77, %36
  %83 = call i32 @VariantClear(i32* %11)
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @IPropertyBag_Release(i32* %84)
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 @IMoniker_Release(i32* %86)
  %88 = load i32*, i32** %5, align 8
  %89 = call i64 @ICreateDevEnum_CreateClassEnumerator(i32* %88, i32* %8, i32** %4, i32 0)
  store i64 %89, i64* %12, align 8
  %90 = load i64, i64* %12, align 8
  %91 = call i32 @SUCCEEDED(i64 %90)
  %92 = load i64, i64* %12, align 8
  %93 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i64 %92)
  %94 = load i64, i64* %12, align 8
  %95 = load i64, i64* @S_OK, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %190

97:                                               ; preds = %82
  store i32 0, i32* %13, align 4
  br label %98

98:                                               ; preds = %164, %97
  %99 = load i32*, i32** %4, align 8
  %100 = call i64 @IEnumMoniker_Next(i32* %99, i32 1, i32** %7, i32* null)
  %101 = load i64, i64* @S_OK, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %183

103:                                              ; preds = %98
  %104 = load i32*, i32** %7, align 8
  %105 = call i64 @IMoniker_GetDisplayName(i32* %104, i32* null, i32* null, i32** %10)
  store i64 %105, i64* %12, align 8
  %106 = load i64, i64* %12, align 8
  %107 = load i64, i64* @S_OK, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = load i64, i64* %12, align 8
  %111 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %110)
  %112 = load i32*, i32** %7, align 8
  %113 = call i64 @IMoniker_GetClassID(i32* %112, i32* null)
  store i64 %113, i64* %12, align 8
  %114 = load i64, i64* %12, align 8
  %115 = load i64, i64* @E_INVALIDARG, align 8
  %116 = icmp eq i64 %114, %115
  %117 = zext i1 %116 to i32
  %118 = load i64, i64* %12, align 8
  %119 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i64 %118)
  %120 = load i32*, i32** %7, align 8
  %121 = call i64 @IMoniker_GetClassID(i32* %120, i32* %9)
  store i64 %121, i64* %12, align 8
  %122 = load i64, i64* %12, align 8
  %123 = load i64, i64* @S_OK, align 8
  %124 = icmp eq i64 %122, %123
  %125 = zext i1 %124 to i32
  %126 = load i64, i64* %12, align 8
  %127 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i64 %126)
  %128 = call i32 @IsEqualGUID(i32* %9, i32* @CLSID_CDeviceMoniker)
  %129 = call i32 @wine_dbgstr_guid(i32* %9)
  %130 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 %129)
  %131 = call i32 @VariantInit(i32* %11)
  %132 = load i32*, i32** %7, align 8
  %133 = load i32*, i32** %2, align 8
  %134 = bitcast i32** %6 to i8**
  %135 = call i64 @IMoniker_BindToStorage(i32* %132, i32* %133, i32* null, i32* @IID_IPropertyBag, i8** %134)
  store i64 %135, i64* %12, align 8
  %136 = load i64, i64* %12, align 8
  %137 = load i64, i64* @S_OK, align 8
  %138 = icmp eq i64 %136, %137
  %139 = zext i1 %138 to i32
  %140 = load i64, i64* %12, align 8
  %141 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i64 %140)
  %142 = load i32*, i32** %6, align 8
  %143 = load i32, i32* @friendly_name, align 4
  %144 = call i64 @IPropertyBag_Read(i32* %142, i32 %143, i32* %11, i32* null)
  store i64 %144, i64* %12, align 8
  %145 = load i64, i64* %12, align 8
  %146 = load i64, i64* @S_OK, align 8
  %147 = icmp eq i64 %145, %146
  %148 = zext i1 %147 to i32
  %149 = load i64, i64* %12, align 8
  %150 = load i64, i64* @ERROR_KEY_DOES_NOT_EXIST, align 8
  %151 = icmp eq i64 %149, %150
  %152 = zext i1 %151 to i32
  %153 = or i32 %148, %152
  %154 = load i64, i64* %12, align 8
  %155 = call i32 (i32, i8*, ...) @ok(i32 %153, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i64 %154)
  %156 = load i32, i32* @winetest_debug, align 4
  %157 = icmp sgt i32 %156, 1
  br i1 %157, label %158, label %164

158:                                              ; preds = %103
  %159 = load i32*, i32** %10, align 8
  %160 = call i32 @wine_dbgstr_w(i32* %159)
  %161 = call i32* @V_BSTR(i32* %11)
  %162 = call i32 @wine_dbgstr_w(i32* %161)
  %163 = call i32 @trace(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %160, i32 %162)
  br label %164

164:                                              ; preds = %158, %103
  %165 = load i32*, i32** %7, align 8
  %166 = load i32*, i32** %2, align 8
  %167 = call i64 @IMoniker_BindToObject(i32* %165, i32* %166, i32* null, i32* @IID_IUnknown, i32* null)
  store i64 %167, i64* %12, align 8
  %168 = load i64, i64* %12, align 8
  %169 = load i64, i64* @E_POINTER, align 8
  %170 = icmp eq i64 %168, %169
  %171 = zext i1 %170 to i32
  %172 = load i64, i64* %12, align 8
  %173 = call i32 (i32, i8*, ...) @ok(i32 %171, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %172)
  %174 = call i32 @VariantClear(i32* %11)
  %175 = load i32*, i32** %10, align 8
  %176 = call i32 @CoTaskMemFree(i32* %175)
  %177 = load i32*, i32** %6, align 8
  %178 = call i32 @IPropertyBag_Release(i32* %177)
  %179 = load i32*, i32** %7, align 8
  %180 = call i32 @IMoniker_Release(i32* %179)
  %181 = load i32, i32* %13, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %13, align 4
  br label %98

183:                                              ; preds = %98
  %184 = load i32*, i32** %4, align 8
  %185 = call i32 @IEnumMoniker_Release(i32* %184)
  %186 = load i32, i32* %13, align 4
  %187 = icmp sgt i32 %186, 0
  %188 = zext i1 %187 to i32
  %189 = call i32 (i32, i8*, ...) @ok(i32 %188, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.14, i64 0, i64 0))
  br label %190

190:                                              ; preds = %183, %82
  br label %31

191:                                              ; preds = %31
  %192 = load i32*, i32** %3, align 8
  %193 = call i32 @IEnumMoniker_Release(i32* %192)
  %194 = load i32*, i32** %5, align 8
  %195 = call i32 @ICreateDevEnum_Release(i32* %194)
  ret void
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @ICreateDevEnum_CreateClassEnumerator(i32*, i32*, i32**, i32) #1

declare dso_local i64 @IEnumMoniker_Next(i32*, i32, i32**, i32*) #1

declare dso_local i64 @IMoniker_BindToStorage(i32*, i32*, i32*, i32*, i8**) #1

declare dso_local i32 @VariantInit(i32*) #1

declare dso_local i64 @IPropertyBag_Read(i32*, i32, i32*, i32*) #1

declare dso_local i64 @CLSIDFromString(i32*, i32*) #1

declare dso_local i32* @V_BSTR(i32*) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i32 @trace(i8*, i32, i32) #1

declare dso_local i32 @wine_dbgstr_guid(i32*) #1

declare dso_local i32 @wine_dbgstr_w(i32*) #1

declare dso_local i32 @IPropertyBag_Release(i32*) #1

declare dso_local i32 @IMoniker_Release(i32*) #1

declare dso_local i32 @SUCCEEDED(i64) #1

declare dso_local i64 @IMoniker_GetDisplayName(i32*, i32*, i32*, i32**) #1

declare dso_local i64 @IMoniker_GetClassID(i32*, i32*) #1

declare dso_local i32 @IsEqualGUID(i32*, i32*) #1

declare dso_local i64 @IMoniker_BindToObject(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

declare dso_local i32 @IEnumMoniker_Release(i32*) #1

declare dso_local i32 @ICreateDevEnum_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
