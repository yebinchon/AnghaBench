; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_render.c_render_status_line.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_render.c_render_status_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_output = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.status_line* }
%struct.status_line = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.swaybar_output*, double*)* @render_status_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @render_status_line(i32* %0, %struct.swaybar_output* %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.swaybar_output*, align 8
  %7 = alloca double*, align 8
  %8 = alloca %struct.status_line*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.swaybar_output* %1, %struct.swaybar_output** %6, align 8
  store double* %2, double** %7, align 8
  %9 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %10 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.status_line*, %struct.status_line** %12, align 8
  store %struct.status_line* %13, %struct.status_line** %8, align 8
  %14 = load %struct.status_line*, %struct.status_line** %8, align 8
  %15 = getelementptr inbounds %struct.status_line, %struct.status_line* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %33 [
    i32 131, label %17
    i32 129, label %22
    i32 130, label %27
    i32 128, label %32
  ]

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %20 = load double*, double** %7, align 8
  %21 = call i32 @render_status_line_error(i32* %18, %struct.swaybar_output* %19, double* %20)
  store i32 %21, i32* %4, align 4
  br label %34

22:                                               ; preds = %3
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %25 = load double*, double** %7, align 8
  %26 = call i32 @render_status_line_text(i32* %23, %struct.swaybar_output* %24, double* %25)
  store i32 %26, i32* %4, align 4
  br label %34

27:                                               ; preds = %3
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %30 = load double*, double** %7, align 8
  %31 = call i32 @render_status_line_i3bar(i32* %28, %struct.swaybar_output* %29, double* %30)
  store i32 %31, i32* %4, align 4
  br label %34

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %34

33:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %32, %27, %22, %17
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @render_status_line_error(i32*, %struct.swaybar_output*, double*) #1

declare dso_local i32 @render_status_line_text(i32*, %struct.swaybar_output*, double*) #1

declare dso_local i32 @render_status_line_i3bar(i32*, %struct.swaybar_output*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
