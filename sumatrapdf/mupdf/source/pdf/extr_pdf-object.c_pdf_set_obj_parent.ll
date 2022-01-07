; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_pdf_set_obj_parent.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_pdf_set_obj_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@PDF_LIMIT = common dso_local global %struct.TYPE_16__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_set_obj_parent(i32* %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** @PDF_LIMIT, align 8
  %11 = icmp ult %struct.TYPE_16__* %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %63

13:                                               ; preds = %3
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %63 [
    i32 129, label %17
    i32 128, label %40
  ]

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = call %struct.TYPE_15__* @ARRAY(%struct.TYPE_16__* %19)
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %24 = call i32 @pdf_array_len(i32* %22, %struct.TYPE_16__* %23)
  store i32 %24, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %36, %17
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call %struct.TYPE_16__* @pdf_array_get(i32* %31, %struct.TYPE_16__* %32, i32 %33)
  %35 = load i32, i32* %6, align 4
  call void @pdf_set_obj_parent(i32* %30, %struct.TYPE_16__* %34, i32 %35)
  br label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %25

39:                                               ; preds = %25
  br label %63

40:                                               ; preds = %13
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %43 = call %struct.TYPE_14__* @DICT(%struct.TYPE_16__* %42)
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %47 = call i32 @pdf_dict_len(i32* %45, %struct.TYPE_16__* %46)
  store i32 %47, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %59, %40
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load i32*, i32** %4, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call %struct.TYPE_16__* @pdf_dict_get_val(i32* %54, %struct.TYPE_16__* %55, i32 %56)
  %58 = load i32, i32* %6, align 4
  call void @pdf_set_obj_parent(i32* %53, %struct.TYPE_16__* %57, i32 %58)
  br label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %48

62:                                               ; preds = %48
  br label %63

63:                                               ; preds = %12, %13, %62, %39
  ret void
}

declare dso_local %struct.TYPE_15__* @ARRAY(%struct.TYPE_16__*) #1

declare dso_local i32 @pdf_array_len(i32*, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @pdf_array_get(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_14__* @DICT(%struct.TYPE_16__*) #1

declare dso_local i32 @pdf_dict_len(i32*, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @pdf_dict_get_val(i32*, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
