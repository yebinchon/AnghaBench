; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_rofi-icon-fetcher.c_rofi_icon_fetcher_destroy.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_rofi-icon-fetcher.c_rofi_icon_fetcher_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@rofi_icon_fetcher_data = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rofi_icon_fetcher_destroy() #0 {
  %1 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rofi_icon_fetcher_data, align 8
  %2 = icmp eq %struct.TYPE_3__* %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %19

4:                                                ; preds = %0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rofi_icon_fetcher_data, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @nk_xdg_theme_context_free(i32 %7)
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rofi_icon_fetcher_data, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @g_hash_table_unref(i32 %11)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rofi_icon_fetcher_data, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @g_hash_table_unref(i32 %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rofi_icon_fetcher_data, align 8
  %18 = call i32 @g_free(%struct.TYPE_3__* %17)
  br label %19

19:                                               ; preds = %4, %3
  ret void
}

declare dso_local i32 @nk_xdg_theme_context_free(i32) #1

declare dso_local i32 @g_hash_table_unref(i32) #1

declare dso_local i32 @g_free(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
