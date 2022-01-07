; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_shrinkwrap.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_shrinkwrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@page_tex = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@showoutline = common dso_local global i64 0, align 8
@outline_w = common dso_local global i32 0, align 4
@showannotate = common dso_local global i64 0, align 8
@annotate_w = common dso_local global i32 0, align 4
@screen_w = common dso_local global i32 0, align 4
@screen_h = common dso_local global i32 0, align 4
@isfullscreen = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @shrinkwrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shrinkwrap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @page_tex, i32 0, i32 0), align 4
  %4 = load i64, i64* @showoutline, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @outline_w, align 4
  %8 = add nsw i32 %7, 4
  br label %10

9:                                                ; preds = %0
  br label %10

10:                                               ; preds = %9, %6
  %11 = phi i32 [ %8, %6 ], [ 0, %9 ]
  %12 = add nsw i32 %3, %11
  %13 = load i64, i64* @showannotate, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @annotate_w, align 4
  br label %18

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ 0, %17 ]
  %20 = add nsw i32 %12, %19
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @page_tex, i32 0, i32 1), align 4
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* @screen_w, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @screen_w, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @screen_w, align 4
  store i32 %29, i32* %1, align 4
  br label %30

30:                                               ; preds = %28, %24, %18
  %31 = load i32, i32* @screen_h, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @screen_h, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @screen_h, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %33, %30
  %40 = load i64, i64* @isfullscreen, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 (...) @toggle_fullscreen()
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i32, i32* %1, align 4
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @glutReshapeWindow(i32 %45, i32 %46)
  ret void
}

declare dso_local i32 @toggle_fullscreen(...) #1

declare dso_local i32 @glutReshapeWindow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
