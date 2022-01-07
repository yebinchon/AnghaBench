; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/docs/examples/extr_multi-threaded.c_renderer.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/docs/examples/extr_multi-threaded.c_renderer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { i32, i32*, i32, i32*, i32* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"thread at page %d loading!\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"thread at page %d rendering!\0A\00", align 1
@fz_identity = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"thread at page %d done!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @renderer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.data*
  %11 = getelementptr inbounds %struct.data, %struct.data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %3, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.data*
  %15 = getelementptr inbounds %struct.data, %struct.data* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %4, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = bitcast i8* %17 to %struct.data*
  %19 = getelementptr inbounds %struct.data, %struct.data* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %5, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = bitcast i8* %21 to %struct.data*
  %23 = getelementptr inbounds %struct.data, %struct.data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  %25 = load i8*, i8** %2, align 8
  %26 = bitcast i8* %25 to %struct.data*
  %27 = getelementptr inbounds %struct.data, %struct.data* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %7, align 8
  %29 = load i32, i32* @stderr, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32* @fz_clone_context(i32* %32)
  store i32* %33, i32** %4, align 8
  %34 = load i32, i32* @stderr, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32* @fz_new_draw_device(i32* %37, i32* @fz_identity, i32* %38)
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @fz_run_display_list(i32* %40, i32* %41, i32* %42, i32* @fz_identity, i32* %6, i32* null)
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @fz_close_device(i32* %44, i32* %45)
  %47 = load i32*, i32** %4, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @fz_drop_device(i32* %47, i32* %48)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @fz_drop_context(i32* %50)
  %52 = load i32, i32* @stderr, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @fprintf(i32 %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i8*, i8** %2, align 8
  ret i8* %55
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32* @fz_clone_context(i32*) #1

declare dso_local i32* @fz_new_draw_device(i32*, i32*, i32*) #1

declare dso_local i32 @fz_run_display_list(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @fz_close_device(i32*, i32*) #1

declare dso_local i32 @fz_drop_device(i32*, i32*) #1

declare dso_local i32 @fz_drop_context(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
