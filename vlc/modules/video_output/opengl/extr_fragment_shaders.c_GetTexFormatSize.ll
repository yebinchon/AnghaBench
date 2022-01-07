; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_fragment_shaders.c_GetTexFormatSize.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_fragment_shaders.c_GetTexFormatSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i32*)*, i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32*)*, i32 (i32, i32)*, i32 (i32, i32*)* }

@GL_TEXTURE_RED_SIZE = common dso_local global i32 0, align 4
@GL_TEXTURE_LUMINANCE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i32, i32)* @GetTexFormatSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetTexFormatSize(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %19, align 8
  %21 = icmp ne i32 (i32, i32, i32, i32*)* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %80

23:                                               ; preds = %5
  store i32 1, i32* %13, align 4
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %30 [
    i32 131, label %25
    i32 129, label %26
    i32 128, label %26
    i32 130, label %28
  ]

25:                                               ; preds = %23
  store i32 4, i32* %13, align 4
  br label %26

26:                                               ; preds = %23, %23, %25
  %27 = load i32, i32* @GL_TEXTURE_RED_SIZE, align 4
  store i32 %27, i32* %12, align 4
  br label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @GL_TEXTURE_LUMINANCE_SIZE, align 4
  store i32 %29, i32* %12, align 4
  br label %31

30:                                               ; preds = %23
  store i32 -1, i32* %6, align 4
  br label %80

31:                                               ; preds = %28, %26
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 4
  %36 = load i32 (i32, i32*)*, i32 (i32, i32*)** %35, align 8
  %37 = call i32 %36(i32 1, i32* %14)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i32 (i32, i32)*, i32 (i32, i32)** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %14, align 4
  %45 = call i32 %42(i32 %43, i32 %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32*)** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 %50(i32 %51, i32 0, i32 %52, i32 64, i32 64, i32 0, i32 %53, i32 %54, i32* null)
  store i32 0, i32* %15, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 %60(i32 %61, i32 0, i32 %62, i32* %15)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32 (i32, i32*)*, i32 (i32, i32*)** %67, align 8
  %69 = call i32 %68(i32 1, i32* %14)
  %70 = load i32, i32* %15, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %31
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %13, align 4
  %75 = mul nsw i32 %73, %74
  br label %78

76:                                               ; preds = %31
  %77 = load i32, i32* %15, align 4
  br label %78

78:                                               ; preds = %76, %72
  %79 = phi i32 [ %75, %72 ], [ %77, %76 ]
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %78, %30, %22
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
