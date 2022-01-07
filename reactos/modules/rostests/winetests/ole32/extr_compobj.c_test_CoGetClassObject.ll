; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_test_CoGetClassObject.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_test_CoGetClassObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_InternetZoneManager = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@CO_E_NOTINITIALIZED = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [77 x i8] c"CoGetClassObject should have returned CO_E_NOTINITIALIZED instead of 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"CoGetClassObject should have changed the passed in pointer to NULL, instead of %p\0A\00", align 1
@E_INVALIDARG = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [70 x i8] c"CoGetClassObject should have returned E_INVALIDARG instead of 0x%08x\0A\00", align 1
@APTTYPE_CURRENT = common dso_local global i32 0, align 4
@APTTYPEQUALIFIER_NONE = common dso_local global i32 0, align 4
@COINIT_MULTITHREADED = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32* null, align 8
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Software\\Classes\00", align 1
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"RegCreateKeyEx returned %d\0A\00", align 1
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"RegOverridePredefKey returned %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"CoGetClassObject should have returned S_OK instead of 0x%08x\0A\00", align 1
@CLSID_InProcFreeMarshaler = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@actctx_manifest = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CoGetClassObject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CoGetClassObject() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* @CLSID_InternetZoneManager, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %10 = bitcast i32** %4 to i8**
  %11 = call i32* @CoGetClassObject(i32* %8, i32 %9, i32* null, i32* @IID_IUnknown, i8** %10)
  store i32* %11, i32** %1, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = load i32*, i32** @CO_E_NOTINITIALIZED, align 8
  %14 = icmp eq i32* %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32* %16)
  %18 = load i32*, i32** %4, align 8
  %19 = icmp eq i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32* %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %25 = call i32* @CoGetClassObject(i32* %23, i32 %24, i32* null, i32* @IID_IUnknown, i8** null)
  store i32* %25, i32** %1, align 8
  %26 = load i32*, i32** %1, align 8
  %27 = load i32*, i32** @E_INVALIDARG, align 8
  %28 = icmp eq i32* %26, %27
  br i1 %28, label %36, label %29

29:                                               ; preds = %0
  %30 = load i32*, i32** %1, align 8
  %31 = load i32*, i32** @CO_E_NOTINITIALIZED, align 8
  %32 = icmp eq i32* %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @broken(i32 %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %29, %0
  %37 = phi i1 [ true, %0 ], [ %35, %29 ]
  %38 = zext i1 %37 to i32
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32* %39)
  %41 = load i32, i32* @APTTYPE_CURRENT, align 4
  %42 = load i32, i32* @APTTYPEQUALIFIER_NONE, align 4
  %43 = call i32 @test_apt_type(i32 %41, i32 %42)
  %44 = load i32, i32* @COINIT_MULTITHREADED, align 4
  %45 = call i32 @pCoInitializeEx(i32* null, i32 %44)
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %48 = bitcast i32** %4 to i8**
  %49 = call i32* @CoGetClassObject(i32* %46, i32 %47, i32* null, i32* @IID_IUnknown, i8** %48)
  store i32* %49, i32** %1, align 8
  %50 = load i32*, i32** %1, align 8
  %51 = load i32*, i32** @S_OK, align 8
  %52 = icmp eq i32* %50, %51
  br i1 %52, label %53, label %101

53:                                               ; preds = %36
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @IUnknown_Release(i32* %54)
  %56 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %57 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %58 = call i32* @RegCreateKeyExA(i32 %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 0, i32* null, i32 0, i32 %57, i32* null, i32** %6, i32* null)
  store i32* %58, i32** %7, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = icmp ne i32* %59, null
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32* %63)
  %65 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = call i32* @pRegOverridePredefKey(i32 %65, i32* %66)
  store i32* %67, i32** %7, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = icmp ne i32* %68, null
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32* %72)
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %76 = bitcast i32** %4 to i8**
  %77 = call i32* @CoGetClassObject(i32* %74, i32 %75, i32* null, i32* @IID_IUnknown, i8** %76)
  store i32* %77, i32** %1, align 8
  %78 = load i32*, i32** %1, align 8
  %79 = load i32*, i32** @S_OK, align 8
  %80 = icmp eq i32* %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i32*, i32** %1, align 8
  %83 = call i32 @ok(i32 %81, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0), i32* %82)
  %84 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %85 = call i32* @pRegOverridePredefKey(i32 %84, i32* null)
  store i32* %85, i32** %7, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = icmp ne i32* %86, null
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @ok(i32 %89, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32* %90)
  %92 = load i32*, i32** %1, align 8
  %93 = load i32*, i32** @S_OK, align 8
  %94 = icmp eq i32* %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %53
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @IUnknown_Release(i32* %96)
  br label %98

98:                                               ; preds = %95, %53
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @RegCloseKey(i32* %99)
  br label %101

101:                                              ; preds = %98, %36
  %102 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %103 = bitcast i32** %4 to i8**
  %104 = call i32* @CoGetClassObject(i32* @CLSID_InProcFreeMarshaler, i32 %102, i32* null, i32* @IID_IUnknown, i8** %103)
  store i32* %104, i32** %1, align 8
  %105 = load i32*, i32** %1, align 8
  %106 = load i32*, i32** @S_OK, align 8
  %107 = icmp eq i32* %105, %106
  %108 = zext i1 %107 to i32
  %109 = load i32*, i32** %1, align 8
  %110 = call i32 @ok(i32 %108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32* %109)
  %111 = load i32*, i32** %4, align 8
  %112 = call i32 @IUnknown_Release(i32* %111)
  %113 = load i32, i32* @actctx_manifest, align 4
  %114 = call i32 @activate_context(i32 %113, i32* %3)
  store i32 %114, i32* %2, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %101
  %117 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %118 = bitcast i32** %4 to i8**
  %119 = call i32* @CoGetClassObject(i32* @CLSID_InProcFreeMarshaler, i32 %117, i32* null, i32* @IID_IUnknown, i8** %118)
  store i32* %119, i32** %1, align 8
  %120 = load i32*, i32** %1, align 8
  %121 = load i32*, i32** @S_OK, align 8
  %122 = icmp eq i32* %120, %121
  %123 = zext i1 %122 to i32
  %124 = load i32*, i32** %1, align 8
  %125 = call i32 @ok(i32 %123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32* %124)
  %126 = load i32*, i32** %4, align 8
  %127 = call i32 @IUnknown_Release(i32* %126)
  %128 = load i32, i32* %3, align 4
  %129 = call i32 @pDeactivateActCtx(i32 0, i32 %128)
  %130 = load i32, i32* %2, align 4
  %131 = call i32 @pReleaseActCtx(i32 %130)
  br label %132

132:                                              ; preds = %116, %101
  %133 = call i32 (...) @CoUninitialize()
  ret void
}

declare dso_local i32* @CoGetClassObject(i32*, i32, i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i32*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @test_apt_type(i32, i32) #1

declare dso_local i32 @pCoInitializeEx(i32*, i32) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32* @RegCreateKeyExA(i32, i8*, i32, i32*, i32, i32, i32*, i32**, i32*) #1

declare dso_local i32* @pRegOverridePredefKey(i32, i32*) #1

declare dso_local i32 @RegCloseKey(i32*) #1

declare dso_local i32 @activate_context(i32, i32*) #1

declare dso_local i32 @pDeactivateActCtx(i32, i32) #1

declare dso_local i32 @pReleaseActCtx(i32) #1

declare dso_local i32 @CoUninitialize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
