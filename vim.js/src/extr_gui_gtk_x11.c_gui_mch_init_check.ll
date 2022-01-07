; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_x11.c_gui_mch_init_check.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_x11.c_gui_mch_init_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"gvim\00", align 1
@gui_argc = common dso_local global i32 0, align 4
@gui_argv = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@e_opendisp = common dso_local global i64 0, align 8
@FAIL = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4
@gtk_socket_id = common dso_local global i64 0, align 8
@using_gnome = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gui_mch_init_check() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @g_set_prgname(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @gtk_init_check(i32* @gui_argc, i32* @gui_argv)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @TRUE, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 4
  %7 = load i64, i64* @e_opendisp, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = call i32 @_(i8* %8)
  %10 = call i32 @EMSG(i32 %9)
  %11 = load i32, i32* @FAIL, align 4
  store i32 %11, i32* %1, align 4
  br label %14

12:                                               ; preds = %0
  %13 = load i32, i32* @OK, align 4
  store i32 %13, i32* %1, align 4
  br label %14

14:                                               ; preds = %12, %5
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

declare dso_local i32 @g_set_prgname(i8*) #1

declare dso_local i32 @gtk_init_check(i32*, i32*) #1

declare dso_local i32 @EMSG(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
