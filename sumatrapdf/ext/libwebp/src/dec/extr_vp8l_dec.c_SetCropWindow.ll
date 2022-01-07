; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_vp8l_dec.c_SetCropWindow.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_vp8l_dec.c_SetCropWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i32**, i32)* @SetCropWindow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetCropWindow(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32** %3, i32*** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %5
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %32, %5
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %36
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 %45, %46
  store i32 %47, i32* %12, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %11, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32**, i32*** %10, align 8
  %55 = load i32*, i32** %54, align 8
  %56 = sext i32 %53 to i64
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32* %57, i32** %54, align 8
  br label %58

58:                                               ; preds = %42, %36
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %93

63:                                               ; preds = %58
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = load i32**, i32*** %10, align 8
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 %68
  store i32* %71, i32** %69, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %72, %75
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %81, %84
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %8, align 4
  %90 = sub nsw i32 %88, %89
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 4
  store i32 1, i32* %6, align 4
  br label %93

93:                                               ; preds = %63, %62
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
