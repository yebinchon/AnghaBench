; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_x11.c_draw_glyph_string.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_x11.c_draw_glyph_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@DRAW_TRANSP = common dso_local global i32 0, align 4
@gui = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@DRAW_BOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32*, i32*)* @draw_glyph_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_glyph_string(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @DRAW_TRANSP, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %6
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 1), align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 6), align 4
  %20 = call i32 @gdk_gc_set_foreground(i32 %18, i32 %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 2), align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 1), align 4
  %25 = load i32, i32* @TRUE, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @FILL_X(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @FILL_Y(i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 0), align 8
  %32 = mul nsw i32 %30, %31
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 5), align 8
  %34 = call i32 @gdk_draw_rectangle(i32 %23, i32 %24, i32 %25, i32 %27, i32 %29, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %17, %6
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 1), align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 4), align 4
  %38 = call i32 @gdk_gc_set_foreground(i32 %36, i32 %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 2), align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 1), align 4
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i64 @TEXT_X(i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @TEXT_Y(i32 %46)
  %48 = load i32*, i32** %12, align 8
  %49 = call i32 @gdk_draw_glyphs(i32 %41, i32 %42, i32* %43, i64 %45, i32 %47, i32* %48)
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @DRAW_BOLD, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %35
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 3), align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %54
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 2), align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 1), align 4
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i64 @TEXT_X(i32 %63)
  %65 = add nsw i64 %64, 1
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @TEXT_Y(i32 %66)
  %68 = load i32*, i32** %12, align 8
  %69 = call i32 @gdk_draw_glyphs(i32 %60, i32 %61, i32* %62, i64 %65, i32 %67, i32* %68)
  br label %70

70:                                               ; preds = %57, %54, %35
  ret void
}

declare dso_local i32 @gdk_gc_set_foreground(i32, i32) #1

declare dso_local i32 @gdk_draw_rectangle(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FILL_X(i32) #1

declare dso_local i32 @FILL_Y(i32) #1

declare dso_local i32 @gdk_draw_glyphs(i32, i32, i32*, i64, i32, i32*) #1

declare dso_local i64 @TEXT_X(i32) #1

declare dso_local i32 @TEXT_Y(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
