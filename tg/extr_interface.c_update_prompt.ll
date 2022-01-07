; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_update_prompt.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_update_prompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@readline_disabled = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@read_one_string = common dso_local global i64 0, align 8
@readline_active = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_prompt() #0 {
  %1 = load i64, i64* @readline_disabled, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @stdout, align 4
  %5 = call i32 @fflush(i32 %4)
  br label %20

6:                                                ; preds = %0
  %7 = load i64, i64* @read_one_string, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  br label %20

10:                                               ; preds = %6
  %11 = call i32 (...) @print_start()
  %12 = call i32 (...) @get_default_prompt()
  %13 = call i32 @set_prompt(i32 %12)
  %14 = load i64, i64* @readline_active, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = call i32 (...) @rl_redisplay()
  br label %18

18:                                               ; preds = %16, %10
  %19 = call i32 (...) @print_end()
  br label %20

20:                                               ; preds = %18, %9, %3
  ret void
}

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @print_start(...) #1

declare dso_local i32 @set_prompt(i32) #1

declare dso_local i32 @get_default_prompt(...) #1

declare dso_local i32 @rl_redisplay(...) #1

declare dso_local i32 @print_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
