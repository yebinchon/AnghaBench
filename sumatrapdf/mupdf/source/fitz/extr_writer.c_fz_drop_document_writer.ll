; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_writer.c_fz_drop_document_writer.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_writer.c_fz_drop_document_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 (i32*, %struct.TYPE_5__*)*, i64 }

@.str = private unnamed_addr constant [34 x i8] c"dropping unclosed document writer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_drop_document_writer(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %6 = icmp ne %struct.TYPE_5__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %43

8:                                                ; preds = %2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @fz_warn(i32* %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32 (i32*, %struct.TYPE_5__*)*, i32 (i32*, %struct.TYPE_5__*)** %18, align 8
  %20 = icmp ne i32 (i32*, %struct.TYPE_5__*)* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32 (i32*, %struct.TYPE_5__*)*, i32 (i32*, %struct.TYPE_5__*)** %23, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = call i32 %24(i32* %25, %struct.TYPE_5__* %26)
  br label %28

28:                                               ; preds = %21, %16
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32*, i32** %3, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @fz_drop_device(i32* %34, i64 %37)
  br label %39

39:                                               ; preds = %33, %28
  %40 = load i32*, i32** %3, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = call i32 @fz_free(i32* %40, %struct.TYPE_5__* %41)
  br label %43

43:                                               ; preds = %39, %7
  ret void
}

declare dso_local i32 @fz_warn(i32*, i8*) #1

declare dso_local i32 @fz_drop_device(i32*, i64) #1

declare dso_local i32 @fz_free(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
