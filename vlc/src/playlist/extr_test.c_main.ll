; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_test.c_main.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (...) @test_append()
  %3 = call i32 (...) @test_insert()
  %4 = call i32 (...) @test_move()
  %5 = call i32 (...) @test_remove()
  %6 = call i32 (...) @test_clear()
  %7 = call i32 (...) @test_expand_item()
  %8 = call i32 (...) @test_items_added_callbacks()
  %9 = call i32 (...) @test_items_moved_callbacks()
  %10 = call i32 (...) @test_items_removed_callbacks()
  %11 = call i32 (...) @test_items_reset_callbacks()
  %12 = call i32 (...) @test_playback_repeat_changed_callbacks()
  %13 = call i32 (...) @test_playback_order_changed_callbacks()
  %14 = call i32 (...) @test_callbacks_on_add_listener()
  %15 = call i32 (...) @test_index_of()
  %16 = call i32 (...) @test_prev()
  %17 = call i32 (...) @test_next()
  %18 = call i32 (...) @test_goto()
  %19 = call i32 (...) @test_request_insert()
  %20 = call i32 (...) @test_request_remove_with_matching_hint()
  %21 = call i32 (...) @test_request_remove_without_hint()
  %22 = call i32 (...) @test_request_remove_adapt()
  %23 = call i32 (...) @test_request_move_with_matching_hint()
  %24 = call i32 (...) @test_request_move_without_hint()
  %25 = call i32 (...) @test_request_move_adapt()
  %26 = call i32 (...) @test_request_move_to_end_adapt()
  %27 = call i32 (...) @test_request_goto_with_matching_hint()
  %28 = call i32 (...) @test_request_goto_without_hint()
  %29 = call i32 (...) @test_request_goto_adapt()
  %30 = call i32 (...) @test_random()
  %31 = call i32 (...) @test_shuffle()
  %32 = call i32 (...) @test_sort()
  ret i32 0
}

declare dso_local i32 @test_append(...) #1

declare dso_local i32 @test_insert(...) #1

declare dso_local i32 @test_move(...) #1

declare dso_local i32 @test_remove(...) #1

declare dso_local i32 @test_clear(...) #1

declare dso_local i32 @test_expand_item(...) #1

declare dso_local i32 @test_items_added_callbacks(...) #1

declare dso_local i32 @test_items_moved_callbacks(...) #1

declare dso_local i32 @test_items_removed_callbacks(...) #1

declare dso_local i32 @test_items_reset_callbacks(...) #1

declare dso_local i32 @test_playback_repeat_changed_callbacks(...) #1

declare dso_local i32 @test_playback_order_changed_callbacks(...) #1

declare dso_local i32 @test_callbacks_on_add_listener(...) #1

declare dso_local i32 @test_index_of(...) #1

declare dso_local i32 @test_prev(...) #1

declare dso_local i32 @test_next(...) #1

declare dso_local i32 @test_goto(...) #1

declare dso_local i32 @test_request_insert(...) #1

declare dso_local i32 @test_request_remove_with_matching_hint(...) #1

declare dso_local i32 @test_request_remove_without_hint(...) #1

declare dso_local i32 @test_request_remove_adapt(...) #1

declare dso_local i32 @test_request_move_with_matching_hint(...) #1

declare dso_local i32 @test_request_move_without_hint(...) #1

declare dso_local i32 @test_request_move_adapt(...) #1

declare dso_local i32 @test_request_move_to_end_adapt(...) #1

declare dso_local i32 @test_request_goto_with_matching_hint(...) #1

declare dso_local i32 @test_request_goto_without_hint(...) #1

declare dso_local i32 @test_request_goto_adapt(...) #1

declare dso_local i32 @test_random(...) #1

declare dso_local i32 @test_shuffle(...) #1

declare dso_local i32 @test_sort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
