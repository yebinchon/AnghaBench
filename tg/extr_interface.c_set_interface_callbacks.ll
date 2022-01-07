; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_set_interface_callbacks.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_set_interface_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@readline_disabled = common dso_local global i64 0, align 8
@readline_active = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@rl_filename_quote_characters = common dso_local global i8* null, align 8
@rl_basic_word_break_characters = common dso_local global i8* null, align 8
@interpreter = common dso_local global i32 0, align 4
@command_generator = common dso_local global i32 0, align 4
@rl_completion_entry_function = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_interface_callbacks() #0 {
  %1 = load i64, i64* @readline_disabled, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %11

4:                                                ; preds = %0
  store i32 1, i32* @readline_active, align 4
  %5 = call i8* @strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %5, i8** @rl_filename_quote_characters, align 8
  %6 = call i8* @strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** @rl_basic_word_break_characters, align 8
  %7 = call i32 (...) @get_default_prompt()
  %8 = load i32, i32* @interpreter, align 4
  %9 = call i32 @rl_callback_handler_install(i32 %7, i32 %8)
  %10 = load i32, i32* @command_generator, align 4
  store i32 %10, i32* @rl_completion_entry_function, align 4
  br label %11

11:                                               ; preds = %4, %3
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @rl_callback_handler_install(i32, i32) #1

declare dso_local i32 @get_default_prompt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
