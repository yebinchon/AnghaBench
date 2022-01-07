; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-basic.c_fz_concat_push_drop.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-basic.c_fz_concat_push_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.concat_filter = type { i64, i64, %struct.TYPE_5__** }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Concat filter size exceeded\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_concat_push_drop(i32* %0, %struct.TYPE_5__* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.concat_filter*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.concat_filter*
  store %struct.concat_filter* %11, %struct.concat_filter** %7, align 8
  %12 = load %struct.concat_filter*, %struct.concat_filter** %7, align 8
  %13 = getelementptr inbounds %struct.concat_filter, %struct.concat_filter* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.concat_filter*, %struct.concat_filter** %7, align 8
  %16 = getelementptr inbounds %struct.concat_filter, %struct.concat_filter* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = call i32 @fz_drop_stream(i32* %20, %struct.TYPE_5__* %21)
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %25 = call i32 @fz_throw(i32* %23, i32 %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %19, %3
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = load %struct.concat_filter*, %struct.concat_filter** %7, align 8
  %29 = getelementptr inbounds %struct.concat_filter, %struct.concat_filter* %28, i32 0, i32 2
  %30 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %29, align 8
  %31 = load %struct.concat_filter*, %struct.concat_filter** %7, align 8
  %32 = getelementptr inbounds %struct.concat_filter, %struct.concat_filter* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %30, i64 %33
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %35, align 8
  ret void
}

declare dso_local i32 @fz_drop_stream(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
