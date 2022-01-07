; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-write.c_linearize.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-write.c_linearize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32, i32*, i32*, i32 }

@order_ge = common dso_local global i32 0, align 4
@USE_PARAMS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_7__*)* @linearize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linearize(i32* %0, i32* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @pdf_xref_len(i32* %11, i32* %12)
  %14 = add nsw i32 %13, 2
  store i32 %14, i32* %8, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @page_objects_list_create(i32* %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @pdf_localise_page_resources(i32* %19, i32* %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = trunc i64 %27 to i32
  %29 = call i32 @memset(i32* %24, i32 0, i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @pdf_trailer(i32* %33, i32* %34)
  %36 = call i32 @mark_trailer(i32* %30, i32* %31, %struct.TYPE_7__* %32, i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = call i32 @add_linearization_objs(i32* %37, i32* %38, %struct.TYPE_7__* %39)
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32* @fz_calloc(i32* %41, i32 %42, i32 4)
  store i32* %43, i32** %9, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32* @fz_calloc(i32* %44, i32 %45, i32 4)
  store i32* %46, i32** %10, align 8
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %57, %3
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %47

60:                                               ; preds = %47
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %63, 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @heap_sort(i32* %62, i32 %64, i32* %67, i32* @order_ge)
  store i32 1, i32* %7, align 4
  br label %69

69:                                               ; preds = %85, %60
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %72, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @USE_PARAMS, align 4
  %82 = and i32 %80, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %69
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %69

88:                                               ; preds = %69
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 8
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %123, %88
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %126

96:                                               ; preds = %92
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %100, i64 %106
  store i32 %97, i32* %107, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %110, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %10, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %118, i32* %122, align 4
  br label %123

123:                                              ; preds = %96
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %92

126:                                              ; preds = %92
  %127 = load i32*, i32** %4, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @fz_free(i32* %127, i32* %130)
  %132 = load i32*, i32** %10, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 3
  store i32* %132, i32** %134, align 8
  %135 = load i32*, i32** %4, align 8
  %136 = load i32*, i32** %9, align 8
  %137 = call i32 @fz_free(i32* %135, i32* %136)
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %139 = call i32 @page_objects_list_renumber(%struct.TYPE_7__* %138)
  %140 = load i32*, i32** %4, align 8
  %141 = load i32*, i32** %5, align 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %143 = call i32 @renumberobjs(i32* %140, i32* %141, %struct.TYPE_7__* %142)
  %144 = load i32*, i32** %4, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @page_objects_list_sort_and_dedupe(i32* %144, i32 %147)
  ret void
}

declare dso_local i32 @pdf_xref_len(i32*, i32*) #1

declare dso_local i32 @page_objects_list_create(i32*) #1

declare dso_local i32 @pdf_localise_page_resources(i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mark_trailer(i32*, i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @pdf_trailer(i32*, i32*) #1

declare dso_local i32 @add_linearization_objs(i32*, i32*, %struct.TYPE_7__*) #1

declare dso_local i32* @fz_calloc(i32*, i32, i32) #1

declare dso_local i32 @heap_sort(i32*, i32, i32*, i32*) #1

declare dso_local i32 @fz_free(i32*, i32*) #1

declare dso_local i32 @page_objects_list_renumber(%struct.TYPE_7__*) #1

declare dso_local i32 @renumberobjs(i32*, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @page_objects_list_sort_and_dedupe(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
