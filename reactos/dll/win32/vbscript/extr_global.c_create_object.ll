; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_create_object.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_create_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.CONFIRMSAFETY = type { i64, i32*, i64 }

@.str = private unnamed_addr constant [9 x i8] c"GUID %s\0A\00", align 1
@INTERFACE_USES_SECURITY_MANAGER = common dso_local global i32 0, align 4
@URLACTION_ACTIVEX_RUN = common dso_local global i32 0, align 4
@URLPOLICY_ALLOW = common dso_local global i64 0, align 8
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@CLSCTX_LOCAL_SERVER = common dso_local global i32 0, align 4
@IID_IClassFactory = common dso_local global i32 0, align 4
@IID_IClassFactoryEx = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Use IClassFactoryEx\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@GUID_CUSTOM_CONFIRMOBJECTSAFETY = common dso_local global i32 0, align 4
@URLPOLICY_DISALLOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i32*)* @create_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_object(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.CONFIRMSAFETY, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @CLSIDFromProgID(i32* %16, i64* %14)
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %15, align 4
  %19 = call i64 @FAILED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %133

22:                                               ; preds = %2
  %23 = call i32 @debugstr_guid(i64* %14)
  %24 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @INTERFACE_USES_SECURITY_MANAGER, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %22
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = call i32* @get_sec_mgr(%struct.TYPE_5__* %32)
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32* null, i32** %3, align 8
  br label %133

37:                                               ; preds = %31
  store i64 0, i64* %13, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* @URLACTION_ACTIVEX_RUN, align 4
  %40 = bitcast i64* %13 to i32*
  %41 = bitcast i64* %14 to i32*
  %42 = call i32 @IInternetHostSecurityManager_ProcessUrlAction(i32* %38, i32 %39, i32* %40, i32 8, i32* %41, i32 8, i32 0, i32 0)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = call i64 @FAILED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %37
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* @URLPOLICY_ALLOW, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %37
  store i32* null, i32** %3, align 8
  br label %133

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %22
  %53 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %54 = load i32, i32* @CLSCTX_LOCAL_SERVER, align 4
  %55 = or i32 %53, %54
  %56 = bitcast i32** %9 to i8**
  %57 = call i32 @CoGetClassObject(i64* %14, i32 %55, i32* null, i32* @IID_IClassFactory, i8** %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = call i64 @FAILED(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  store i32* null, i32** %3, align 8
  br label %133

62:                                               ; preds = %52
  %63 = load i32*, i32** %9, align 8
  %64 = bitcast i32** %8 to i8**
  %65 = call i32 @IClassFactory_QueryInterface(i32* %63, i32* @IID_IClassFactoryEx, i8** %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = call i64 @SUCCEEDED(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = call i32 @FIXME(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @IClassFactoryEx_Release(i32* %71)
  br label %73

73:                                               ; preds = %69, %62
  %74 = load i32*, i32** %9, align 8
  %75 = bitcast i32** %12 to i8**
  %76 = call i32 @IClassFactory_CreateInstance(i32* %74, i32* null, i32* @IID_IUnknown, i8** %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = call i64 @FAILED(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  store i32* null, i32** %3, align 8
  br label %133

81:                                               ; preds = %73
  %82 = load i32*, i32** %6, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %121

84:                                               ; preds = %81
  %85 = load i64, i64* %14, align 8
  %86 = getelementptr inbounds %struct.CONFIRMSAFETY, %struct.CONFIRMSAFETY* %7, i32 0, i32 2
  store i64 %85, i64* %86, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = getelementptr inbounds %struct.CONFIRMSAFETY, %struct.CONFIRMSAFETY* %7, i32 0, i32 1
  store i32* %87, i32** %88, align 8
  %89 = getelementptr inbounds %struct.CONFIRMSAFETY, %struct.CONFIRMSAFETY* %7, i32 0, i32 0
  store i64 0, i64* %89, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = bitcast %struct.CONFIRMSAFETY* %7 to i32*
  %92 = call i32 @IInternetHostSecurityManager_QueryCustomPolicy(i32* %90, i32* @GUID_CUSTOM_CONFIRMOBJECTSAFETY, i32** %11, i64* %10, i32* %91, i32 24, i32 0)
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %15, align 4
  %94 = call i64 @SUCCEEDED(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %84
  %97 = load i64, i64* %10, align 8
  %98 = icmp uge i64 %97, 8
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i32*, i32** %11, align 8
  %101 = bitcast i32* %100 to i64*
  %102 = load i64, i64* %101, align 8
  br label %105

103:                                              ; preds = %96
  %104 = load i64, i64* @URLPOLICY_DISALLOW, align 8
  br label %105

105:                                              ; preds = %103, %99
  %106 = phi i64 [ %102, %99 ], [ %104, %103 ]
  store i64 %106, i64* %13, align 8
  %107 = load i32*, i32** %11, align 8
  %108 = call i32 @CoTaskMemFree(i32* %107)
  br label %109

109:                                              ; preds = %105, %84
  %110 = load i32, i32* %15, align 4
  %111 = call i64 @FAILED(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load i64, i64* %13, align 8
  %115 = load i64, i64* @URLPOLICY_ALLOW, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %113, %109
  %118 = load i32*, i32** %12, align 8
  %119 = call i32 @IUnknown_Release(i32* %118)
  store i32* null, i32** %3, align 8
  br label %133

120:                                              ; preds = %113
  br label %121

121:                                              ; preds = %120, %81
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %123 = load i32*, i32** %12, align 8
  %124 = call i32 @set_object_site(%struct.TYPE_5__* %122, i32* %123)
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %15, align 4
  %126 = call i64 @FAILED(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load i32*, i32** %12, align 8
  %130 = call i32 @IUnknown_Release(i32* %129)
  store i32* null, i32** %3, align 8
  br label %133

131:                                              ; preds = %121
  %132 = load i32*, i32** %12, align 8
  store i32* %132, i32** %3, align 8
  br label %133

133:                                              ; preds = %131, %128, %117, %80, %61, %50, %36, %21
  %134 = load i32*, i32** %3, align 8
  ret i32* %134
}

declare dso_local i32 @CLSIDFromProgID(i32*, i64*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_guid(i64*) #1

declare dso_local i32* @get_sec_mgr(%struct.TYPE_5__*) #1

declare dso_local i32 @IInternetHostSecurityManager_ProcessUrlAction(i32*, i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @CoGetClassObject(i64*, i32, i32*, i32*, i8**) #1

declare dso_local i32 @IClassFactory_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @IClassFactoryEx_Release(i32*) #1

declare dso_local i32 @IClassFactory_CreateInstance(i32*, i32*, i32*, i8**) #1

declare dso_local i32 @IInternetHostSecurityManager_QueryCustomPolicy(i32*, i32*, i32**, i64*, i32*, i32, i32) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @set_object_site(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
