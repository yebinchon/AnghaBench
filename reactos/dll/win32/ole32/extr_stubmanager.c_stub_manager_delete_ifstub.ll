; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_stubmanager.c_stub_manager_delete_ifstub.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_stubmanager.c_stub_manager_delete_ifstub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stub_manager = type { i32, i32 }
%struct.ifstub = type { i32, i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"m=%p, m->oid=%s, ipid=%s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stub_manager*, %struct.ifstub*)* @stub_manager_delete_ifstub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stub_manager_delete_ifstub(%struct.stub_manager* %0, %struct.ifstub* %1) #0 {
  %3 = alloca %struct.stub_manager*, align 8
  %4 = alloca %struct.ifstub*, align 8
  store %struct.stub_manager* %0, %struct.stub_manager** %3, align 8
  store %struct.ifstub* %1, %struct.ifstub** %4, align 8
  %5 = load %struct.stub_manager*, %struct.stub_manager** %3, align 8
  %6 = load %struct.stub_manager*, %struct.stub_manager** %3, align 8
  %7 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @wine_dbgstr_longlong(i32 %8)
  %10 = load %struct.ifstub*, %struct.ifstub** %4, align 8
  %11 = getelementptr inbounds %struct.ifstub, %struct.ifstub* %10, i32 0, i32 5
  %12 = call i32 @debugstr_guid(i32* %11)
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.stub_manager* %5, i32 %9, i32 %12)
  %14 = load %struct.ifstub*, %struct.ifstub** %4, align 8
  %15 = getelementptr inbounds %struct.ifstub, %struct.ifstub* %14, i32 0, i32 4
  %16 = call i32 @list_remove(i32* %15)
  %17 = load %struct.stub_manager*, %struct.stub_manager** %3, align 8
  %18 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load %struct.ifstub*, %struct.ifstub** %4, align 8
  %23 = getelementptr inbounds %struct.ifstub, %struct.ifstub* %22, i32 0, i32 3
  %24 = load i32, i32* @TRUE, align 4
  %25 = call i32 @RPC_UnregisterInterface(i32* %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %2
  %27 = load %struct.ifstub*, %struct.ifstub** %4, align 8
  %28 = getelementptr inbounds %struct.ifstub, %struct.ifstub* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.ifstub*, %struct.ifstub** %4, align 8
  %33 = getelementptr inbounds %struct.ifstub, %struct.ifstub* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @IRpcStubBuffer_Release(i64 %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.ifstub*, %struct.ifstub** %4, align 8
  %38 = getelementptr inbounds %struct.ifstub, %struct.ifstub* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @IUnknown_Release(i32 %39)
  %41 = load %struct.ifstub*, %struct.ifstub** %4, align 8
  %42 = getelementptr inbounds %struct.ifstub, %struct.ifstub* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @IRpcChannelBuffer_Release(i32 %43)
  %45 = call i32 (...) @GetProcessHeap()
  %46 = load %struct.ifstub*, %struct.ifstub** %4, align 8
  %47 = call i32 @HeapFree(i32 %45, i32 0, %struct.ifstub* %46)
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.stub_manager*, i32, i32) #1

declare dso_local i32 @wine_dbgstr_longlong(i32) #1

declare dso_local i32 @debugstr_guid(i32*) #1

declare dso_local i32 @list_remove(i32*) #1

declare dso_local i32 @RPC_UnregisterInterface(i32*, i32) #1

declare dso_local i32 @IRpcStubBuffer_Release(i64) #1

declare dso_local i32 @IUnknown_Release(i32) #1

declare dso_local i32 @IRpcChannelBuffer_Release(i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.ifstub*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
