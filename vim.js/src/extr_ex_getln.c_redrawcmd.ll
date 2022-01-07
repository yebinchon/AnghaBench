; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_ex_getln.c_redrawcmd.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_ex_getln.c_redrawcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@cmd_silent = common dso_local global i64 0, align 8
@ccline = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@cmdline_row = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@msg_no_more = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@msg_scroll = common dso_local global i8* null, align 8
@skip_redraw = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @redrawcmd() #0 {
  %1 = load i64, i64* @cmd_silent, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %22

4:                                                ; preds = %0
  %5 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccline, i32 0, i32 1), align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = load i32, i32* @cmdline_row, align 4
  %9 = call i32 @windgoto(i32 %8, i32 0)
  %10 = call i32 (...) @msg_clr_eos()
  br label %22

11:                                               ; preds = %4
  %12 = call i32 (...) @msg_start()
  %13 = call i32 (...) @redrawcmdprompt()
  %14 = load i8*, i8** @TRUE, align 8
  store i8* %14, i8** @msg_no_more, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccline, i32 0, i32 0), align 8
  %16 = call i32 @draw_cmdline(i32 0, i32 %15)
  %17 = call i32 (...) @msg_clr_eos()
  %18 = load i8*, i8** @FALSE, align 8
  store i8* %18, i8** @msg_no_more, align 8
  %19 = call i32 (...) @set_cmdspos_cursor()
  %20 = load i8*, i8** @FALSE, align 8
  store i8* %20, i8** @msg_scroll, align 8
  %21 = load i8*, i8** @FALSE, align 8
  store i8* %21, i8** @skip_redraw, align 8
  br label %22

22:                                               ; preds = %11, %7, %3
  ret void
}

declare dso_local i32 @windgoto(i32, i32) #1

declare dso_local i32 @msg_clr_eos(...) #1

declare dso_local i32 @msg_start(...) #1

declare dso_local i32 @redrawcmdprompt(...) #1

declare dso_local i32 @draw_cmdline(i32, i32) #1

declare dso_local i32 @set_cmdspos_cursor(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
