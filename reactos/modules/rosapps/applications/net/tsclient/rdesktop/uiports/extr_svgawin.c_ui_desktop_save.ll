; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_ui_desktop_save.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_ui_desktop_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mousex = common dso_local global i32 0, align 4
@mousey = common dso_local global i32 0, align 4
@desk_save = common dso_local global i32* null, align 8
@g_server_Bpp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_desktop_save(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 230400
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %14, %5
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = mul nsw i32 %17, %18
  %20 = add nsw i32 %16, %19
  %21 = icmp sgt i32 %20, 230400
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %47

23:                                               ; preds = %15
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i64 @contains_mouse(i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* @mousex, align 4
  %32 = load i32, i32* @mousey, align 4
  %33 = call i32 @draw_cursor_under(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %23
  %35 = load i32*, i32** @desk_save, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @g_server_Bpp, align 4
  %38 = mul nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  store i32* %40, i32** %11, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @get_rect(i32 %41, i32 %42, i32 %43, i32 %44, i32* %45)
  br label %47

47:                                               ; preds = %34, %22
  ret void
}

declare dso_local i64 @contains_mouse(i32, i32, i32, i32) #1

declare dso_local i32 @draw_cursor_under(i32, i32) #1

declare dso_local i32 @get_rect(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
