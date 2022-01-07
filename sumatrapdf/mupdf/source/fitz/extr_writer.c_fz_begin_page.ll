; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_writer.c_fz_begin_page.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_writer.c_fz_begin_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, {}* }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"called begin page without ending the previous page\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @fz_begin_page(i32* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %34

11:                                               ; preds = %3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %19 = call i32 @fz_throw(i32* %17, i32 %18, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %16, %11
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = bitcast {}** %22 to i32* (i32*, %struct.TYPE_4__*, i32)**
  %24 = load i32* (i32*, %struct.TYPE_4__*, i32)*, i32* (i32*, %struct.TYPE_4__*, i32)** %23, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32* %24(i32* %25, %struct.TYPE_4__* %26, i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32* %28, i32** %30, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %4, align 8
  br label %34

34:                                               ; preds = %20, %10
  %35 = load i32*, i32** %4, align 8
  ret i32* %35
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
