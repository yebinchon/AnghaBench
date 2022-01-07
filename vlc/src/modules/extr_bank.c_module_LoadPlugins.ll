; ModuleID = '/home/carl/AnghaBench/vlc/src/modules/extr_bank.c_module_LoadPlugins.c'
source_filename = "/home/carl/AnghaBench/vlc/src/modules/extr_bank.c_module_LoadPlugins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@modules = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@vlc_modcap_sort = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"plug-ins loaded: %zu modules\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @module_LoadPlugins(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32**, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modules, i32 0, i32 0), align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = call i32 (...) @module_InitStaticModules()
  %9 = call i32 (...) @config_UnsortConfig()
  %10 = call i32 (...) @config_SortConfig()
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modules, i32 0, i32 2), align 4
  %12 = load i32, i32* @vlc_modcap_sort, align 4
  %13 = call i32 @twalk(i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %7, %1
  %15 = call i32 @vlc_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modules, i32 0, i32 1))
  %16 = call i32** @module_list_get(i64* %3)
  store i32** %16, i32*** %4, align 8
  %17 = load i32**, i32*** %4, align 8
  %18 = call i32 @module_list_free(i32** %17)
  %19 = load i32*, i32** %2, align 8
  %20 = load i64, i64* %3, align 8
  %21 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %20)
  ret void
}

declare dso_local i32 @module_InitStaticModules(...) #1

declare dso_local i32 @config_UnsortConfig(...) #1

declare dso_local i32 @config_SortConfig(...) #1

declare dso_local i32 @twalk(i32, i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32** @module_list_get(i64*) #1

declare dso_local i32 @module_list_free(i32**) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
