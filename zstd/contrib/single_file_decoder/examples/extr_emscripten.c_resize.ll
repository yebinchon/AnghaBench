; ModuleID = '/home/carl/AnghaBench/zstd/contrib/single_file_decoder/examples/extr_emscripten.c_resize.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/single_file_decoder/examples/extr_emscripten.c_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"#canvas\00", align 1
@EMSCRIPTEN_RESULT_SUCCESS = common dso_local global i64 0, align 8
@glCtx = common dso_local global i64 0, align 8
@EM_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*)* @resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resize(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = call i64 @emscripten_get_element_css_size(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), double* %7, double* %8)
  %10 = load i64, i64* @EMSCRIPTEN_RESULT_SUCCESS, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %3
  %13 = load double, double* %7, align 8
  %14 = load double, double* %8, align 8
  %15 = call i32 @emscripten_set_canvas_element_size(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), double %13, double %14)
  %16 = load i64, i64* @glCtx, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load double, double* %7, align 8
  %20 = fptosi double %19 to i32
  %21 = load double, double* %8, align 8
  %22 = fptosi double %21 to i32
  %23 = call i32 @glViewport(i32 0, i32 0, i32 %20, i32 %22)
  br label %24

24:                                               ; preds = %18, %12
  br label %25

25:                                               ; preds = %24, %3
  %26 = load i32, i32* %4, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @EM_FALSE, align 4
  ret i32 %29
}

declare dso_local i64 @emscripten_get_element_css_size(i8*, double*, double*) #1

declare dso_local i32 @emscripten_set_canvas_element_size(i8*, double, double) #1

declare dso_local i32 @glViewport(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
