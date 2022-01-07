; ModuleID = '/home/carl/AnghaBench/sway/swaynag/extr_render.c_render_to_cairo.c'
source_filename = "/home/carl/AnghaBench/sway/swaynag/extr_render.c_render_to_cairo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaynag = type { i32, i32, i64, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@CAIRO_OPERATOR_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.swaynag*)* @render_to_cairo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @render_to_cairo(i32* %0, %struct.swaynag* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.swaynag*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.swaynag* %1, %struct.swaynag** %4, align 8
  store i64 0, i64* %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @CAIRO_OPERATOR_SOURCE, align 4
  %12 = call i32 @cairo_set_operator(i32* %10, i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.swaynag*, %struct.swaynag** %4, align 8
  %15 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %14, i32 0, i32 3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @cairo_set_source_u32(i32* %13, i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @cairo_paint(i32* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.swaynag*, %struct.swaynag** %4, align 8
  %24 = call i64 @render_message(i32* %22, %struct.swaynag* %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i64, i64* %6, align 8
  br label %32

30:                                               ; preds = %2
  %31 = load i64, i64* %5, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i64 [ %29, %28 ], [ %31, %30 ]
  store i64 %33, i64* %5, align 8
  %34 = load %struct.swaynag*, %struct.swaynag** %4, align 8
  %35 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.swaynag*, %struct.swaynag** %4, align 8
  %38 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %37, i32 0, i32 3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %36, %41
  store i32 %42, i32* %7, align 4
  %43 = load %struct.swaynag*, %struct.swaynag** %4, align 8
  %44 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = mul nsw i32 %46, %45
  store i32 %47, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %96, %32
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.swaynag*, %struct.swaynag** %4, align 8
  %51 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %50, i32 0, i32 5
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %49, %54
  br i1 %55, label %56, label %99

56:                                               ; preds = %48
  %57 = load i32*, i32** %3, align 8
  %58 = load %struct.swaynag*, %struct.swaynag** %4, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i64 @render_button(i32* %57, %struct.swaynag* %58, i32 %59, i32* %7)
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %5, align 8
  %63 = icmp sgt i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i64, i64* %6, align 8
  br label %68

66:                                               ; preds = %56
  %67 = load i64, i64* %5, align 8
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i64 [ %65, %64 ], [ %67, %66 ]
  store i64 %69, i64* %5, align 8
  %70 = load %struct.swaynag*, %struct.swaynag** %4, align 8
  %71 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %70, i32 0, i32 3
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.swaynag*, %struct.swaynag** %4, align 8
  %76 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %74, %77
  %79 = load i32, i32* %7, align 4
  %80 = sub nsw i32 %79, %78
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %68
  %84 = load %struct.swaynag*, %struct.swaynag** %4, align 8
  %85 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %84, i32 0, i32 3
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.swaynag*, %struct.swaynag** %4, align 8
  %90 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %88, %91
  %93 = load i32, i32* %7, align 4
  %94 = sub nsw i32 %93, %92
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %83, %68
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %48

99:                                               ; preds = %48
  %100 = load %struct.swaynag*, %struct.swaynag** %4, align 8
  %101 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %99
  %106 = load i32*, i32** %3, align 8
  %107 = load %struct.swaynag*, %struct.swaynag** %4, align 8
  %108 = load i64, i64* %5, align 8
  %109 = call i64 @render_detailed(i32* %106, %struct.swaynag* %107, i64 %108)
  store i64 %109, i64* %6, align 8
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* %5, align 8
  %112 = icmp sgt i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = load i64, i64* %6, align 8
  br label %117

115:                                              ; preds = %105
  %116 = load i64, i64* %5, align 8
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i64 [ %114, %113 ], [ %116, %115 ]
  store i64 %118, i64* %5, align 8
  br label %119

119:                                              ; preds = %117, %99
  %120 = load %struct.swaynag*, %struct.swaynag** %4, align 8
  %121 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %120, i32 0, i32 3
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.swaynag*, %struct.swaynag** %4, align 8
  %126 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %124, %127
  store i32 %128, i32* %9, align 4
  %129 = load i64, i64* %5, align 8
  %130 = load %struct.swaynag*, %struct.swaynag** %4, align 8
  %131 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp sgt i64 %129, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %119
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* %5, align 8
  %138 = add nsw i64 %137, %136
  store i64 %138, i64* %5, align 8
  br label %139

139:                                              ; preds = %134, %119
  %140 = load i32*, i32** %3, align 8
  %141 = load %struct.swaynag*, %struct.swaynag** %4, align 8
  %142 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %141, i32 0, i32 3
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @cairo_set_source_u32(i32* %140, i32 %145)
  %147 = load i32*, i32** %3, align 8
  %148 = load %struct.swaynag*, %struct.swaynag** %4, align 8
  %149 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.swaynag*, %struct.swaynag** %4, align 8
  %152 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = mul nsw i64 %150, %154
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = sub nsw i64 %155, %157
  %159 = trunc i64 %158 to i32
  %160 = load %struct.swaynag*, %struct.swaynag** %4, align 8
  %161 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.swaynag*, %struct.swaynag** %4, align 8
  %164 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = mul nsw i32 %162, %165
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @cairo_rectangle(i32* %147, i32 0, i32 %159, i32 %166, i32 %167)
  %169 = load i32*, i32** %3, align 8
  %170 = call i32 @cairo_fill(i32* %169)
  %171 = load i64, i64* %5, align 8
  ret i64 %171
}

declare dso_local i32 @cairo_set_operator(i32*, i32) #1

declare dso_local i32 @cairo_set_source_u32(i32*, i32) #1

declare dso_local i32 @cairo_paint(i32*) #1

declare dso_local i64 @render_message(i32*, %struct.swaynag*) #1

declare dso_local i64 @render_button(i32*, %struct.swaynag*, i32, i32*) #1

declare dso_local i64 @render_detailed(i32*, %struct.swaynag*, i64) #1

declare dso_local i32 @cairo_rectangle(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @cairo_fill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
