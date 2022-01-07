; ModuleID = '/home/carl/AnghaBench/sway/swaynag/extr_render.c_render_details_scroll_button.c'
source_filename = "/home/carl/AnghaBench/sway/swaynag/extr_render.c_render_details_scroll_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaynag = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.swaynag_button = type { i32, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.swaynag*, %struct.swaynag_button*)* @render_details_scroll_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_details_scroll_button(i32* %0, %struct.swaynag* %1, %struct.swaynag_button* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.swaynag*, align 8
  %6 = alloca %struct.swaynag_button*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.swaynag* %1, %struct.swaynag** %5, align 8
  store %struct.swaynag_button* %2, %struct.swaynag_button** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %13 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %18 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.swaynag_button*, %struct.swaynag_button** %6, align 8
  %21 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @get_text_size(i32* %11, i32 %16, i32* %7, i32* %8, i32* null, i32 %19, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %25 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %30 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 %28, %31
  store i32 %32, i32* %9, align 4
  %33 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %34 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %39 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %37, %40
  store i32 %41, i32* %10, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %44 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cairo_set_source_u32(i32* %42, i32 %47)
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.swaynag_button*, %struct.swaynag_button** %6, align 8
  %51 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.swaynag_button*, %struct.swaynag_button** %6, align 8
  %54 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.swaynag_button*, %struct.swaynag_button** %6, align 8
  %57 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.swaynag_button*, %struct.swaynag_button** %6, align 8
  %60 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @cairo_rectangle(i32* %49, i64 %52, i64 %55, i64 %58, i32 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @cairo_fill(i32* %63)
  %65 = load i32*, i32** %4, align 8
  %66 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %67 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @cairo_set_source_u32(i32* %65, i32 %70)
  %72 = load i32*, i32** %4, align 8
  %73 = load %struct.swaynag_button*, %struct.swaynag_button** %6, align 8
  %74 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = load %struct.swaynag_button*, %struct.swaynag_button** %6, align 8
  %80 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %81, %83
  %85 = load %struct.swaynag_button*, %struct.swaynag_button** %6, align 8
  %86 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = mul nsw i32 %88, 2
  %90 = sext i32 %89 to i64
  %91 = sub nsw i64 %87, %90
  %92 = load %struct.swaynag_button*, %struct.swaynag_button** %6, align 8
  %93 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = mul nsw i32 %95, 2
  %97 = sub nsw i32 %94, %96
  %98 = call i32 @cairo_rectangle(i32* %72, i64 %78, i64 %84, i64 %91, i32 %97)
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @cairo_fill(i32* %99)
  %101 = load i32*, i32** %4, align 8
  %102 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %103 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %102, i32 0, i32 1
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @cairo_set_source_u32(i32* %101, i32 %106)
  %108 = load i32*, i32** %4, align 8
  %109 = load %struct.swaynag_button*, %struct.swaynag_button** %6, align 8
  %110 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %111, %113
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %114, %116
  %118 = load %struct.swaynag_button*, %struct.swaynag_button** %6, align 8
  %119 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %120, %122
  %124 = load %struct.swaynag_button*, %struct.swaynag_button** %6, align 8
  %125 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sub nsw i32 %126, %127
  %129 = sdiv i32 %128, 2
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %123, %130
  %132 = call i32 @cairo_move_to(i32* %108, i64 %117, i64 %131)
  %133 = load i32*, i32** %4, align 8
  %134 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %135 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %134, i32 0, i32 1
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %140 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.swaynag_button*, %struct.swaynag_button** %6, align 8
  %143 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @pango_printf(i32* %133, i32 %138, i32 %141, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %144)
  ret void
}

declare dso_local i32 @get_text_size(i32*, i32, i32*, i32*, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @cairo_set_source_u32(i32*, i32) #1

declare dso_local i32 @cairo_rectangle(i32*, i64, i64, i64, i32) #1

declare dso_local i32 @cairo_fill(i32*) #1

declare dso_local i32 @cairo_move_to(i32*, i64, i64) #1

declare dso_local i32 @pango_printf(i32*, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
