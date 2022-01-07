; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-cmap.c_walk_splay.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-cmap.c_walk_splay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, void (%struct.TYPE_5__*, i8*)*, i8*)* @walk_splay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_splay(%struct.TYPE_5__* %0, i32 %1, void (%struct.TYPE_5__*, i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca void (%struct.TYPE_5__*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store void (%struct.TYPE_5__*, i8*)* %2, void (%struct.TYPE_5__*, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 128, i32* %9, align 4
  br label %11

11:                                               ; preds = %91, %4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @EMPTY, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %92

15:                                               ; preds = %11
  %16 = load i32, i32* %9, align 4
  switch i32 %16, label %91 [
    i32 128, label %17
    i32 130, label %34
    i32 129, label %57
  ]

17:                                               ; preds = %15
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @EMPTY, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  store i32 128, i32* %9, align 4
  br label %91

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %15, %33
  %35 = load void (%struct.TYPE_5__*, i8*)*, void (%struct.TYPE_5__*, i8*)** %7, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = load i8*, i8** %8, align 8
  call void %35(%struct.TYPE_5__* %39, i8* %40)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @EMPTY, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %34
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %6, align 4
  store i32 128, i32* %9, align 4
  br label %91

56:                                               ; preds = %34
  br label %57

57:                                               ; preds = %15, %56
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @EMPTY, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %92

68:                                               ; preds = %57
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = load i32, i32* %10, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  store i32 130, i32* %9, align 4
  br label %89

78:                                               ; preds = %68
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = load i32, i32* %10, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  store i32 129, i32* %9, align 4
  br label %89

89:                                               ; preds = %78, %77
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %89, %15, %49, %26
  br label %11

92:                                               ; preds = %67, %11
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
