; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_print_end.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_print_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@in_readline = common dso_local global i64 0, align 8
@readline_disabled = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@prompt_was = common dso_local global i64 0, align 8
@readline_active = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_end() #0 {
  %1 = load i64, i64* @in_readline, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %18

4:                                                ; preds = %0
  %5 = load i64, i64* @readline_disabled, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load i32, i32* @stdout, align 4
  %9 = call i32 @fflush(i32 %8)
  br label %18

10:                                               ; preds = %4
  %11 = load i64, i64* @prompt_was, align 8
  %12 = call i32 @assert(i64 %11)
  %13 = load i64, i64* @readline_active, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 (...) @reactivate_readline()
  br label %17

17:                                               ; preds = %15, %10
  store i64 0, i64* @prompt_was, align 8
  br label %18

18:                                               ; preds = %17, %7, %3
  ret void
}

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i32 @reactivate_readline(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
