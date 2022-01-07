; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-input.c_ui_input_init.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-input.c_ui_input_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input = type { i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_input_init(%struct.input* %0, i8* %1) #0 {
  %3 = alloca %struct.input*, align 8
  %4 = alloca i8*, align 8
  store %struct.input* %0, %struct.input** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.input*, %struct.input** %3, align 8
  %6 = getelementptr inbounds %struct.input, %struct.input* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @fz_strlcpy(i64 %7, i8* %8, i32 8)
  %10 = load %struct.input*, %struct.input** %3, align 8
  %11 = getelementptr inbounds %struct.input, %struct.input* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.input*, %struct.input** %3, align 8
  %14 = getelementptr inbounds %struct.input, %struct.input* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @strlen(i64 %15)
  %17 = add nsw i64 %12, %16
  %18 = load %struct.input*, %struct.input** %3, align 8
  %19 = getelementptr inbounds %struct.input, %struct.input* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load %struct.input*, %struct.input** %3, align 8
  %21 = getelementptr inbounds %struct.input, %struct.input* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.input*, %struct.input** %3, align 8
  %24 = getelementptr inbounds %struct.input, %struct.input* %23, i32 0, i32 4
  store i64 %22, i64* %24, align 8
  %25 = load %struct.input*, %struct.input** %3, align 8
  %26 = getelementptr inbounds %struct.input, %struct.input* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.input*, %struct.input** %3, align 8
  %29 = getelementptr inbounds %struct.input, %struct.input* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  %30 = load %struct.input*, %struct.input** %3, align 8
  %31 = getelementptr inbounds %struct.input, %struct.input* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  ret void
}

declare dso_local i32 @fz_strlcpy(i64, i8*, i32) #1

declare dso_local i64 @strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
