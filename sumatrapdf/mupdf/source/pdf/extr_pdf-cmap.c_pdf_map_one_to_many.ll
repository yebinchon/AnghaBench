; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-cmap.c_pdf_map_one_to_many.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-cmap.c_pdf_map_one_to_many.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@PDF_MRANGE_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ignoring one to many mapping in cmap %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_map_one_to_many(i32* %0, %struct.TYPE_5__* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %23

14:                                               ; preds = %5
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @add_range(i32* %15, %struct.TYPE_5__* %16, i32 %17, i32 %18, i32 %21, i32 1, i32 0)
  br label %81

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %64

26:                                               ; preds = %23
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %29, 55296
  br i1 %30, label %31, label %64

31:                                               ; preds = %26
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sle i32 %34, 56319
  br i1 %35, label %36, label %64

36:                                               ; preds = %31
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %39, 56320
  br i1 %40, label %41, label %64

41:                                               ; preds = %36
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp sle i32 %44, 57343
  br i1 %45, label %46, label %64

46:                                               ; preds = %41
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 55296
  %51 = shl i32 %50, 10
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 56320
  %56 = add nsw i32 %51, %55
  %57 = add nsw i32 %56, 65536
  store i32 %57, i32* %11, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @add_range(i32* %58, %struct.TYPE_5__* %59, i32 %60, i32 %61, i32 %62, i32 1, i32 0)
  br label %81

64:                                               ; preds = %41, %36, %31, %26, %23
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @PDF_MRANGE_CAP, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i32*, i32** %6, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @fz_warn(i32* %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %81

74:                                               ; preds = %64
  %75 = load i32*, i32** %6, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @add_mrange(i32* %75, %struct.TYPE_5__* %76, i32 %77, i32* %78, i32 %79)
  br label %81

81:                                               ; preds = %74, %68, %46, %14
  ret void
}

declare dso_local i32 @add_range(i32*, %struct.TYPE_5__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fz_warn(i32*, i8*, i32) #1

declare dso_local i32 @add_mrange(i32*, %struct.TYPE_5__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
