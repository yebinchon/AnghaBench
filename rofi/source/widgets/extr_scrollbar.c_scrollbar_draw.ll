; ModuleID = '/home/carl/AnghaBench/rofi/source/widgets/extr_scrollbar.c_scrollbar_draw.c'
source_filename = "/home/carl/AnghaBench/rofi/source/widgets/extr_scrollbar.c_scrollbar_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, double, i64 }

@.str = private unnamed_addr constant [13 x i8] c"handle-color\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*)* @scrollbar_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scrollbar_draw(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = bitcast %struct.TYPE_9__* %12 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %5, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = call i32 @widget_padding_get_remaining_height(%struct.TYPE_9__* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = mul i32 %18, %19
  %21 = uitofp i32 %20 to double
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = zext i32 %24 to i64
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = sitofp i64 %29 to double
  %31 = fdiv double %21, %30
  %32 = fptoui double %31 to i32
  store i32 %32, i32* %7, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub i32 %35, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = uitofp i32 %38 to double
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub i32 %42, 1
  %44 = uitofp i32 %43 to double
  %45 = fdiv double %39, %44
  store double %45, double* %9, align 8
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %10, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load double, double* %48, align 8
  %50 = load double, double* %9, align 8
  %51 = fmul double %49, %50
  %52 = fptoui double %51 to i32
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %8, align 4
  %56 = sub i32 %54, %55
  %57 = call i32 @MIN(i32 %53, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @MAX(i32 2, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = call i32 @WIDGET(%struct.TYPE_10__* %60)
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @rofi_theme_get_color(i32 %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %62)
  %64 = load i32*, i32** %4, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = call i32 @widget_padding_get_left(%struct.TYPE_9__* %65)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = call i64 @widget_padding_get_top(%struct.TYPE_9__* %67)
  %69 = load i32, i32* %11, align 4
  %70 = zext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = call i32 @widget_padding_get_remaining_width(%struct.TYPE_9__* %72)
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @cairo_rectangle(i32* %64, i32 %66, i64 %71, i32 %73, i32 %74)
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @cairo_fill(i32* %76)
  ret void
}

declare dso_local i32 @widget_padding_get_remaining_height(%struct.TYPE_9__*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @rofi_theme_get_color(i32, i8*, i32*) #1

declare dso_local i32 @WIDGET(%struct.TYPE_10__*) #1

declare dso_local i32 @cairo_rectangle(i32*, i32, i64, i32, i32) #1

declare dso_local i32 @widget_padding_get_left(%struct.TYPE_9__*) #1

declare dso_local i64 @widget_padding_get_top(%struct.TYPE_9__*) #1

declare dso_local i32 @widget_padding_get_remaining_width(%struct.TYPE_9__*) #1

declare dso_local i32 @cairo_fill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
