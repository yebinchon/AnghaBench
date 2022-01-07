; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_rofi.c_cleanup.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_rofi.c_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@num_modi = common dso_local global i32 0, align 4
@modi = common dso_local global i32* null, align 8
@main_loop = common dso_local global i32* null, align 8
@bindings = common dso_local global i32 0, align 4
@config_path = common dso_local global i32* null, align 8
@config_path_new = common dso_local global i32* null, align 8
@list_of_error_msgs = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@rofi_theme = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %14, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @num_modi, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = load i32*, i32** @modi, align 8
  %9 = load i32, i32* %1, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @mode_destroy(i32 %12)
  br label %14

14:                                               ; preds = %7
  %15 = load i32, i32* %1, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %1, align 4
  br label %3

17:                                               ; preds = %3
  %18 = call i32 (...) @rofi_view_workers_finalize()
  %19 = load i32*, i32** @main_loop, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32*, i32** @main_loop, align 8
  %23 = call i32 @g_main_loop_unref(i32* %22)
  store i32* null, i32** @main_loop, align 8
  br label %24

24:                                               ; preds = %21, %17
  %25 = call i32 (...) @display_cleanup()
  %26 = load i32, i32* @bindings, align 4
  %27 = call i32 @nk_bindings_free(i32 %26)
  %28 = call i32 (...) @config_xresource_free()
  %29 = load i32*, i32** @modi, align 8
  %30 = call i32 @g_free(i32* %29)
  %31 = load i32*, i32** @config_path, align 8
  %32 = call i32 @g_free(i32* %31)
  %33 = load i32*, i32** @config_path_new, align 8
  %34 = call i32 @g_free(i32* %33)
  %35 = load i64, i64* @list_of_error_msgs, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %24
  %38 = load i64, i64* @list_of_error_msgs, align 8
  %39 = call %struct.TYPE_5__* @g_list_first(i64 %38)
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %2, align 8
  br label %40

40:                                               ; preds = %50, %37
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = icmp ne %struct.TYPE_5__* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = load i32, i32* @TRUE, align 4
  %49 = call i32 @g_string_free(i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %43
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = call %struct.TYPE_5__* @g_list_next(%struct.TYPE_5__* %51)
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %2, align 8
  br label %40

53:                                               ; preds = %40
  %54 = load i64, i64* @list_of_error_msgs, align 8
  %55 = call i32 @g_list_free(i64 %54)
  br label %56

56:                                               ; preds = %53, %24
  %57 = load i32*, i32** @rofi_theme, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32*, i32** @rofi_theme, align 8
  %61 = call i32 @rofi_theme_free(i32* %60)
  store i32* null, i32** @rofi_theme, align 8
  br label %62

62:                                               ; preds = %59, %56
  %63 = call i32 (...) @TIMINGS_STOP()
  %64 = call i32 (...) @rofi_collect_modi_destroy()
  %65 = call i32 (...) @rofi_icon_fetcher_destroy()
  ret void
}

declare dso_local i32 @mode_destroy(i32) #1

declare dso_local i32 @rofi_view_workers_finalize(...) #1

declare dso_local i32 @g_main_loop_unref(i32*) #1

declare dso_local i32 @display_cleanup(...) #1

declare dso_local i32 @nk_bindings_free(i32) #1

declare dso_local i32 @config_xresource_free(...) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local %struct.TYPE_5__* @g_list_first(i64) #1

declare dso_local i32 @g_string_free(i32*, i32) #1

declare dso_local %struct.TYPE_5__* @g_list_next(%struct.TYPE_5__*) #1

declare dso_local i32 @g_list_free(i64) #1

declare dso_local i32 @rofi_theme_free(i32*) #1

declare dso_local i32 @TIMINGS_STOP(...) #1

declare dso_local i32 @rofi_collect_modi_destroy(...) #1

declare dso_local i32 @rofi_icon_fetcher_destroy(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
