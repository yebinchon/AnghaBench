; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_pdf_dict_get.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_pdf_dict_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@PDF_LIMIT = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pdf_dict_get(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i32 @RESOLVE(i32* %9)
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @OBJ_IS_DICT(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %50

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @OBJ_IS_NAME(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i32* null, i32** %4, align 8
  br label %50

20:                                               ; preds = %15
  %21 = load i32*, i32** %7, align 8
  %22 = load i32*, i32** @PDF_LIMIT, align 8
  %23 = icmp ult i32* %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @pdf_dict_find(i32* %25, i32* %26, i32* %27)
  store i32 %28, i32* %8, align 4
  br label %36

29:                                               ; preds = %20
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @pdf_to_name(i32* %32, i32* %33)
  %35 = call i32 @pdf_dict_finds(i32* %30, i32* %31, i32 %34)
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %29, %24
  %37 = load i32, i32* %8, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load i32*, i32** %6, align 8
  %41 = call %struct.TYPE_4__* @DICT(i32* %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %4, align 8
  br label %50

49:                                               ; preds = %36
  store i32* null, i32** %4, align 8
  br label %50

50:                                               ; preds = %49, %39, %19, %14
  %51 = load i32*, i32** %4, align 8
  ret i32* %51
}

declare dso_local i32 @RESOLVE(i32*) #1

declare dso_local i32 @OBJ_IS_DICT(i32*) #1

declare dso_local i32 @OBJ_IS_NAME(i32*) #1

declare dso_local i32 @pdf_dict_find(i32*, i32*, i32*) #1

declare dso_local i32 @pdf_dict_finds(i32*, i32*, i32) #1

declare dso_local i32 @pdf_to_name(i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @DICT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
