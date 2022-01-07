; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-search.c_on_highlight_char.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-search.c_on_highlight_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { float, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.highlight = type { float, float, i32, i32, %struct.TYPE_8__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.TYPE_6__*, %struct.TYPE_7__*)* @on_highlight_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_highlight_char(i32* %0, i8* %1, %struct.TYPE_6__* %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.highlight*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.highlight*
  store %struct.highlight* %14, %struct.highlight** %9, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load float, float* %16, align 4
  %18 = load %struct.highlight*, %struct.highlight** %9, align 8
  %19 = getelementptr inbounds %struct.highlight, %struct.highlight* %18, i32 0, i32 0
  %20 = load float, float* %19, align 8
  %21 = fmul float %17, %20
  store float %21, float* %10, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load float, float* %23, align 4
  %25 = load %struct.highlight*, %struct.highlight** %9, align 8
  %26 = getelementptr inbounds %struct.highlight, %struct.highlight* %25, i32 0, i32 1
  %27 = load float, float* %26, align 4
  %28 = fmul float %24, %27
  store float %28, float* %11, align 4
  %29 = load %struct.highlight*, %struct.highlight** %9, align 8
  %30 = getelementptr inbounds %struct.highlight, %struct.highlight* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %100

33:                                               ; preds = %4
  %34 = load %struct.highlight*, %struct.highlight** %9, align 8
  %35 = getelementptr inbounds %struct.highlight, %struct.highlight* %34, i32 0, i32 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = load %struct.highlight*, %struct.highlight** %9, align 8
  %38 = getelementptr inbounds %struct.highlight, %struct.highlight* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 %41
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %12, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  %50 = call float @hdist(i32* %44, i32* %46, i32* %49)
  %51 = load float, float* %11, align 4
  %52 = fcmp olt float %50, %51
  br i1 %52, label %53, label %99

53:                                               ; preds = %33
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  %61 = call float @vdist(i32* %55, i32* %57, i32* %60)
  %62 = load float, float* %10, align 4
  %63 = fcmp olt float %61, %62
  br i1 %63, label %64, label %99

64:                                               ; preds = %53
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = call float @hdist(i32* %66, i32* %68, i32* %71)
  %73 = load float, float* %11, align 4
  %74 = fcmp olt float %72, %73
  br i1 %74, label %75, label %99

75:                                               ; preds = %64
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = call float @vdist(i32* %77, i32* %79, i32* %82)
  %84 = load float, float* %10, align 4
  %85 = fcmp olt float %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %75
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  br label %122

99:                                               ; preds = %75, %64, %53, %33
  br label %100

100:                                              ; preds = %99, %4
  %101 = load %struct.highlight*, %struct.highlight** %9, align 8
  %102 = getelementptr inbounds %struct.highlight, %struct.highlight* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.highlight*, %struct.highlight** %9, align 8
  %105 = getelementptr inbounds %struct.highlight, %struct.highlight* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %100
  %109 = load %struct.highlight*, %struct.highlight** %9, align 8
  %110 = getelementptr inbounds %struct.highlight, %struct.highlight* %109, i32 0, i32 4
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = load %struct.highlight*, %struct.highlight** %9, align 8
  %113 = getelementptr inbounds %struct.highlight, %struct.highlight* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i64 %116
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = bitcast %struct.TYPE_8__* %117 to i8*
  %121 = bitcast %struct.TYPE_8__* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %120, i8* align 4 %121, i64 16, i1 false)
  br label %122

122:                                              ; preds = %86, %108, %100
  ret void
}

declare dso_local float @hdist(i32*, i32*, i32*) #1

declare dso_local float @vdist(i32*, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
