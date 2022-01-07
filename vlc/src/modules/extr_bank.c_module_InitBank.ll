; ModuleID = '/home/carl/AnghaBench/vlc/src/modules/extr_bank.c_module_InitBank.c'
source_filename = "/home/carl/AnghaBench/vlc/src/modules/extr_bank.c_module_InitBank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@modules = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@vlc_entry__core = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @module_InitBank() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 @vlc_mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modules, i32 0, i32 1))
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modules, i32 0, i32 0), align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %0
  %6 = load i32, i32* @vlc_entry__core, align 4
  %7 = call i32* @module_InitStatic(i32 %6)
  store i32* %7, i32** %1, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i64 @likely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %5
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @vlc_plugin_store(i32* %14)
  br label %16

16:                                               ; preds = %13, %5
  %17 = call i32 (...) @config_SortConfig()
  br label %18

18:                                               ; preds = %16, %0
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modules, i32 0, i32 0), align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modules, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32* @module_InitStatic(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @vlc_plugin_store(i32*) #1

declare dso_local i32 @config_SortConfig(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
