; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-filter.c_mcid_char_imp.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-filter.c_mcid_char_imp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__, %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i32, i32* }

@E = common dso_local global i32 0, align 4
@T = common dso_local global i32 0, align 4
@ActualText = common dso_local global i32 0, align 4
@Alt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_4__*, i32, i32)* @mcid_char_imp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcid_char_imp(i32* %0, i32* %1, %struct.TYPE_4__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  br label %135

16:                                               ; preds = %5
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* @E, align 4
  %25 = call i32 @PDF_NAME(i32 %24)
  %26 = call i32 @pdf_dict_del(i32* %20, i32* %23, i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* @T, align 4
  %32 = call i32 @PDF_NAME(i32 %31)
  %33 = call i32 @pdf_dict_del(i32* %27, i32* %30, i32 %32)
  br label %34

34:                                               ; preds = %19, %16
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = call i32 @walk_string(i32* %35, i32 %36, i32 %37, %struct.TYPE_5__* %39)
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @walk_string(i32* %41, i32 %42, i32 %43, %struct.TYPE_5__* %45)
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %34
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, -1
  br label %61

61:                                               ; preds = %55, %49
  %62 = phi i1 [ true, %49 ], [ %60, %55 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %10, align 4
  br label %78

64:                                               ; preds = %34
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70, %64
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %76, %70
  br label %78

78:                                               ; preds = %77, %61
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %135

81:                                               ; preds = %78
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %95

87:                                               ; preds = %81
  %88 = load i32*, i32** %6, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* @ActualText, align 4
  %93 = call i32 @PDF_NAME(i32 %92)
  %94 = call i32 @pdf_dict_del(i32* %88, i32* %91, i32 %93)
  br label %95

95:                                               ; preds = %87, %81
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %109

101:                                              ; preds = %95
  %102 = load i32*, i32** %6, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* @Alt, align 4
  %107 = call i32 @PDF_NAME(i32 %106)
  %108 = call i32 @pdf_dict_del(i32* %102, i32* %105, i32 %107)
  br label %109

109:                                              ; preds = %101, %95
  %110 = load i32*, i32** %6, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @pdf_drop_obj(i32* %110, i32* %113)
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  store i32* null, i32** %116, align 8
  %117 = load i32*, i32** %6, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @fz_free(i32* %117, i32* %121)
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  store i32* null, i32** %125, align 8
  %126 = load i32*, i32** %6, align 8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @fz_free(i32* %126, i32* %130)
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  store i32* null, i32** %134, align 8
  br label %135

135:                                              ; preds = %15, %109, %78
  ret void
}

declare dso_local i32 @pdf_dict_del(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @walk_string(i32*, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @pdf_drop_obj(i32*, i32*) #1

declare dso_local i32 @fz_free(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
