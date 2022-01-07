; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_marshal.c_proxy_manager_construct.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_marshal.c_proxy_manager_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.proxy_manager = type { i32, i32, i32*, i32, i32*, i32, i8*, i8*, %struct.TYPE_13__*, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, i32, %struct.TYPE_14__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_14__ = type { i32*, i32, i32, i32, i32 }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ClientIdentity_Vtbl = common dso_local global i32 0, align 4
@ProxyMarshal_Vtbl = common dso_local global i32 0, align 4
@ProxyCliSec_Vtbl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"proxy_manager\00", align 1
@MSHCTX_INPROC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%p created for OXID %s, OID %s\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32, i8*, i8*, %struct.TYPE_12__*, %struct.proxy_manager**)* @proxy_manager_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proxy_manager_construct(%struct.TYPE_13__* %0, i32 %1, i8* %2, i8* %3, %struct.TYPE_12__* %4, %struct.proxy_manager** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.proxy_manager**, align 8
  %14 = alloca %struct.proxy_manager*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %12, align 8
  store %struct.proxy_manager** %5, %struct.proxy_manager*** %13, align 8
  %16 = call i32 (...) @GetProcessHeap()
  %17 = call %struct.proxy_manager* @HeapAlloc(i32 %16, i32 0, i32 128)
  store %struct.proxy_manager* %17, %struct.proxy_manager** %14, align 8
  %18 = load %struct.proxy_manager*, %struct.proxy_manager** %14, align 8
  %19 = icmp ne %struct.proxy_manager* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %21, i32* %7, align 4
  br label %149

22:                                               ; preds = %6
  %23 = load i32, i32* @FALSE, align 4
  %24 = call i32 @CreateMutexW(i32* null, i32 %23, i32* null)
  %25 = load %struct.proxy_manager*, %struct.proxy_manager** %14, align 8
  %26 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %25, i32 0, i32 14
  store i32 %24, i32* %26, align 8
  %27 = load %struct.proxy_manager*, %struct.proxy_manager** %14, align 8
  %28 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %27, i32 0, i32 14
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %22
  %32 = call i32 (...) @GetProcessHeap()
  %33 = load %struct.proxy_manager*, %struct.proxy_manager** %14, align 8
  %34 = call i32 @HeapFree(i32 %32, i32 0, %struct.proxy_manager* %33)
  %35 = call i32 (...) @GetLastError()
  %36 = call i32 @HRESULT_FROM_WIN32(i32 %35)
  store i32 %36, i32* %7, align 4
  br label %149

37:                                               ; preds = %22
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %39 = icmp ne %struct.TYPE_12__* %38, null
  br i1 %39, label %40, label %68

40:                                               ; preds = %37
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.proxy_manager*, %struct.proxy_manager** %14, align 8
  %45 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %44, i32 0, i32 15
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 4
  store i32 %43, i32* %46, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.proxy_manager*, %struct.proxy_manager** %14, align 8
  %51 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %50, i32 0, i32 15
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 3
  store i32 %49, i32* %52, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.proxy_manager*, %struct.proxy_manager** %14, align 8
  %57 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %56, i32 0, i32 15
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.proxy_manager*, %struct.proxy_manager** %14, align 8
  %63 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %62, i32 0, i32 15
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 8
  %65 = load %struct.proxy_manager*, %struct.proxy_manager** %14, align 8
  %66 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %65, i32 0, i32 15
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  store i32* null, i32** %67, align 8
  br label %86

68:                                               ; preds = %37
  %69 = load i8*, i8** %10, align 8
  %70 = load %struct.proxy_manager*, %struct.proxy_manager** %14, align 8
  %71 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %70, i32 0, i32 15
  %72 = call i32 @RPC_ResolveOxid(i8* %69, %struct.TYPE_14__* %71)
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = call i64 @FAILED(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %68
  %77 = load %struct.proxy_manager*, %struct.proxy_manager** %14, align 8
  %78 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %77, i32 0, i32 14
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @CloseHandle(i32 %79)
  %81 = call i32 (...) @GetProcessHeap()
  %82 = load %struct.proxy_manager*, %struct.proxy_manager** %14, align 8
  %83 = call i32 @HeapFree(i32 %81, i32 0, %struct.proxy_manager* %82)
  %84 = load i32, i32* %15, align 4
  store i32 %84, i32* %7, align 4
  br label %149

85:                                               ; preds = %68
  br label %86

86:                                               ; preds = %85, %40
  %87 = load %struct.proxy_manager*, %struct.proxy_manager** %14, align 8
  %88 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %87, i32 0, i32 13
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  store i32* @ClientIdentity_Vtbl, i32** %89, align 8
  %90 = load %struct.proxy_manager*, %struct.proxy_manager** %14, align 8
  %91 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %90, i32 0, i32 12
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  store i32* @ProxyMarshal_Vtbl, i32** %92, align 8
  %93 = load %struct.proxy_manager*, %struct.proxy_manager** %14, align 8
  %94 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %93, i32 0, i32 11
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  store i32* @ProxyCliSec_Vtbl, i32** %95, align 8
  %96 = load %struct.proxy_manager*, %struct.proxy_manager** %14, align 8
  %97 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %96, i32 0, i32 1
  %98 = call i32 @list_init(i32* %97)
  %99 = load %struct.proxy_manager*, %struct.proxy_manager** %14, align 8
  %100 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %99, i32 0, i32 10
  %101 = call i32 @list_init(i32* %100)
  %102 = load %struct.proxy_manager*, %struct.proxy_manager** %14, align 8
  %103 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %102, i32 0, i32 9
  %104 = call i32 @InitializeCriticalSection(i32* %103)
  %105 = load %struct.proxy_manager*, %struct.proxy_manager** %14, align 8
  %106 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %105, i32 0, i32 9
  %107 = call i32 @DEBUG_SET_CRITSEC_NAME(i32* %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %109 = load %struct.proxy_manager*, %struct.proxy_manager** %14, align 8
  %110 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %109, i32 0, i32 8
  store %struct.TYPE_13__* %108, %struct.TYPE_13__** %110, align 8
  %111 = load i8*, i8** %10, align 8
  %112 = load %struct.proxy_manager*, %struct.proxy_manager** %14, align 8
  %113 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %112, i32 0, i32 7
  store i8* %111, i8** %113, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = load %struct.proxy_manager*, %struct.proxy_manager** %14, align 8
  %116 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %115, i32 0, i32 6
  store i8* %114, i8** %116, align 8
  %117 = load %struct.proxy_manager*, %struct.proxy_manager** %14, align 8
  %118 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %117, i32 0, i32 0
  store i32 1, i32* %118, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.proxy_manager*, %struct.proxy_manager** %14, align 8
  %121 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 8
  %122 = load %struct.proxy_manager*, %struct.proxy_manager** %14, align 8
  %123 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %122, i32 0, i32 4
  store i32* null, i32** %123, align 8
  %124 = load i32, i32* @MSHCTX_INPROC, align 4
  %125 = load %struct.proxy_manager*, %struct.proxy_manager** %14, align 8
  %126 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 8
  %127 = load %struct.proxy_manager*, %struct.proxy_manager** %14, align 8
  %128 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %127, i32 0, i32 2
  store i32* null, i32** %128, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = call i32 @EnterCriticalSection(i32* %130)
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  %134 = load %struct.proxy_manager*, %struct.proxy_manager** %14, align 8
  %135 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %134, i32 0, i32 1
  %136 = call i32 @list_add_tail(i32* %133, i32* %135)
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = call i32 @LeaveCriticalSection(i32* %138)
  %140 = load %struct.proxy_manager*, %struct.proxy_manager** %14, align 8
  %141 = load i8*, i8** %10, align 8
  %142 = call i32 @wine_dbgstr_longlong(i8* %141)
  %143 = load i8*, i8** %11, align 8
  %144 = call i32 @wine_dbgstr_longlong(i8* %143)
  %145 = call i32 @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.proxy_manager* %140, i32 %142, i32 %144)
  %146 = load %struct.proxy_manager*, %struct.proxy_manager** %14, align 8
  %147 = load %struct.proxy_manager**, %struct.proxy_manager*** %13, align 8
  store %struct.proxy_manager* %146, %struct.proxy_manager** %147, align 8
  %148 = load i32, i32* @S_OK, align 4
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %86, %76, %31, %20
  %150 = load i32, i32* %7, align 4
  ret i32 %150
}

declare dso_local %struct.proxy_manager* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @CreateMutexW(i32*, i32, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.proxy_manager*) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @RPC_ResolveOxid(i8*, %struct.TYPE_14__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @InitializeCriticalSection(i32*) #1

declare dso_local i32 @DEBUG_SET_CRITSEC_NAME(i32*, i8*) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @TRACE(i8*, %struct.proxy_manager*, i32, i32) #1

declare dso_local i32 @wine_dbgstr_longlong(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
