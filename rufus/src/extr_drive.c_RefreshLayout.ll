; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_drive.c_RefreshLayout.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_drive.c_RefreshLayout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i32] [i32 92, i32 92, i32 63, i32 92, i32 80, i32 104, i32 121, i32 115, i32 105, i32 99, i32 97, i32 108, i32 68, i32 114, i32 105, i32 118, i32 101, i32 37, i32 108, i32 117, i32 0], align 4
@COINIT_APARTMENTTHREADED = common dso_local global i32 0, align 4
@RPC_C_AUTHN_LEVEL_CONNECT = common dso_local global i32 0, align 4
@RPC_C_IMP_LEVEL_IMPERSONATE = common dso_local global i32 0, align 4
@CLSID_VdsLoader = common dso_local global i32 0, align 4
@CLSCTX_LOCAL_SERVER = common dso_local global i32 0, align 4
@CLSCTX_REMOTE_SERVER = common dso_local global i32 0, align 4
@IID_IVdsServiceLoader = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Could not create VDS Loader Instance: %s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Could not load VDS Service: %s\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"VDS Service is not ready: %s\00", align 1
@VDS_QUERY_SOFTWARE_PROVIDERS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Could not query VDS Service Providers: %s\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Could not clean up VDS mountpoints: %s\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Could not refresh VDS layout: %s\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RefreshLayout(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca [24 x i32], align 16
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @CheckDriveIndex(i32 %10)
  %12 = getelementptr inbounds [24 x i32], [24 x i32]* %5, i64 0, i64 0
  %13 = getelementptr inbounds [24 x i32], [24 x i32]* %5, i64 0, i64 0
  %14 = call i32 @ARRAYSIZE(i32* %13)
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @wnsprintf(i32* %12, i32 %14, i8* bitcast ([21 x i32]* @.str to i8*), i32 %15)
  %17 = load i32, i32* @COINIT_APARTMENTTHREADED, align 4
  %18 = call i32 @CoInitializeEx(i32* null, i32 %17)
  %19 = call i32 @IGNORE_RETVAL(i32 %18)
  %20 = load i32, i32* @RPC_C_AUTHN_LEVEL_CONNECT, align 4
  %21 = load i32, i32* @RPC_C_IMP_LEVEL_IMPERSONATE, align 4
  %22 = call i32 @CoInitializeSecurity(i32* null, i32 -1, i32* null, i32* null, i32 %20, i32 %21, i32* null, i32 0, i32* null)
  %23 = call i32 @IGNORE_RETVAL(i32 %22)
  %24 = load i32, i32* @CLSCTX_LOCAL_SERVER, align 4
  %25 = load i32, i32* @CLSCTX_REMOTE_SERVER, align 4
  %26 = or i32 %24, %25
  %27 = bitcast i32** %6 to i8**
  %28 = call i64 @CoCreateInstance(i32* @CLSID_VdsLoader, i32* null, i32 %26, i32* @IID_IVdsServiceLoader, i8** %27)
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @S_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %1
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @VDS_SET_ERROR(i64 %33)
  %35 = call i32 (...) @WindowsErrorString()
  %36 = call i32 @uprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %108

37:                                               ; preds = %1
  %38 = load i32*, i32** %6, align 8
  %39 = call i64 @IVdsServiceLoader_LoadService(i32* %38, i8* bitcast ([1 x i32]* @.str.2 to i8*), i32** %7)
  store i64 %39, i64* %4, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @IVdsServiceLoader_Release(i32* %40)
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @S_OK, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @VDS_SET_ERROR(i64 %46)
  %48 = call i32 (...) @WindowsErrorString()
  %49 = call i32 @uprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  br label %108

50:                                               ; preds = %37
  %51 = load i32*, i32** %7, align 8
  %52 = call i64 @IVdsService_WaitForServiceReady(i32* %51)
  store i64 %52, i64* %4, align 8
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @S_OK, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @VDS_SET_ERROR(i64 %57)
  %59 = call i32 (...) @WindowsErrorString()
  %60 = call i32 @uprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  br label %108

61:                                               ; preds = %50
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* @VDS_QUERY_SOFTWARE_PROVIDERS, align 4
  %64 = call i64 @IVdsService_QueryProviders(i32* %62, i32 %63, i32** %8)
  store i64 %64, i64* %4, align 8
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* @S_OK, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @VDS_SET_ERROR(i64 %69)
  %71 = call i32 (...) @WindowsErrorString()
  %72 = call i32 @uprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  br label %108

73:                                               ; preds = %61
  %74 = load i32*, i32** %7, align 8
  %75 = call i64 @IVdsService_CleanupObsoleteMountPoints(i32* %74)
  store i64 %75, i64* %4, align 8
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* @S_OK, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load i64, i64* %4, align 8
  %81 = call i32 @VDS_SET_ERROR(i64 %80)
  %82 = call i32 (...) @WindowsErrorString()
  %83 = call i32 @uprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %82)
  br label %108

84:                                               ; preds = %73
  %85 = load i32*, i32** %7, align 8
  %86 = call i64 @IVdsService_Refresh(i32* %85)
  store i64 %86, i64* %4, align 8
  %87 = load i64, i64* %4, align 8
  %88 = load i64, i64* @S_OK, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load i64, i64* %4, align 8
  %92 = call i32 @VDS_SET_ERROR(i64 %91)
  %93 = call i32 (...) @WindowsErrorString()
  %94 = call i32 @uprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %93)
  br label %108

95:                                               ; preds = %84
  %96 = load i32*, i32** %7, align 8
  %97 = call i64 @IVdsService_Reenumerate(i32* %96)
  store i64 %97, i64* %4, align 8
  %98 = load i64, i64* %4, align 8
  %99 = load i64, i64* @S_OK, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load i64, i64* %4, align 8
  %103 = call i32 @VDS_SET_ERROR(i64 %102)
  %104 = call i32 (...) @WindowsErrorString()
  %105 = call i32 @uprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %104)
  br label %108

106:                                              ; preds = %95
  %107 = load i32, i32* @TRUE, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %101, %90, %79, %68, %56, %45, %32
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @CheckDriveIndex(i32) #1

declare dso_local i32 @wnsprintf(i32*, i32, i8*, i32) #1

declare dso_local i32 @ARRAYSIZE(i32*) #1

declare dso_local i32 @IGNORE_RETVAL(i32) #1

declare dso_local i32 @CoInitializeEx(i32*, i32) #1

declare dso_local i32 @CoInitializeSecurity(i32*, i32, i32*, i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @VDS_SET_ERROR(i64) #1

declare dso_local i32 @uprintf(i8*, i32) #1

declare dso_local i32 @WindowsErrorString(...) #1

declare dso_local i64 @IVdsServiceLoader_LoadService(i32*, i8*, i32**) #1

declare dso_local i32 @IVdsServiceLoader_Release(i32*) #1

declare dso_local i64 @IVdsService_WaitForServiceReady(i32*) #1

declare dso_local i64 @IVdsService_QueryProviders(i32*, i32, i32**) #1

declare dso_local i64 @IVdsService_CleanupObsoleteMountPoints(i32*) #1

declare dso_local i64 @IVdsService_Refresh(i32*) #1

declare dso_local i64 @IVdsService_Reenumerate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
