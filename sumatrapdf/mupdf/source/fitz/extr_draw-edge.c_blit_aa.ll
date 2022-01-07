; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-edge.c_blit_aa.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-edge.c_blit_aa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i8*, i32, i8*, i8*, i32*)* @blit_aa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blit_aa(%struct.TYPE_3__* %0, i32 %1, i32 %2, i8* %3, i32 %4, i8* %5, i8* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32* %7, i32** %16, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %21, %24
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %25, %28
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %30, %33
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %34, %37
  %39 = add nsw i32 %29, %38
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %20, i64 %40
  store i8* %41, i8** %17, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %8
  %45 = load i8*, i8** %15, align 8
  %46 = bitcast i8* %45 to i32 (i8*, i8*, i32, i32, i8*, i32, i32*)**
  %47 = load i32 (i8*, i8*, i32, i32, i8*, i32, i32*)*, i32 (i8*, i8*, i32, i32, i8*, i32, i32*)** %46, align 8
  %48 = load i8*, i8** %17, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i8*, i8** %14, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** %16, align 8
  %59 = call i32 %47(i8* %48, i8* %49, i32 %52, i32 %53, i8* %54, i32 %57, i32* %58)
  br label %72

60:                                               ; preds = %8
  %61 = load i8*, i8** %15, align 8
  %62 = bitcast i8* %61 to i32 (i8*, i32, i8*, i32, i32, i32, i32, i32*)**
  %63 = load i32 (i8*, i32, i8*, i32, i32, i32, i32, i32*)*, i32 (i8*, i32, i8*, i32, i32, i32, i32, i32*)** %62, align 8
  %64 = load i8*, i8** %17, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = load i32, i32* %13, align 4
  %70 = load i32*, i32** %16, align 8
  %71 = call i32 %63(i8* %64, i32 %67, i8* %68, i32 1, i32 0, i32 %69, i32 255, i32* %70)
  br label %72

72:                                               ; preds = %60, %44
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
