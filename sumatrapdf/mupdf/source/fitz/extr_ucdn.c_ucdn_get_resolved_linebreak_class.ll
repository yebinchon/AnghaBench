; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_ucdn.c_ucdn_get_resolved_linebreak_class.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_ucdn.c_ucdn_get_resolved_linebreak_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@UCDN_LINEBREAK_CLASS_AL = common dso_local global i32 0, align 4
@UCDN_GENERAL_CATEGORY_MC = common dso_local global i32 0, align 4
@UCDN_GENERAL_CATEGORY_MN = common dso_local global i32 0, align 4
@UCDN_LINEBREAK_CLASS_CM = common dso_local global i32 0, align 4
@UCDN_LINEBREAK_CLASS_NS = common dso_local global i32 0, align 4
@UCDN_LINEBREAK_CLASS_B2 = common dso_local global i32 0, align 4
@UCDN_LINEBREAK_CLASS_BK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ucdn_get_resolved_linebreak_class(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.TYPE_3__* @get_ucd_record(i32 %5)
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %34 [
    i32 134, label %10
    i32 129, label %10
    i32 128, label %10
    i32 130, label %12
    i32 132, label %28
    i32 133, label %30
    i32 131, label %32
  ]

10:                                               ; preds = %1, %1, %1
  %11 = load i32, i32* @UCDN_LINEBREAK_CLASS_AL, align 4
  store i32 %11, i32* %2, align 4
  br label %38

12:                                               ; preds = %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @UCDN_GENERAL_CATEGORY_MC, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @UCDN_GENERAL_CATEGORY_MN, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18, %12
  %25 = load i32, i32* @UCDN_LINEBREAK_CLASS_CM, align 4
  store i32 %25, i32* %2, align 4
  br label %38

26:                                               ; preds = %18
  %27 = load i32, i32* @UCDN_LINEBREAK_CLASS_AL, align 4
  store i32 %27, i32* %2, align 4
  br label %38

28:                                               ; preds = %1
  %29 = load i32, i32* @UCDN_LINEBREAK_CLASS_NS, align 4
  store i32 %29, i32* %2, align 4
  br label %38

30:                                               ; preds = %1
  %31 = load i32, i32* @UCDN_LINEBREAK_CLASS_B2, align 4
  store i32 %31, i32* %2, align 4
  br label %38

32:                                               ; preds = %1
  %33 = load i32, i32* @UCDN_LINEBREAK_CLASS_BK, align 4
  store i32 %33, i32* %2, align 4
  br label %38

34:                                               ; preds = %1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %32, %30, %28, %26, %24, %10
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.TYPE_3__* @get_ucd_record(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
