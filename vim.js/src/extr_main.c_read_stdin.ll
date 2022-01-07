; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_main.c_read_stdin.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_main.c_read_stdin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@no_wait_return = common dso_local global i32 0, align 4
@msg_didany = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"reading stdin\00", align 1
@ignored = common dso_local global i32 0, align 4
@SEA_DIALOG = common dso_local global i32 0, align 4
@swap_exists_action = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @read_stdin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_stdin() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @TRUE, align 4
  store i32 %2, i32* @no_wait_return, align 4
  %3 = load i32, i32* @msg_didany, align 4
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @TRUE, align 4
  %5 = call i32 @set_buflisted(i32 %4)
  %6 = load i32, i32* @TRUE, align 4
  %7 = call i32 @open_buffer(i32 %6, i32* null, i32 0)
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* @no_wait_return, align 4
  %9 = load i32, i32* %1, align 4
  store i32 %9, i32* @msg_didany, align 4
  %10 = call i32 @TIME_MSG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @close(i32 0)
  %12 = call i32 @dup(i32 2)
  store i32 %12, i32* @ignored, align 4
  ret void
}

declare dso_local i32 @set_buflisted(i32) #1

declare dso_local i32 @open_buffer(i32, i32*, i32) #1

declare dso_local i32 @TIME_MSG(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @dup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
