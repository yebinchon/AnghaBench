; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_web.c_gui_mch_get_font.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_web.c_gui_mch_get_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@e_font = common dso_local global i32 0, align 4
@NOFONT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @gui_mch_get_font(i32* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32*, i32** %4, align 8
  %7 = bitcast i32* %6 to i8*
  %8 = call i64 @vimjs_check_font(i8* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @vim_strsave(i32* %11)
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %3, align 8
  br label %24

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32, i32* @e_font, align 4
  %19 = call i32 @_(i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @EMSG2(i32 %19, i32* %20)
  br label %22

22:                                               ; preds = %17, %14
  %23 = load i8*, i8** @NOFONT, align 8
  store i8* %23, i8** %3, align 8
  br label %24

24:                                               ; preds = %22, %10
  %25 = load i8*, i8** %3, align 8
  ret i8* %25
}

declare dso_local i64 @vimjs_check_font(i8*) #1

declare dso_local i64 @vim_strsave(i32*) #1

declare dso_local i32 @EMSG2(i32, i32*) #1

declare dso_local i32 @_(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
