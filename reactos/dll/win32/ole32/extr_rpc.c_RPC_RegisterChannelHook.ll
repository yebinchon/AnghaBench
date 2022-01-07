; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_rpc.c_RPC_RegisterChannelHook.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_rpc.c_RPC_RegisterChannelHook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_hook_entry = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"(%s, %p)\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@csChannelHook = common dso_local global i32 0, align 4
@channel_hooks = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RPC_RegisterChannelHook(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.channel_hook_entry*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @debugstr_guid(i32* %7)
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %8, i32* %9)
  %11 = call i32 (...) @GetProcessHeap()
  %12 = call %struct.channel_hook_entry* @HeapAlloc(i32 %11, i32 0, i32 24)
  store %struct.channel_hook_entry* %12, %struct.channel_hook_entry** %6, align 8
  %13 = load %struct.channel_hook_entry*, %struct.channel_hook_entry** %6, align 8
  %14 = icmp ne %struct.channel_hook_entry* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %16, i32* %3, align 4
  br label %33

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.channel_hook_entry*, %struct.channel_hook_entry** %6, align 8
  %21 = getelementptr inbounds %struct.channel_hook_entry, %struct.channel_hook_entry* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.channel_hook_entry*, %struct.channel_hook_entry** %6, align 8
  %24 = getelementptr inbounds %struct.channel_hook_entry, %struct.channel_hook_entry* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @IChannelHook_AddRef(i32* %25)
  %27 = call i32 @EnterCriticalSection(i32* @csChannelHook)
  %28 = load %struct.channel_hook_entry*, %struct.channel_hook_entry** %6, align 8
  %29 = getelementptr inbounds %struct.channel_hook_entry, %struct.channel_hook_entry* %28, i32 0, i32 0
  %30 = call i32 @list_add_tail(i32* @channel_hooks, i32* %29)
  %31 = call i32 @LeaveCriticalSection(i32* @csChannelHook)
  %32 = load i32, i32* @S_OK, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %17, %15
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @TRACE(i8*, i32, i32*) #1

declare dso_local i32 @debugstr_guid(i32*) #1

declare dso_local %struct.channel_hook_entry* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @IChannelHook_AddRef(i32*) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
