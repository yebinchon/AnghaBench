; ModuleID = '/home/carl/AnghaBench/tig/src/extr_display.c_redraw_display_separator.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_display.c_redraw_display_separator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@display_sep = common dso_local global i64 0, align 8
@opt_line_graphics = common dso_local global i64 0, align 8
@ACS_VLINE = common dso_local global i8 0, align 1
@LINE_TITLE_BLUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @redraw_display_separator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redraw_display_separator(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @display_sep, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %33

6:                                                ; preds = %1
  %7 = load i64, i64* @opt_line_graphics, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i8, i8* @ACS_VLINE, align 1
  %11 = sext i8 %10 to i32
  br label %13

12:                                               ; preds = %6
  br label %13

13:                                               ; preds = %12, %9
  %14 = phi i32 [ %11, %9 ], [ 124, %12 ]
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %3, align 1
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i64, i64* @display_sep, align 8
  %20 = call i32 @wclear(i64 %19)
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i64, i64* @display_sep, align 8
  %23 = load i8, i8* %3, align 1
  %24 = sext i8 %23 to i32
  %25 = load i32, i32* @LINE_TITLE_BLUR, align 4
  %26 = call signext i8 @get_line_attr(i32* null, i32 %25)
  %27 = sext i8 %26 to i32
  %28 = add nsw i32 %24, %27
  %29 = trunc i32 %28 to i8
  %30 = call i32 @wbkgd(i64 %22, i8 signext %29)
  %31 = load i64, i64* @display_sep, align 8
  %32 = call i32 @wnoutrefresh(i64 %31)
  br label %33

33:                                               ; preds = %21, %1
  ret void
}

declare dso_local i32 @wclear(i64) #1

declare dso_local i32 @wbkgd(i64, i8 signext) #1

declare dso_local signext i8 @get_line_attr(i32*, i32) #1

declare dso_local i32 @wnoutrefresh(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
