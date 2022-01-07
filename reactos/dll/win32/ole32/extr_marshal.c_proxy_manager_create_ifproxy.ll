; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_marshal.c_proxy_manager_create_ifproxy.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_marshal.c_proxy_manager_create_ifproxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proxy_manager = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ifproxy = type { i32, i32*, i32*, i32*, i64, i32, %struct.TYPE_3__, %struct.proxy_manager* }

@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@IID_IUnknown = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"Could not create proxy for interface %s, error 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"Could not get IPSFactoryBuffer for interface %s, error 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"ifproxy %p created for IPID %s, interface %s with %u public refs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.proxy_manager*, %struct.TYPE_3__*, i32*, i32*, %struct.ifproxy**)* @proxy_manager_create_ifproxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @proxy_manager_create_ifproxy(%struct.proxy_manager* %0, %struct.TYPE_3__* %1, i32* %2, i32* %3, %struct.ifproxy** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.proxy_manager*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ifproxy**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ifproxy*, align 8
  store %struct.proxy_manager* %0, %struct.proxy_manager** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.ifproxy** %4, %struct.ifproxy*** %11, align 8
  %15 = call i32 (...) @GetProcessHeap()
  %16 = call %struct.ifproxy* @HeapAlloc(i32 %15, i32 0, i32 64)
  store %struct.ifproxy* %16, %struct.ifproxy** %14, align 8
  %17 = load %struct.ifproxy*, %struct.ifproxy** %14, align 8
  %18 = icmp ne %struct.ifproxy* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %5
  %20 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %20, i64* %6, align 8
  br label %136

21:                                               ; preds = %5
  %22 = load %struct.ifproxy*, %struct.ifproxy** %14, align 8
  %23 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %22, i32 0, i32 0
  %24 = call i32 @list_init(i32* %23)
  %25 = load %struct.proxy_manager*, %struct.proxy_manager** %7, align 8
  %26 = load %struct.ifproxy*, %struct.ifproxy** %14, align 8
  %27 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %26, i32 0, i32 7
  store %struct.proxy_manager* %25, %struct.proxy_manager** %27, align 8
  %28 = load %struct.ifproxy*, %struct.ifproxy** %14, align 8
  %29 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %28, i32 0, i32 6
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %31 = bitcast %struct.TYPE_3__* %29 to i8*
  %32 = bitcast %struct.TYPE_3__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 8, i1 false)
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ifproxy*, %struct.ifproxy** %14, align 8
  %36 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ifproxy*, %struct.ifproxy** %14, align 8
  %38 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %37, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = load %struct.ifproxy*, %struct.ifproxy** %14, align 8
  %40 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %39, i32 0, i32 2
  store i32* null, i32** %40, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @assert(i32* %41)
  %43 = load i32*, i32** %10, align 8
  %44 = load %struct.ifproxy*, %struct.ifproxy** %14, align 8
  %45 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %44, i32 0, i32 1
  store i32* %43, i32** %45, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i64 @IsEqualIID(i32* %46, i32* @IID_IUnknown)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %21
  %50 = load %struct.proxy_manager*, %struct.proxy_manager** %7, align 8
  %51 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %50, i32 0, i32 2
  %52 = load %struct.ifproxy*, %struct.ifproxy** %14, align 8
  %53 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %52, i32 0, i32 3
  store i32* %51, i32** %53, align 8
  %54 = load %struct.proxy_manager*, %struct.proxy_manager** %7, align 8
  %55 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %54, i32 0, i32 2
  %56 = call i32 @IMultiQI_AddRef(i32* %55)
  %57 = load i64, i64* @S_OK, align 8
  store i64 %57, i64* %12, align 8
  br label %103

58:                                               ; preds = %21
  %59 = load i32*, i32** %9, align 8
  %60 = call i64 @get_facbuf_for_iid(i32* %59, i32** %13)
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* @S_OK, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %85

64:                                               ; preds = %58
  %65 = load i32*, i32** %13, align 8
  %66 = load %struct.proxy_manager*, %struct.proxy_manager** %7, align 8
  %67 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %66, i32 0, i32 2
  %68 = load i32*, i32** %9, align 8
  %69 = load %struct.ifproxy*, %struct.ifproxy** %14, align 8
  %70 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %69, i32 0, i32 2
  %71 = load %struct.ifproxy*, %struct.ifproxy** %14, align 8
  %72 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %71, i32 0, i32 3
  %73 = call i64 @IPSFactoryBuffer_CreateProxy(i32* %65, i32* %67, i32* %68, i32** %70, i32** %72)
  store i64 %73, i64* %12, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = call i32 @IPSFactoryBuffer_Release(i32* %74)
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* @S_OK, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %64
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @debugstr_guid(i32* %80)
  %82 = load i64, i64* %12, align 8
  %83 = call i32 @ERR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %81, i64 %82)
  br label %84

84:                                               ; preds = %79, %64
  br label %90

85:                                               ; preds = %58
  %86 = load i32*, i32** %9, align 8
  %87 = call i32 @debugstr_guid(i32* %86)
  %88 = load i64, i64* %12, align 8
  %89 = call i32 @ERR(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %87, i64 %88)
  br label %90

90:                                               ; preds = %85, %84
  %91 = load i64, i64* %12, align 8
  %92 = load i64, i64* @S_OK, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = load %struct.ifproxy*, %struct.ifproxy** %14, align 8
  %96 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.ifproxy*, %struct.ifproxy** %14, align 8
  %99 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = call i64 @IRpcProxyBuffer_Connect(i32* %97, i32* %100)
  store i64 %101, i64* %12, align 8
  br label %102

102:                                              ; preds = %94, %90
  br label %103

103:                                              ; preds = %102, %49
  %104 = load i64, i64* %12, align 8
  %105 = load i64, i64* @S_OK, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %131

107:                                              ; preds = %103
  %108 = load %struct.proxy_manager*, %struct.proxy_manager** %7, align 8
  %109 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %108, i32 0, i32 0
  %110 = call i32 @EnterCriticalSection(i32* %109)
  %111 = load %struct.proxy_manager*, %struct.proxy_manager** %7, align 8
  %112 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %111, i32 0, i32 1
  %113 = load %struct.ifproxy*, %struct.ifproxy** %14, align 8
  %114 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %113, i32 0, i32 0
  %115 = call i32 @list_add_tail(i32* %112, i32* %114)
  %116 = load %struct.proxy_manager*, %struct.proxy_manager** %7, align 8
  %117 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %116, i32 0, i32 0
  %118 = call i32 @LeaveCriticalSection(i32* %117)
  %119 = load %struct.ifproxy*, %struct.ifproxy** %14, align 8
  %120 = load %struct.ifproxy**, %struct.ifproxy*** %11, align 8
  store %struct.ifproxy* %119, %struct.ifproxy** %120, align 8
  %121 = load %struct.ifproxy*, %struct.ifproxy** %14, align 8
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = call i32 @debugstr_guid(i32* %123)
  %125 = load i32*, i32** %9, align 8
  %126 = call i32 @debugstr_guid(i32* %125)
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @TRACE(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), %struct.ifproxy* %121, i32 %124, i32 %126, i32 %129)
  br label %134

131:                                              ; preds = %103
  %132 = load %struct.ifproxy*, %struct.ifproxy** %14, align 8
  %133 = call i32 @ifproxy_destroy(%struct.ifproxy* %132)
  br label %134

134:                                              ; preds = %131, %107
  %135 = load i64, i64* %12, align 8
  store i64 %135, i64* %6, align 8
  br label %136

136:                                              ; preds = %134, %19
  %137 = load i64, i64* %6, align 8
  ret i64 %137
}

declare dso_local %struct.ifproxy* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @list_init(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @assert(i32*) #1

declare dso_local i64 @IsEqualIID(i32*, i32*) #1

declare dso_local i32 @IMultiQI_AddRef(i32*) #1

declare dso_local i64 @get_facbuf_for_iid(i32*, i32**) #1

declare dso_local i64 @IPSFactoryBuffer_CreateProxy(i32*, i32*, i32*, i32**, i32**) #1

declare dso_local i32 @IPSFactoryBuffer_Release(i32*) #1

declare dso_local i32 @ERR(i8*, i32, i64) #1

declare dso_local i32 @debugstr_guid(i32*) #1

declare dso_local i64 @IRpcProxyBuffer_Connect(i32*, i32*) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @TRACE(i8*, %struct.ifproxy*, i32, i32, i32) #1

declare dso_local i32 @ifproxy_destroy(%struct.ifproxy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
