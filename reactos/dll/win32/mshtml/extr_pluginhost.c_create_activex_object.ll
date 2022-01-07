; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_pluginhost.c_create_activex_object.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_pluginhost.c_create_activex_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Could not determine element CLSID\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"clsid %s\0A\00", align 1
@URLACTION_ACTIVEX_RUN = common dso_local global i32 0, align 4
@URLPOLICY_ALLOW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"ProcessUrlAction returned %08x %x\0A\00", align 1
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@CLSCTX_LOCAL_SERVER = common dso_local global i32 0, align 4
@IID_IClassFactory = common dso_local global i32 0, align 4
@REGDB_E_CLASSNOTREG = common dso_local global i64 0, align 8
@IID_IClassFactoryEx = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Use IClassFactoryEx\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i32*, i32*)* @create_activex_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_activex_object(%struct.TYPE_3__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @get_elem_clsid(i32* %13, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %84

19:                                               ; preds = %3
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @debugstr_guid(i32* %20)
  %22 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  store i64 0, i64* %11, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* @URLACTION_ACTIVEX_RUN, align 4
  %26 = bitcast i64* %11 to i32*
  %27 = load i32*, i32** %7, align 8
  %28 = call i64 @IInternetHostSecurityManager_ProcessUrlAction(i32* %24, i32 %25, i32* %26, i32 8, i32* %27, i32 4, i32 0, i32 0)
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = call i64 @FAILED(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %19
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @URLPOLICY_ALLOW, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32, %19
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %37, i64 %38)
  store i32* null, i32** %4, align 8
  br label %84

40:                                               ; preds = %32
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %43 = load i32, i32* @CLSCTX_LOCAL_SERVER, align 4
  %44 = or i32 %42, %43
  %45 = bitcast i32** %9 to i8**
  %46 = call i64 @CoGetClassObject(i32* %41, i32 %44, i32* null, i32* @IID_IClassFactory, i8** %45)
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* @REGDB_E_CLASSNOTREG, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %40
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @check_codebase(i32 %53, i32* %54)
  br label %56

56:                                               ; preds = %50, %40
  %57 = load i64, i64* %12, align 8
  %58 = call i64 @FAILED(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32* null, i32** %4, align 8
  br label %84

61:                                               ; preds = %56
  %62 = load i32*, i32** %9, align 8
  %63 = bitcast i32** %8 to i8**
  %64 = call i64 @IClassFactory_QueryInterface(i32* %62, i32* @IID_IClassFactoryEx, i8** %63)
  store i64 %64, i64* %12, align 8
  %65 = load i64, i64* %12, align 8
  %66 = call i64 @SUCCEEDED(i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = call i32 @FIXME(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @IClassFactoryEx_Release(i32* %70)
  br label %72

72:                                               ; preds = %68, %61
  %73 = load i32*, i32** %9, align 8
  %74 = bitcast i32** %10 to i8**
  %75 = call i64 @IClassFactory_CreateInstance(i32* %73, i32* null, i32* @IID_IUnknown, i8** %74)
  store i64 %75, i64* %12, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @IClassFactory_Release(i32* %76)
  %78 = load i64, i64* %12, align 8
  %79 = call i64 @FAILED(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  store i32* null, i32** %4, align 8
  br label %84

82:                                               ; preds = %72
  %83 = load i32*, i32** %10, align 8
  store i32* %83, i32** %4, align 8
  br label %84

84:                                               ; preds = %82, %81, %60, %36, %17
  %85 = load i32*, i32** %4, align 8
  ret i32* %85
}

declare dso_local i32 @get_elem_clsid(i32*, i32*) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_guid(i32*) #1

declare dso_local i64 @IInternetHostSecurityManager_ProcessUrlAction(i32*, i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @CoGetClassObject(i32*, i32, i32*, i32*, i8**) #1

declare dso_local i32 @check_codebase(i32, i32*) #1

declare dso_local i64 @IClassFactory_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @IClassFactoryEx_Release(i32*) #1

declare dso_local i64 @IClassFactory_CreateInstance(i32*, i32*, i32*, i8**) #1

declare dso_local i32 @IClassFactory_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
