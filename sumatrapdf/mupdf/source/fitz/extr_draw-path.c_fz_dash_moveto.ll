; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_fz_dash_moveto.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_fz_dash_moveto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctx = type { i32, i64, i64, i64, i64*, i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.sctx*, float, float)* @fz_dash_moveto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_dash_moveto(i32* %0, %struct.sctx* %1, float %2, float %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sctx*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store i32* %0, i32** %5, align 8
  store %struct.sctx* %1, %struct.sctx** %6, align 8
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %9 = load %struct.sctx*, %struct.sctx** %6, align 8
  %10 = getelementptr inbounds %struct.sctx, %struct.sctx* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.sctx*, %struct.sctx** %6, align 8
  %12 = getelementptr inbounds %struct.sctx, %struct.sctx* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.sctx*, %struct.sctx** %6, align 8
  %14 = getelementptr inbounds %struct.sctx, %struct.sctx* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.sctx*, %struct.sctx** %6, align 8
  %17 = getelementptr inbounds %struct.sctx, %struct.sctx* %16, i32 0, i32 2
  store i64 %15, i64* %17, align 8
  br label %18

18:                                               ; preds = %73, %4
  %19 = load %struct.sctx*, %struct.sctx** %6, align 8
  %20 = getelementptr inbounds %struct.sctx, %struct.sctx* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = load %struct.sctx*, %struct.sctx** %6, align 8
  %25 = getelementptr inbounds %struct.sctx, %struct.sctx* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.sctx*, %struct.sctx** %6, align 8
  %28 = getelementptr inbounds %struct.sctx, %struct.sctx* %27, i32 0, i32 4
  %29 = load i64*, i64** %28, align 8
  %30 = load %struct.sctx*, %struct.sctx** %6, align 8
  %31 = getelementptr inbounds %struct.sctx, %struct.sctx* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i64, i64* %29, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %26, %34
  br label %36

36:                                               ; preds = %23, %18
  %37 = phi i1 [ false, %18 ], [ %35, %23 ]
  br i1 %37, label %38, label %74

38:                                               ; preds = %36
  %39 = load %struct.sctx*, %struct.sctx** %6, align 8
  %40 = getelementptr inbounds %struct.sctx, %struct.sctx* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load %struct.sctx*, %struct.sctx** %6, align 8
  %46 = getelementptr inbounds %struct.sctx, %struct.sctx* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.sctx*, %struct.sctx** %6, align 8
  %48 = getelementptr inbounds %struct.sctx, %struct.sctx* %47, i32 0, i32 4
  %49 = load i64*, i64** %48, align 8
  %50 = load %struct.sctx*, %struct.sctx** %6, align 8
  %51 = getelementptr inbounds %struct.sctx, %struct.sctx* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i64, i64* %49, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.sctx*, %struct.sctx** %6, align 8
  %56 = getelementptr inbounds %struct.sctx, %struct.sctx* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %57, %54
  store i64 %58, i64* %56, align 8
  %59 = load %struct.sctx*, %struct.sctx** %6, align 8
  %60 = getelementptr inbounds %struct.sctx, %struct.sctx* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %60, align 8
  %63 = load %struct.sctx*, %struct.sctx** %6, align 8
  %64 = getelementptr inbounds %struct.sctx, %struct.sctx* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.sctx*, %struct.sctx** %6, align 8
  %67 = getelementptr inbounds %struct.sctx, %struct.sctx* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %38
  %71 = load %struct.sctx*, %struct.sctx** %6, align 8
  %72 = getelementptr inbounds %struct.sctx, %struct.sctx* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %70, %38
  br label %18

74:                                               ; preds = %36
  %75 = load float, float* %7, align 4
  %76 = load %struct.sctx*, %struct.sctx** %6, align 8
  %77 = getelementptr inbounds %struct.sctx, %struct.sctx* %76, i32 0, i32 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store float %75, float* %78, align 4
  %79 = load float, float* %8, align 4
  %80 = load %struct.sctx*, %struct.sctx** %6, align 8
  %81 = getelementptr inbounds %struct.sctx, %struct.sctx* %80, i32 0, i32 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  store float %79, float* %82, align 4
  %83 = load %struct.sctx*, %struct.sctx** %6, align 8
  %84 = getelementptr inbounds %struct.sctx, %struct.sctx* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %111

87:                                               ; preds = %74
  %88 = load i32*, i32** %5, align 8
  %89 = load %struct.sctx*, %struct.sctx** %6, align 8
  %90 = load %struct.sctx*, %struct.sctx** %6, align 8
  %91 = getelementptr inbounds %struct.sctx, %struct.sctx* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.sctx*, %struct.sctx** %6, align 8
  %94 = getelementptr inbounds %struct.sctx, %struct.sctx* %93, i32 0, i32 6
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @fz_stroke_flush(i32* %88, %struct.sctx* %89, i32 %92, i32 %97)
  %99 = load %struct.sctx*, %struct.sctx** %6, align 8
  %100 = getelementptr inbounds %struct.sctx, %struct.sctx* %99, i32 0, i32 6
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.sctx*, %struct.sctx** %6, align 8
  %105 = getelementptr inbounds %struct.sctx, %struct.sctx* %104, i32 0, i32 7
  store i32 %103, i32* %105, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = load %struct.sctx*, %struct.sctx** %6, align 8
  %108 = load float, float* %7, align 4
  %109 = load float, float* %8, align 4
  %110 = call i32 @fz_stroke_moveto(i32* %106, %struct.sctx* %107, float %108, float %109)
  br label %111

111:                                              ; preds = %87, %74
  ret void
}

declare dso_local i32 @fz_stroke_flush(i32*, %struct.sctx*, i32, i32) #1

declare dso_local i32 @fz_stroke_moveto(i32*, %struct.sctx*, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
