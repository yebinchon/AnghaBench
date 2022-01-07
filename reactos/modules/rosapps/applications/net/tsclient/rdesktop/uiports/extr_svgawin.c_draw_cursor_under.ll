; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_draw_cursor_under.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_draw_cursor_under.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_width = common dso_local global i32 0, align 4
@mouse_under = common dso_local global i32 0, align 4
@g_server_bpp = common dso_local global i32 0, align 4
@g_server_Bpp = common dso_local global i32 0, align 4
@g_height = common dso_local global i32 0, align 4
@g_draw_mouse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw_cursor_under(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  br label %16

15:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %15, %12
  %17 = load i32, i32* @g_width, align 4
  %18 = load i32, i32* %3, align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 32
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 32, i32* %6, align 4
  br label %23

23:                                               ; preds = %22, %16
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %77

26:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %73, %26
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 32
  br i1 %29, label %30, label %76

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @mouse_under, align 4
  %34 = load i32, i32* @g_server_bpp, align 4
  %35 = call i32* @get_ptr(i32 %31, i32 %32, i32 %33, i32 32, i32 %34)
  store i32* %35, i32** %8, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %36, %37
  %39 = load i32, i32* @g_server_Bpp, align 4
  %40 = mul nsw i32 %38, %39
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %41, %42
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %72

45:                                               ; preds = %30
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %46, %47
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %45
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* @g_width, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %50
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i32, i32* @g_height, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @vga_drawscansegment(i32* %63, i32 %66, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %62, %56, %50, %45, %30
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %27

76:                                               ; preds = %27
  br label %77

77:                                               ; preds = %76, %23
  store i32 1, i32* @g_draw_mouse, align 4
  ret void
}

declare dso_local i32* @get_ptr(i32, i32, i32, i32, i32) #1

declare dso_local i32 @vga_drawscansegment(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
