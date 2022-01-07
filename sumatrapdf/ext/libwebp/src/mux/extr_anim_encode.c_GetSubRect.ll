; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_anim_encode.c_GetSubRect.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_anim_encode.c_GetSubRect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32, i32, float, %struct.TYPE_6__*, i32*)* @GetSubRect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetSubRect(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, float %6, %struct.TYPE_6__* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca %struct.TYPE_6__*, align 8
  %19 = alloca i32*, align 8
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store float %6, float* %17, align 4
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %18, align 8
  store i32* %8, i32** %19, align 8
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %9
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22, %9
  %26 = load i32*, i32** %11, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %29 = load i32, i32* %16, align 4
  %30 = load float, float* %17, align 4
  %31 = call i32 @MinimizeChangeRectangle(i32* %26, i32* %27, %struct.TYPE_6__* %28, i32 %29, float %30)
  br label %32

32:                                               ; preds = %25, %22
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %34 = call i64 @IsEmptyRect(%struct.TYPE_6__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %32
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 1, i32* %10, align 4
  br label %76

40:                                               ; preds = %36
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  br label %57

57:                                               ; preds = %40
  br label %58

58:                                               ; preds = %57, %32
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %60 = call i32 @SnapToEvenOffsets(%struct.TYPE_6__* %59)
  %61 = load i32*, i32** %12, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %19, align 8
  %75 = call i32 @WebPPictureView(i32* %61, i64 %64, i64 %67, i32 %70, i32 %73, i32* %74)
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %58, %39
  %77 = load i32, i32* %10, align 4
  ret i32 %77
}

declare dso_local i32 @MinimizeChangeRectangle(i32*, i32*, %struct.TYPE_6__*, i32, float) #1

declare dso_local i64 @IsEmptyRect(%struct.TYPE_6__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SnapToEvenOffsets(%struct.TYPE_6__*) #1

declare dso_local i32 @WebPPictureView(i32*, i64, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
