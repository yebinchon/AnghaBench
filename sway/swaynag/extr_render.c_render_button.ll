; ModuleID = '/home/carl/AnghaBench/sway/swaynag/extr_render.c_render_button.c'
source_filename = "/home/carl/AnghaBench/sway/swaynag/extr_render.c_render_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaynag = type { i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.swaynag_button** }
%struct.swaynag_button = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.swaynag*, i32, i32*)* @render_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @render_button(i32* %0, %struct.swaynag* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.swaynag*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.swaynag_button*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.swaynag* %1, %struct.swaynag** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load %struct.swaynag*, %struct.swaynag** %7, align 8
  %18 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %17, i32 0, i32 3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.swaynag_button**, %struct.swaynag_button*** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.swaynag_button*, %struct.swaynag_button** %21, i64 %23
  %25 = load %struct.swaynag_button*, %struct.swaynag_button** %24, align 8
  store %struct.swaynag_button* %25, %struct.swaynag_button** %10, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.swaynag*, %struct.swaynag** %7, align 8
  %28 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.swaynag*, %struct.swaynag** %7, align 8
  %33 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.swaynag_button*, %struct.swaynag_button** %10, align 8
  %36 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @get_text_size(i32* %26, i32 %31, i32* %11, i32* %12, i32* null, i32 %34, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.swaynag*, %struct.swaynag** %7, align 8
  %40 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.swaynag*, %struct.swaynag** %7, align 8
  %45 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %43, %46
  store i32 %47, i32* %13, align 4
  %48 = load %struct.swaynag*, %struct.swaynag** %7, align 8
  %49 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.swaynag*, %struct.swaynag** %7, align 8
  %54 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = mul nsw i32 %52, %55
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %14, align 4
  %59 = mul nsw i32 %58, 2
  %60 = add nsw i32 %57, %59
  %61 = load i32, i32* %13, align 4
  %62 = mul nsw i32 %61, 2
  %63 = add nsw i32 %60, %62
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %15, align 8
  %65 = load i64, i64* %15, align 8
  %66 = load %struct.swaynag*, %struct.swaynag** %7, align 8
  %67 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = sdiv i64 %65, %69
  store i64 %70, i64* %16, align 8
  %71 = load %struct.swaynag*, %struct.swaynag** %7, align 8
  %72 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %16, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %4
  %77 = load i64, i64* %16, align 8
  store i64 %77, i64* %5, align 8
  br label %210

78:                                               ; preds = %4
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %13, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load i32, i32* %11, align 4
  %84 = sub nsw i32 %82, %83
  %85 = load i32, i32* %14, align 4
  %86 = mul nsw i32 %85, 2
  %87 = sub nsw i32 %84, %86
  %88 = add nsw i32 %87, 1
  %89 = load %struct.swaynag_button*, %struct.swaynag_button** %10, align 8
  %90 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load i64, i64* %15, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = sub nsw i64 %91, %93
  %95 = trunc i64 %94 to i32
  %96 = sdiv i32 %95, 2
  %97 = load i32, i32* %14, align 4
  %98 = sub nsw i32 %96, %97
  %99 = add nsw i32 %98, 1
  %100 = load %struct.swaynag_button*, %struct.swaynag_button** %10, align 8
  %101 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %14, align 4
  %104 = mul nsw i32 %103, 2
  %105 = add nsw i32 %102, %104
  %106 = load %struct.swaynag_button*, %struct.swaynag_button** %10, align 8
  %107 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %14, align 4
  %110 = mul nsw i32 %109, 2
  %111 = add nsw i32 %108, %110
  %112 = load %struct.swaynag_button*, %struct.swaynag_button** %10, align 8
  %113 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load i32*, i32** %6, align 8
  %115 = load %struct.swaynag*, %struct.swaynag** %7, align 8
  %116 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %115, i32 0, i32 2
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @cairo_set_source_u32(i32* %114, i32 %119)
  %121 = load i32*, i32** %6, align 8
  %122 = load %struct.swaynag_button*, %struct.swaynag_button** %10, align 8
  %123 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %13, align 4
  %126 = sub nsw i32 %124, %125
  %127 = load %struct.swaynag_button*, %struct.swaynag_button** %10, align 8
  %128 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %13, align 4
  %131 = sub nsw i32 %129, %130
  %132 = load %struct.swaynag_button*, %struct.swaynag_button** %10, align 8
  %133 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %13, align 4
  %136 = mul nsw i32 %135, 2
  %137 = add nsw i32 %134, %136
  %138 = load %struct.swaynag_button*, %struct.swaynag_button** %10, align 8
  %139 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %13, align 4
  %142 = mul nsw i32 %141, 2
  %143 = add nsw i32 %140, %142
  %144 = call i32 @cairo_rectangle(i32* %121, i32 %126, i32 %131, i32 %137, i32 %143)
  %145 = load i32*, i32** %6, align 8
  %146 = call i32 @cairo_fill(i32* %145)
  %147 = load i32*, i32** %6, align 8
  %148 = load %struct.swaynag*, %struct.swaynag** %7, align 8
  %149 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %148, i32 0, i32 2
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @cairo_set_source_u32(i32* %147, i32 %152)
  %154 = load i32*, i32** %6, align 8
  %155 = load %struct.swaynag_button*, %struct.swaynag_button** %10, align 8
  %156 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.swaynag_button*, %struct.swaynag_button** %10, align 8
  %159 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.swaynag_button*, %struct.swaynag_button** %10, align 8
  %162 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.swaynag_button*, %struct.swaynag_button** %10, align 8
  %165 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @cairo_rectangle(i32* %154, i32 %157, i32 %160, i32 %163, i32 %166)
  %168 = load i32*, i32** %6, align 8
  %169 = call i32 @cairo_fill(i32* %168)
  %170 = load i32*, i32** %6, align 8
  %171 = load %struct.swaynag*, %struct.swaynag** %7, align 8
  %172 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %171, i32 0, i32 2
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @cairo_set_source_u32(i32* %170, i32 %175)
  %177 = load i32*, i32** %6, align 8
  %178 = load %struct.swaynag_button*, %struct.swaynag_button** %10, align 8
  %179 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %14, align 4
  %182 = add nsw i32 %180, %181
  %183 = load %struct.swaynag_button*, %struct.swaynag_button** %10, align 8
  %184 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %14, align 4
  %187 = add nsw i32 %185, %186
  %188 = call i32 @cairo_move_to(i32* %177, i32 %182, i32 %187)
  %189 = load i32*, i32** %6, align 8
  %190 = load %struct.swaynag*, %struct.swaynag** %7, align 8
  %191 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %190, i32 0, i32 2
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.swaynag*, %struct.swaynag** %7, align 8
  %196 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = sext i32 %197 to i64
  %199 = load %struct.swaynag_button*, %struct.swaynag_button** %10, align 8
  %200 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @pango_printf(i32* %189, i32 %194, i64 %198, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %201)
  %203 = load %struct.swaynag_button*, %struct.swaynag_button** %10, align 8
  %204 = getelementptr inbounds %struct.swaynag_button, %struct.swaynag_button* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %13, align 4
  %207 = sub nsw i32 %205, %206
  %208 = load i32*, i32** %9, align 8
  store i32 %207, i32* %208, align 4
  %209 = load i64, i64* %16, align 8
  store i64 %209, i64* %5, align 8
  br label %210

210:                                              ; preds = %78, %76
  %211 = load i64, i64* %5, align 8
  ret i64 %211
}

declare dso_local i32 @get_text_size(i32*, i32, i32*, i32*, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @cairo_set_source_u32(i32*, i32) #1

declare dso_local i32 @cairo_rectangle(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @cairo_fill(i32*) #1

declare dso_local i32 @cairo_move_to(i32*, i32, i32) #1

declare dso_local i32 @pango_printf(i32*, i32, i64, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
