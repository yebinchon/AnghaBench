; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output.c_fz_seek_output.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output.c_fz_seek_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 (i32*, i32, i32, i32)* }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Cannot seek in unseekable output stream\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_seek_output(i32* %0, %struct.TYPE_4__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** %10, align 8
  %12 = icmp eq i32 (i32*, i32, i32, i32)* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %16 = call i32 @fz_throw(i32* %14, i32 %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %13, %4
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = call i32 @fz_flush_output(i32* %18, %struct.TYPE_4__* %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** %22, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 %23(i32* %24, i32 %27, i32 %28, i32 %29)
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @fz_flush_output(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
