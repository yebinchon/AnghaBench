; ModuleID = '/home/carl/AnghaBench/sway/swaynag/extr_render.c_render_message.c'
source_filename = "/home/carl/AnghaBench/sway/swaynag/extr_render.c_render_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaynag = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.swaynag*)* @render_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @render_message(i32* %0, %struct.swaynag* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.swaynag*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.swaynag* %1, %struct.swaynag** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %13 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %18 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %21 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @get_text_size(i32* %11, i32 %16, i32* %6, i32* %7, i32* null, i32 %19, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %25 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %30 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 %28, %31
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = mul nsw i32 %34, 2
  %36 = add nsw i32 %33, %35
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %40 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = sdiv i64 %38, %42
  store i64 %43, i64* %10, align 8
  %44 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %45 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %2
  %50 = load i64, i64* %10, align 8
  store i64 %50, i64* %3, align 8
  br label %83

51:                                               ; preds = %2
  %52 = load i32*, i32** %4, align 8
  %53 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %54 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %53, i32 0, i32 3
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @cairo_set_source_u32(i32* %52, i32 %57)
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i64, i64* %9, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = sub nsw i64 %61, %63
  %65 = trunc i64 %64 to i32
  %66 = sdiv i32 %65, 2
  %67 = call i32 @cairo_move_to(i32* %59, i32 %60, i32 %66)
  %68 = load i32*, i32** %4, align 8
  %69 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %70 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %69, i32 0, i32 3
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %75 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %79 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @pango_printf(i32* %68, i32 %73, i64 %77, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i64, i64* %10, align 8
  store i64 %82, i64* %3, align 8
  br label %83

83:                                               ; preds = %51, %49
  %84 = load i64, i64* %3, align 8
  ret i64 %84
}

declare dso_local i32 @get_text_size(i32*, i32, i32*, i32*, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @cairo_set_source_u32(i32*, i32) #1

declare dso_local i32 @cairo_move_to(i32*, i32, i32) #1

declare dso_local i32 @pango_printf(i32*, i32, i64, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
