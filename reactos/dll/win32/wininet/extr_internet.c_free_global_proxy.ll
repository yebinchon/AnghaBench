; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_internet.c_free_global_proxy.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_internet.c_free_global_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WININET_cs = common dso_local global i32 0, align 4
@global_proxy = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @free_global_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_global_proxy() #0 {
  %1 = call i32 @EnterCriticalSection(i32* @WININET_cs)
  %2 = load i64, i64* @global_proxy, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load i64, i64* @global_proxy, align 8
  %6 = call i32 @FreeProxyInfo(i64 %5)
  %7 = load i64, i64* @global_proxy, align 8
  %8 = call i32 @heap_free(i64 %7)
  br label %9

9:                                                ; preds = %4, %0
  %10 = call i32 @LeaveCriticalSection(i32* @WININET_cs)
  ret void
}

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @FreeProxyInfo(i64) #1

declare dso_local i32 @heap_free(i64) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
