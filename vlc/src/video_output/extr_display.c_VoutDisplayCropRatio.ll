; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_display.c_VoutDisplayCropRatio.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_display.c_VoutDisplayCropRatio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, %struct.TYPE_3__*, i32, i32)* @VoutDisplayCropRatio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @VoutDisplayCropRatio(i32* %0, i32* %1, i32* %2, i32* %3, %struct.TYPE_3__* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %13, align 4
  %21 = mul i32 %19, %20
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul i32 %21, %24
  %26 = load i32, i32* %14, align 4
  %27 = udiv i32 %25, %26
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = udiv i32 %27, %30
  store i32 %31, i32* %15, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %14, align 4
  %36 = mul i32 %34, %35
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = mul i32 %36, %39
  %41 = load i32, i32* %13, align 4
  %42 = udiv i32 %40, %41
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = udiv i32 %42, %45
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp ult i32 %47, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %7
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %15, align 4
  %57 = sub i32 %55, %56
  %58 = udiv i32 %57, 2
  %59 = load i32*, i32** %8, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32*, i32** %9, align 8
  store i32 0, i32* %60, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %15, align 4
  %64 = add i32 %62, %63
  %65 = load i32*, i32** %10, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %67, %70
  %72 = load i32*, i32** %11, align 8
  store i32 %71, i32* %72, align 4
  br label %94

73:                                               ; preds = %7
  %74 = load i32*, i32** %8, align 8
  store i32 0, i32* %74, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %16, align 4
  %79 = sub i32 %77, %78
  %80 = udiv i32 %79, 2
  %81 = load i32*, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = add i32 %83, %86
  %88 = load i32*, i32** %10, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %16, align 4
  %92 = add i32 %90, %91
  %93 = load i32*, i32** %11, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %73, %52
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
