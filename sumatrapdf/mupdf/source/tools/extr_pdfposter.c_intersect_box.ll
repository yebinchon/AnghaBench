; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfposter.c_intersect_box.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfposter.c_intersect_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, %struct.TYPE_3__*)* @intersect_box to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intersect_box(i32* %0, i32* %1, i32* %2, i32* %3, %struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i32* @pdf_dict_get(i32* %13, i32* %14, i32* %15)
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %109

20:                                               ; preds = %5
  %21 = load i32*, i32** %6, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = call i8* @pdf_array_get_real(i32* %21, i32* %22, i32 0)
  %24 = ptrtoint i8* %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i64 %24, i64* %25, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = call i8* @pdf_array_get_real(i32* %26, i32* %27, i32 1)
  %29 = ptrtoint i8* %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i64 %29, i64* %30, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call i8* @pdf_array_get_real(i32* %31, i32* %32, i32 2)
  %34 = ptrtoint i8* %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store i64 %34, i64* %35, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i8* @pdf_array_get_real(i32* %36, i32* %37, i32 3)
  %39 = ptrtoint i8* %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  store i64 %39, i64* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %42, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %20
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %46, %20
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %52, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %56, %50
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %62, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store i64 %68, i64* %69, align 8
  br label %70

70:                                               ; preds = %66, %60
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %72, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  store i64 %78, i64* %79, align 8
  br label %80

80:                                               ; preds = %76, %70
  %81 = load i32*, i32** %6, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = call i32* @pdf_new_array(i32* %81, i32* %82, i32 4)
  store i32* %83, i32** %11, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @pdf_array_push_real(i32* %84, i32* %85, i64 %87)
  %89 = load i32*, i32** %6, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @pdf_array_push_real(i32* %89, i32* %90, i64 %92)
  %94 = load i32*, i32** %6, align 8
  %95 = load i32*, i32** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @pdf_array_push_real(i32* %94, i32* %95, i64 %97)
  %99 = load i32*, i32** %6, align 8
  %100 = load i32*, i32** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @pdf_array_push_real(i32* %99, i32* %100, i64 %102)
  %104 = load i32*, i32** %6, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = load i32*, i32** %9, align 8
  %107 = load i32*, i32** %11, align 8
  %108 = call i32 @pdf_dict_put_drop(i32* %104, i32* %105, i32* %106, i32* %107)
  br label %109

109:                                              ; preds = %80, %19
  ret void
}

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32*) #1

declare dso_local i8* @pdf_array_get_real(i32*, i32*, i32) #1

declare dso_local i32* @pdf_new_array(i32*, i32*, i32) #1

declare dso_local i32 @pdf_array_push_real(i32*, i32*, i64) #1

declare dso_local i32 @pdf_dict_put_drop(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
