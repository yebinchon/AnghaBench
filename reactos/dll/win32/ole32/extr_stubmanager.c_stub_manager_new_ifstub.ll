; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_stubmanager.c_stub_manager_new_ifstub.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_stubmanager.c_stub_manager_new_ifstub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifstub = type { i32, i32, i32, i32, i32*, i32, i32 }
%struct.stub_manager = type { i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"oid=%s, stubbuffer=%p, iid=%s, dest_context=%x\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@MSHLFLAGSP_REMUNKNOWN = common dso_local global i32 0, align 4
@MSHLFLAGS_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"ifstub %p created with ipid %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ifstub* @stub_manager_new_ifstub(%struct.stub_manager* %0, i32* %1, i32* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.ifstub*, align 8
  %8 = alloca %struct.stub_manager*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ifstub*, align 8
  %15 = alloca i64, align 8
  store %struct.stub_manager* %0, %struct.stub_manager** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.stub_manager*, %struct.stub_manager** %8, align 8
  %17 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @wine_dbgstr_longlong(i32 %18)
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to %struct.ifstub*
  %22 = load i32*, i32** %9, align 8
  %23 = ptrtoint i32* %22 to i32
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @debugstr_guid(i32* %24)
  %26 = load i32, i32* %11, align 4
  %27 = call i32 (i8*, %struct.ifstub*, i32, ...) @TRACE(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), %struct.ifstub* %21, i32 %23, i32 %25, i32 %26)
  %28 = call i32 (...) @GetProcessHeap()
  %29 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %30 = call %struct.ifstub* @HeapAlloc(i32 %28, i32 %29, i32 32)
  store %struct.ifstub* %30, %struct.ifstub** %14, align 8
  %31 = load %struct.ifstub*, %struct.ifstub** %14, align 8
  %32 = icmp ne %struct.ifstub* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %6
  store %struct.ifstub* null, %struct.ifstub** %7, align 8
  br label %128

34:                                               ; preds = %6
  %35 = load %struct.stub_manager*, %struct.stub_manager** %8, align 8
  %36 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = load %struct.ifstub*, %struct.ifstub** %14, align 8
  %40 = getelementptr inbounds %struct.ifstub, %struct.ifstub* %39, i32 0, i32 5
  %41 = bitcast i32* %40 to i8**
  %42 = call i64 @IUnknown_QueryInterface(i32 %37, i32* %38, i8** %41)
  store i64 %42, i64* %15, align 8
  %43 = load i64, i64* %15, align 8
  %44 = load i64, i64* @S_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %34
  %47 = call i32 (...) @GetProcessHeap()
  %48 = load %struct.ifstub*, %struct.ifstub** %14, align 8
  %49 = call i32 @HeapFree(i32 %47, i32 0, %struct.ifstub* %48)
  store %struct.ifstub* null, %struct.ifstub** %7, align 8
  br label %128

50:                                               ; preds = %34
  %51 = load i32, i32* %11, align 4
  %52 = load i8*, i8** %12, align 8
  %53 = load %struct.ifstub*, %struct.ifstub** %14, align 8
  %54 = getelementptr inbounds %struct.ifstub, %struct.ifstub* %53, i32 0, i32 6
  %55 = call i64 @RPC_CreateServerChannel(i32 %51, i8* %52, i32* %54)
  store i64 %55, i64* %15, align 8
  %56 = load i64, i64* %15, align 8
  %57 = load i64, i64* @S_OK, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %50
  %60 = load %struct.ifstub*, %struct.ifstub** %14, align 8
  %61 = getelementptr inbounds %struct.ifstub, %struct.ifstub* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @IUnknown_Release(i32 %62)
  %64 = call i32 (...) @GetProcessHeap()
  %65 = load %struct.ifstub*, %struct.ifstub** %14, align 8
  %66 = call i32 @HeapFree(i32 %64, i32 0, %struct.ifstub* %65)
  store %struct.ifstub* null, %struct.ifstub** %7, align 8
  br label %128

67:                                               ; preds = %50
  %68 = load i32*, i32** %9, align 8
  %69 = load %struct.ifstub*, %struct.ifstub** %14, align 8
  %70 = getelementptr inbounds %struct.ifstub, %struct.ifstub* %69, i32 0, i32 4
  store i32* %68, i32** %70, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @IRpcStubBuffer_AddRef(i32* %74)
  br label %76

76:                                               ; preds = %73, %67
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.ifstub*, %struct.ifstub** %14, align 8
  %79 = getelementptr inbounds %struct.ifstub, %struct.ifstub* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ifstub*, %struct.ifstub** %14, align 8
  %83 = getelementptr inbounds %struct.ifstub, %struct.ifstub* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* @MSHLFLAGSP_REMUNKNOWN, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %76
  %89 = load %struct.stub_manager*, %struct.stub_manager** %8, align 8
  %90 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ifstub*, %struct.ifstub** %14, align 8
  %94 = getelementptr inbounds %struct.ifstub, %struct.ifstub* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  br label %100

95:                                               ; preds = %76
  %96 = load %struct.stub_manager*, %struct.stub_manager** %8, align 8
  %97 = load %struct.ifstub*, %struct.ifstub** %14, align 8
  %98 = getelementptr inbounds %struct.ifstub, %struct.ifstub* %97, i32 0, i32 1
  %99 = call i32 @generate_ipid(%struct.stub_manager* %96, i32* %98)
  br label %100

100:                                              ; preds = %95, %88
  %101 = load %struct.stub_manager*, %struct.stub_manager** %8, align 8
  %102 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %101, i32 0, i32 0
  %103 = call i32 @EnterCriticalSection(i32* %102)
  %104 = load %struct.stub_manager*, %struct.stub_manager** %8, align 8
  %105 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %104, i32 0, i32 2
  %106 = load %struct.ifstub*, %struct.ifstub** %14, align 8
  %107 = getelementptr inbounds %struct.ifstub, %struct.ifstub* %106, i32 0, i32 2
  %108 = call i32 @list_add_head(i32* %105, i32* %107)
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @MSHLFLAGS_NORMAL, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %100
  %114 = load %struct.stub_manager*, %struct.stub_manager** %8, align 8
  %115 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %113, %100
  %119 = load %struct.stub_manager*, %struct.stub_manager** %8, align 8
  %120 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %119, i32 0, i32 0
  %121 = call i32 @LeaveCriticalSection(i32* %120)
  %122 = load %struct.ifstub*, %struct.ifstub** %14, align 8
  %123 = load %struct.ifstub*, %struct.ifstub** %14, align 8
  %124 = getelementptr inbounds %struct.ifstub, %struct.ifstub* %123, i32 0, i32 1
  %125 = call i32 @debugstr_guid(i32* %124)
  %126 = call i32 (i8*, %struct.ifstub*, i32, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.ifstub* %122, i32 %125)
  %127 = load %struct.ifstub*, %struct.ifstub** %14, align 8
  store %struct.ifstub* %127, %struct.ifstub** %7, align 8
  br label %128

128:                                              ; preds = %118, %59, %46, %33
  %129 = load %struct.ifstub*, %struct.ifstub** %7, align 8
  ret %struct.ifstub* %129
}

declare dso_local i32 @TRACE(i8*, %struct.ifstub*, i32, ...) #1

declare dso_local i32 @wine_dbgstr_longlong(i32) #1

declare dso_local i32 @debugstr_guid(i32*) #1

declare dso_local %struct.ifstub* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @IUnknown_QueryInterface(i32, i32*, i8**) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.ifstub*) #1

declare dso_local i64 @RPC_CreateServerChannel(i32, i8*, i32*) #1

declare dso_local i32 @IUnknown_Release(i32) #1

declare dso_local i32 @IRpcStubBuffer_AddRef(i32*) #1

declare dso_local i32 @generate_ipid(%struct.stub_manager*, i32*) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @list_add_head(i32*, i32*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
