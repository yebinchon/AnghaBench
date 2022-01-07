; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-gradient.c_xps_sample_gradient_stops.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-gradient.c_xps_sample_gradient_stops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*** }
%struct.stop = type { float, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_3__*, %struct.stop*, i32)* @xps_sample_gradient_stops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xps_sample_gradient_stops(i32* %0, i32* %1, %struct.TYPE_3__* %2, %struct.stop* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %struct.stop*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store %struct.stop* %3, %struct.stop** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %15

15:                                               ; preds = %158, %5
  %16 = load i32, i32* %13, align 4
  %17 = icmp slt i32 %16, 256
  br i1 %17, label %18, label %161

18:                                               ; preds = %15
  %19 = load i32, i32* %13, align 4
  %20 = sitofp i32 %19 to float
  %21 = fdiv float %20, 2.550000e+02
  store float %21, float* %11, align 4
  br label %22

22:                                               ; preds = %39, %18
  %23 = load i32, i32* %14, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load float, float* %11, align 4
  %29 = load %struct.stop*, %struct.stop** %9, align 8
  %30 = load i32, i32* %14, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.stop, %struct.stop* %29, i64 %32
  %34 = getelementptr inbounds %struct.stop, %struct.stop* %33, i32 0, i32 0
  %35 = load float, float* %34, align 4
  %36 = fcmp ogt float %28, %35
  br label %37

37:                                               ; preds = %27, %22
  %38 = phi i1 [ false, %22 ], [ %36, %27 ]
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = load i32, i32* %14, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %14, align 4
  br label %22

42:                                               ; preds = %37
  %43 = load float, float* %11, align 4
  %44 = load %struct.stop*, %struct.stop** %9, align 8
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.stop, %struct.stop* %44, i64 %46
  %48 = getelementptr inbounds %struct.stop, %struct.stop* %47, i32 0, i32 0
  %49 = load float, float* %48, align 4
  %50 = fsub float %43, %49
  %51 = load %struct.stop*, %struct.stop** %9, align 8
  %52 = load i32, i32* %14, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.stop, %struct.stop* %51, i64 %54
  %56 = getelementptr inbounds %struct.stop, %struct.stop* %55, i32 0, i32 0
  %57 = load float, float* %56, align 4
  %58 = load %struct.stop*, %struct.stop** %9, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.stop, %struct.stop* %58, i64 %60
  %62 = getelementptr inbounds %struct.stop, %struct.stop* %61, i32 0, i32 0
  %63 = load float, float* %62, align 4
  %64 = fsub float %57, %63
  %65 = fdiv float %50, %64
  store float %65, float* %12, align 4
  %66 = load %struct.stop*, %struct.stop** %9, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.stop, %struct.stop* %66, i64 %68
  %70 = getelementptr inbounds %struct.stop, %struct.stop* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.stop*, %struct.stop** %9, align 8
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.stop, %struct.stop* %72, i64 %75
  %77 = getelementptr inbounds %struct.stop, %struct.stop* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load float, float* %12, align 4
  %80 = call i8* @lerp(i32 %71, i32 %78, float %79)
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i8***, i8**** %82, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8**, i8*** %83, i64 %85
  %87 = load i8**, i8*** %86, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 0
  store i8* %80, i8** %88, align 8
  %89 = load %struct.stop*, %struct.stop** %9, align 8
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.stop, %struct.stop* %89, i64 %91
  %93 = getelementptr inbounds %struct.stop, %struct.stop* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.stop*, %struct.stop** %9, align 8
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.stop, %struct.stop* %95, i64 %98
  %100 = getelementptr inbounds %struct.stop, %struct.stop* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load float, float* %12, align 4
  %103 = call i8* @lerp(i32 %94, i32 %101, float %102)
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i8***, i8**** %105, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8**, i8*** %106, i64 %108
  %110 = load i8**, i8*** %109, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 1
  store i8* %103, i8** %111, align 8
  %112 = load %struct.stop*, %struct.stop** %9, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.stop, %struct.stop* %112, i64 %114
  %116 = getelementptr inbounds %struct.stop, %struct.stop* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.stop*, %struct.stop** %9, align 8
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.stop, %struct.stop* %118, i64 %121
  %123 = getelementptr inbounds %struct.stop, %struct.stop* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load float, float* %12, align 4
  %126 = call i8* @lerp(i32 %117, i32 %124, float %125)
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i8***, i8**** %128, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8**, i8*** %129, i64 %131
  %133 = load i8**, i8*** %132, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 2
  store i8* %126, i8** %134, align 8
  %135 = load %struct.stop*, %struct.stop** %9, align 8
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.stop, %struct.stop* %135, i64 %137
  %139 = getelementptr inbounds %struct.stop, %struct.stop* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.stop*, %struct.stop** %9, align 8
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.stop, %struct.stop* %141, i64 %144
  %146 = getelementptr inbounds %struct.stop, %struct.stop* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load float, float* %12, align 4
  %149 = call i8* @lerp(i32 %140, i32 %147, float %148)
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load i8***, i8**** %151, align 8
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8**, i8*** %152, i64 %154
  %156 = load i8**, i8*** %155, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 3
  store i8* %149, i8** %157, align 8
  br label %158

158:                                              ; preds = %42
  %159 = load i32, i32* %13, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %13, align 4
  br label %15

161:                                              ; preds = %15
  ret void
}

declare dso_local i8* @lerp(i32, i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
