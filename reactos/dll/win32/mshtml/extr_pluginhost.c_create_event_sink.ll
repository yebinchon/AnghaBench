; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_pluginhost.c_create_event_sink.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_pluginhost.c_create_event_sink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_10__, i32*, i32, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"guid %s typekind %d\0A\00", align 1
@TKIND_INTERFACE = common dso_local global i64 0, align 8
@TKIND_DISPATCH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid typekind %d\0A\00", align 1
@IID_IConnectionPointContainer = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Could not get IConnectionPointContainer iface: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Could not find %s connection point\0A\00", align 1
@PHCPDispatchVtbl = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"Advise failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_12__*, i32*)* @create_event_sink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @create_event_sink(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @ITypeInfo_GetTypeAttr(i32* %13, %struct.TYPE_11__** %9)
  store i64 %14, i64* %12, align 8
  %15 = load i64, i64* %12, align 8
  %16 = call i64 @FAILED(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %112

19:                                               ; preds = %2
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %11, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %28 = call i32 @ITypeInfo_ReleaseTypeAttr(i32* %26, %struct.TYPE_11__* %27)
  %29 = call i64 @debugstr_guid(i32* %11)
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %29, i64 %30)
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @TKIND_INTERFACE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %19
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* @TKIND_DISPATCH, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @WARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %112

42:                                               ; preds = %35, %19
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = bitcast i32** %6 to i8**
  %47 = call i64 @IUnknown_QueryInterface(i32 %45, i32* @IID_IConnectionPointContainer, i8** %46)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = call i64 @FAILED(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i64, i64* %12, align 8
  %53 = call i32 @WARN(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %52)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %112

54:                                               ; preds = %42
  %55 = load i32*, i32** %6, align 8
  %56 = call i64 @IConnectionPointContainer_FindConnectionPoint(i32* %55, i32* %11, i32** %8)
  store i64 %56, i64* %12, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @IConnectionPointContainer_Release(i32* %57)
  %59 = load i64, i64* %12, align 8
  %60 = call i64 @FAILED(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = call i64 @debugstr_guid(i32* %11)
  %64 = call i32 @WARN(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %63)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %112

65:                                               ; preds = %54
  %66 = call %struct.TYPE_13__* @heap_alloc_zero(i32 48)
  store %struct.TYPE_13__* %66, %struct.TYPE_13__** %7, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %68 = icmp ne %struct.TYPE_13__* %67, null
  br i1 %68, label %69, label %99

69:                                               ; preds = %65
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  store i32* @PHCPDispatchVtbl, i32** %72, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 6
  store %struct.TYPE_12__* %75, %struct.TYPE_12__** %77, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* @TKIND_DISPATCH, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @ITypeInfo_AddRef(i32* %87)
  %89 = load i32*, i32** %5, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 4
  store i32* %89, i32** %91, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 3
  %95 = bitcast %struct.TYPE_10__* %94 to i32*
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 2
  %98 = call i64 @IConnectionPoint_Advise(i32* %92, i32* %95, i32* %97)
  store i64 %98, i64* %12, align 8
  br label %101

99:                                               ; preds = %65
  %100 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %100, i64* %12, align 8
  br label %101

101:                                              ; preds = %99, %69
  %102 = load i32*, i32** %8, align 8
  %103 = call i32 @IConnectionPoint_Release(i32* %102)
  %104 = load i64, i64* %12, align 8
  %105 = call i64 @FAILED(i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i64, i64* %12, align 8
  %109 = call i32 @WARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %108)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %112

110:                                              ; preds = %101
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %111, %struct.TYPE_13__** %3, align 8
  br label %112

112:                                              ; preds = %110, %107, %62, %51, %39, %18
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %113
}

declare dso_local i64 @ITypeInfo_GetTypeAttr(i32*, %struct.TYPE_11__**) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @ITypeInfo_ReleaseTypeAttr(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @TRACE(i8*, i64, i64) #1

declare dso_local i64 @debugstr_guid(i32*) #1

declare dso_local i32 @WARN(i8*, i64) #1

declare dso_local i64 @IUnknown_QueryInterface(i32, i32*, i8**) #1

declare dso_local i64 @IConnectionPointContainer_FindConnectionPoint(i32*, i32*, i32**) #1

declare dso_local i32 @IConnectionPointContainer_Release(i32*) #1

declare dso_local %struct.TYPE_13__* @heap_alloc_zero(i32) #1

declare dso_local i32 @ITypeInfo_AddRef(i32*) #1

declare dso_local i64 @IConnectionPoint_Advise(i32*, i32*, i32*) #1

declare dso_local i32 @IConnectionPoint_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
