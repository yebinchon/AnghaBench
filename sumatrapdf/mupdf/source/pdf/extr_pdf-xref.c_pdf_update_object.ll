; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-xref.c_pdf_update_object.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-xref.c_pdf_update_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i32, i64 }

@.str = private unnamed_addr constant [43 x i8] c"object out of range (%d 0 R); xref size %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_update_object(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* %7, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @pdf_xref_len(i32* %14, i32* %15)
  %17 = icmp sge i32 %13, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %12, %4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @pdf_xref_len(i32* %21, i32* %22)
  %24 = call i32 @fz_warn(i32* %19, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  br label %56

25:                                               ; preds = %12
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @pdf_delete_object(i32* %29, i32* %30, i32 %31)
  br label %56

33:                                               ; preds = %25
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call %struct.TYPE_3__* @pdf_get_incremental_xref_entry(i32* %34, i32* %35, i32 %36)
  store %struct.TYPE_3__* %37, %struct.TYPE_3__** %9, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pdf_drop_obj(i32* %38, i32 %41)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i8 110, i8* %44, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @pdf_keep_obj(i32* %47, i32* %48)
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @pdf_set_obj_parent(i32* %52, i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %33, %28, %18
  ret void
}

declare dso_local i32 @pdf_xref_len(i32*, i32*) #1

declare dso_local i32 @fz_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @pdf_delete_object(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_3__* @pdf_get_incremental_xref_entry(i32*, i32*, i32) #1

declare dso_local i32 @pdf_drop_obj(i32*, i32) #1

declare dso_local i32 @pdf_keep_obj(i32*, i32*) #1

declare dso_local i32 @pdf_set_obj_parent(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
