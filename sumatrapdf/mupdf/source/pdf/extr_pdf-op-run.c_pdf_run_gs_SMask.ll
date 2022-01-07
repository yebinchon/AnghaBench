; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-run.c_pdf_run_gs_SMask.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-run.c_pdf_run_gs_SMask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float*, i32, i32*, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, float*, i32)* @pdf_run_gs_SMask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_run_gs_SMask(i32* %0, i32* %1, i32* %2, i32* %3, float* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store float* %4, float** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = load i32*, i32** %8, align 8
  store i32* %18, i32** %13, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %13, align 8
  %21 = call %struct.TYPE_3__* @pdf_flush_text(i32* %19, i32* %20)
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %14, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %6
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @pdf_drop_obj(i32* %27, i32* %30)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  store i32* null, i32** %33, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @pdf_drop_obj(i32* %34, i32* %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %26, %6
  %42 = load i32*, i32** %9, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %98

44:                                               ; preds = %41
  %45 = load i32*, i32** %7, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i32* @pdf_xobject_colorspace(i32* %45, i32* %46)
  store i32* %47, i32** %16, align 8
  store i32 1, i32* %17, align 4
  %48 = load i32*, i32** %16, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32*, i32** %7, align 8
  %52 = load i32*, i32** %16, align 8
  %53 = call i32 @fz_colorspace_n(i32* %51, i32* %52)
  store i32 %53, i32* %17, align 4
  br label %54

54:                                               ; preds = %50, %44
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call i8* @pdf_keep_obj(i32* %60, i32* %61)
  %63 = bitcast i8* %62 to i32*
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  store i32* %63, i32** %65, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = call i8* @pdf_keep_obj(i32* %66, i32* %67)
  %69 = bitcast i8* %68 to i32*
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  store i32* %69, i32** %71, align 8
  store i32 0, i32* %15, align 4
  br label %72

72:                                               ; preds = %88, %54
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %17, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %72
  %77 = load float*, float** %11, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %77, i64 %79
  %81 = load float, float* %80, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load float*, float** %83, align 8
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %84, i64 %86
  store float %81, float* %87, align 4
  br label %88

88:                                               ; preds = %76
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %15, align 4
  br label %72

91:                                               ; preds = %72
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = load i32*, i32** %16, align 8
  %97 = call i32 @fz_drop_colorspace(i32* %95, i32* %96)
  br label %98

98:                                               ; preds = %91, %41
  ret void
}

declare dso_local %struct.TYPE_3__* @pdf_flush_text(i32*, i32*) #1

declare dso_local i32 @pdf_drop_obj(i32*, i32*) #1

declare dso_local i32* @pdf_xobject_colorspace(i32*, i32*) #1

declare dso_local i32 @fz_colorspace_n(i32*, i32*) #1

declare dso_local i8* @pdf_keep_obj(i32*, i32*) #1

declare dso_local i32 @fz_drop_colorspace(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
