; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_transition.c_fz_generate_transition.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_transition.c_fz_generate_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fz_generate_transition(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, %struct.TYPE_3__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %13, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %17 [
    i32 129, label %18
    i32 130, label %24
    i32 128, label %41
  ]

17:                                               ; preds = %6
  br label %18

18:                                               ; preds = %6, %17
  %19 = load i32*, i32** %9, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @fade(i32* %19, i32* %20, i32* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  br label %76

24:                                               ; preds = %6
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @blind_vertical(i32* %30, i32* %31, i32* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  br label %76

35:                                               ; preds = %24
  %36 = load i32*, i32** %9, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @blind_horiz(i32* %36, i32* %37, i32* %38, i32 %39)
  store i32 %40, i32* %7, align 4
  br label %76

41:                                               ; preds = %6
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 45
  %46 = add nsw i32 %45, 360
  %47 = srem i32 %46, 360
  %48 = sdiv i32 %47, 90
  switch i32 %48, label %49 [
    i32 0, label %50
    i32 1, label %56
    i32 2, label %63
    i32 3, label %70
  ]

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %41, %49
  %51 = load i32*, i32** %9, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @wipe_lr(i32* %51, i32* %52, i32* %53, i32 %54)
  store i32 %55, i32* %7, align 4
  br label %76

56:                                               ; preds = %41
  %57 = load i32*, i32** %9, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sub nsw i32 256, %60
  %62 = call i32 @wipe_tb(i32* %57, i32* %58, i32* %59, i32 %61)
  store i32 %62, i32* %7, align 4
  br label %76

63:                                               ; preds = %41
  %64 = load i32*, i32** %9, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sub nsw i32 256, %67
  %69 = call i32 @wipe_lr(i32* %64, i32* %65, i32* %66, i32 %68)
  store i32 %69, i32* %7, align 4
  br label %76

70:                                               ; preds = %41
  %71 = load i32*, i32** %9, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @wipe_tb(i32* %71, i32* %72, i32* %73, i32 %74)
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %70, %63, %56, %50, %35, %29, %18
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i32 @fade(i32*, i32*, i32*, i32) #1

declare dso_local i32 @blind_vertical(i32*, i32*, i32*, i32) #1

declare dso_local i32 @blind_horiz(i32*, i32*, i32*, i32) #1

declare dso_local i32 @wipe_lr(i32*, i32*, i32*, i32) #1

declare dso_local i32 @wipe_tb(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
