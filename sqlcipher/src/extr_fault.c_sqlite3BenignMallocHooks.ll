; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_fault.c_sqlite3BenignMallocHooks.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_fault.c_sqlite3BenignMallocHooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { void (...)*, void (...)* }

@wsdHooksInit = common dso_local global i32 0, align 4
@wsdHooks = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3BenignMallocHooks(void ()* %0, void ()* %1) #0 {
  %3 = alloca void ()*, align 8
  %4 = alloca void ()*, align 8
  store void ()* %0, void ()** %3, align 8
  store void ()* %1, void ()** %4, align 8
  %5 = load i32, i32* @wsdHooksInit, align 4
  %6 = load void ()*, void ()** %3, align 8
  %7 = bitcast void ()* %6 to void (...)*
  store void (...)* %7, void (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wsdHooks, i32 0, i32 0), align 8
  %8 = load void ()*, void ()** %4, align 8
  %9 = bitcast void ()* %8 to void (...)*
  store void (...)* %9, void (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wsdHooks, i32 0, i32 1), align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
