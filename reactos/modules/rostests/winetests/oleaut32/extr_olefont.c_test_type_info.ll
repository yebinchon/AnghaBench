; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olefont.c_test_type_info.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olefont.c_test_type_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64, i32*, i64 }

@__const.test_type_info.name_Name = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@LANG_ENGLISH = common dso_local global i32 0, align 4
@SUBLANG_ENGLISH_US = common dso_local global i32 0, align 4
@SORT_DEFAULT = common dso_local global i32 0, align 4
@IID_IFontDisp = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"GTI returned 0x%08x instead of S_OK.\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GTI returned NULL.\0A\00", align 1
@DISPID_FONT_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"GetNames returned 0x%08x instead of S_OK.\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"GetNames returned %d names instead of 1.\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"DISPID_FONT_NAME doesn't get 'Names'.\0A\00", align 1
@IID_NULL = common dso_local global i32 0, align 4
@LOCALE_NEUTRAL = common dso_local global i32 0, align 4
@DISPATCH_PROPERTYGET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"IFontDisp_Invoke return 0x%08x instead of S_OK.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_type_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_type_info() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [5 x i8], align 1
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %3, align 8
  %11 = bitcast [5 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_type_info.name_Name, i32 0, i32 0), i64 5, i1 false)
  %12 = load i32, i32* @LANG_ENGLISH, align 4
  %13 = load i32, i32* @SUBLANG_ENGLISH_US, align 4
  %14 = call i32 @MAKELANGID(i32 %12, i32 %13)
  %15 = load i32, i32* @SORT_DEFAULT, align 4
  %16 = call i32 @MAKELCID(i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = call i32 @pOleCreateFontIndirect(i32* null, i32* @IID_IFontDisp, i32** %1)
  %18 = load i32*, i32** %1, align 8
  store i32* %18, i32** %3, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @IFontDisp_GetTypeInfo(i32* %19, i32 0, i32 %20, i32** %4)
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @S_OK, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %2, align 4
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @DISPID_FONT_NAME, align 4
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %35 = call i32 @ITypeInfo_GetNames(i32* %32, i32 %33, i32* %34, i32 3, i32* %7)
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @S_OK, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %2, align 4
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 1
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %7, align 4
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %50 = call i32 @lstrcmpiW(i32 %48, i8* %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @SysFreeString(i32 %56)
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @ITypeInfo_Release(i32* %58)
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  store i32* null, i32** %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32* null, i32** %63, align 8
  %64 = call i32 @VariantInit(i32* %10)
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* @DISPID_FONT_NAME, align 4
  %67 = load i32, i32* @LOCALE_NEUTRAL, align 4
  %68 = load i32, i32* @DISPATCH_PROPERTYGET, align 4
  %69 = call i32 @IFontDisp_Invoke(i32* %65, i32 %66, i32* @IID_NULL, i32 %67, i32 %68, %struct.TYPE_3__* %9, i32* %10, i32* null, i32* null)
  store i32 %69, i32* %2, align 4
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* @S_OK, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %2, align 4
  %75 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %74)
  %76 = call i32 @VariantClear(i32* %10)
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @IFontDisp_Release(i32* %77)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @MAKELCID(i32, i32) #2

declare dso_local i32 @MAKELANGID(i32, i32) #2

declare dso_local i32 @pOleCreateFontIndirect(i32*, i32*, i32**) #2

declare dso_local i32 @IFontDisp_GetTypeInfo(i32*, i32, i32, i32**) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @ITypeInfo_GetNames(i32*, i32, i32*, i32, i32*) #2

declare dso_local i32 @lstrcmpiW(i32, i8*) #2

declare dso_local i32 @SysFreeString(i32) #2

declare dso_local i32 @ITypeInfo_Release(i32*) #2

declare dso_local i32 @VariantInit(i32*) #2

declare dso_local i32 @IFontDisp_Invoke(i32*, i32, i32*, i32, i32, %struct.TYPE_3__*, i32*, i32*, i32*) #2

declare dso_local i32 @VariantClear(i32*) #2

declare dso_local i32 @IFontDisp_Release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
