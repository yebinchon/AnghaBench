; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_term.c_stoptermcap.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_term.c_stoptermcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@termcap_active = common dso_local global i64 0, align 8
@T_KE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@T_TE = common dso_local global i32 0, align 4
@CRV_SENT = common dso_local global i64 0, align 8
@TCIFLUSH = common dso_local global i32 0, align 4
@U7_SENT = common dso_local global i64 0, align 8
@crv_status = common dso_local global i64 0, align 8
@exiting = common dso_local global i64 0, align 8
@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@stdin = common dso_local global i32 0, align 4
@u7_status = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stoptermcap() #0 {
  %1 = call i32 (...) @screen_stop_highlight()
  %2 = call i32 (...) @reset_cterm_colors()
  %3 = load i64, i64* @termcap_active, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %0
  %6 = load i32, i32* @T_KE, align 4
  %7 = call i32 @out_str(i32 %6)
  %8 = call i32 (...) @out_flush()
  %9 = load i64, i64* @FALSE, align 8
  store i64 %9, i64* @termcap_active, align 8
  %10 = call i32 (...) @cursor_on()
  %11 = load i32, i32* @T_TE, align 4
  %12 = call i32 @out_str(i32 %11)
  %13 = call i32 (...) @screen_start()
  %14 = call i32 (...) @out_flush()
  br label %15

15:                                               ; preds = %5, %0
  ret void
}

declare dso_local i32 @screen_stop_highlight(...) #1

declare dso_local i32 @reset_cterm_colors(...) #1

declare dso_local i32 @out_str(i32) #1

declare dso_local i32 @out_flush(...) #1

declare dso_local i32 @cursor_on(...) #1

declare dso_local i32 @screen_start(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
