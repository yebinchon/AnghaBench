; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-xref.c_pdf_update_stream.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-xref.c_pdf_update_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"object out of range (%d 0 R); xref size %d\00", align 1
@Length = common dso_local global i32 0, align 4
@Filter = common dso_local global i32 0, align 4
@DecodeParms = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_update_stream(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call i64 @pdf_is_indirect(i32* %13, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @pdf_to_num(i32* %18, i32* %19)
  store i32 %20, i32* %11, align 4
  br label %25

21:                                               ; preds = %5
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @pdf_obj_parent_num(i32* %22, i32* %23)
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i32, i32* %11, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %11, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @pdf_xref_len(i32* %30, i32* %31)
  %33 = icmp sge i32 %29, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28, %25
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @pdf_xref_len(i32* %37, i32* %38)
  %40 = call i32 @fz_warn(i32* %35, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39)
  br label %78

41:                                               ; preds = %28
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call %struct.TYPE_3__* @pdf_get_xref_entry(i32* %42, i32* %43, i32 %44)
  store %struct.TYPE_3__* %45, %struct.TYPE_3__** %12, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @fz_drop_buffer(i32* %46, i32 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @fz_keep_buffer(i32* %51, i32* %52)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* @Length, align 4
  %59 = call i32 @PDF_NAME(i32 %58)
  %60 = load i32*, i32** %6, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call i64 @fz_buffer_storage(i32* %60, i32* %61, i32* null)
  %63 = trunc i64 %62 to i32
  %64 = call i32 @pdf_dict_put_int(i32* %56, i32* %57, i32 %59, i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %41
  %68 = load i32*, i32** %6, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* @Filter, align 4
  %71 = call i32 @PDF_NAME(i32 %70)
  %72 = call i32 @pdf_dict_del(i32* %68, i32* %69, i32 %71)
  %73 = load i32*, i32** %6, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* @DecodeParms, align 4
  %76 = call i32 @PDF_NAME(i32 %75)
  %77 = call i32 @pdf_dict_del(i32* %73, i32* %74, i32 %76)
  br label %78

78:                                               ; preds = %34, %67, %41
  ret void
}

declare dso_local i64 @pdf_is_indirect(i32*, i32*) #1

declare dso_local i32 @pdf_to_num(i32*, i32*) #1

declare dso_local i32 @pdf_obj_parent_num(i32*, i32*) #1

declare dso_local i32 @pdf_xref_len(i32*, i32*) #1

declare dso_local i32 @fz_warn(i32*, i8*, i32, i32) #1

declare dso_local %struct.TYPE_3__* @pdf_get_xref_entry(i32*, i32*, i32) #1

declare dso_local i32 @fz_drop_buffer(i32*, i32) #1

declare dso_local i32 @fz_keep_buffer(i32*, i32*) #1

declare dso_local i32 @pdf_dict_put_int(i32*, i32*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i64 @fz_buffer_storage(i32*, i32*, i32*) #1

declare dso_local i32 @pdf_dict_del(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
