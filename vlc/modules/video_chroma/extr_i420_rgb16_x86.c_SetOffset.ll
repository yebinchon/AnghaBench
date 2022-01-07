; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_chroma/extr_i420_rgb16_x86.c_SetOffset.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_chroma/extr_i420_rgb16_x86.c_SetOffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32*, i32*, i32*)* @SetOffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetOffset(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %8, align 4
  %21 = sub nsw i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %7
  %24 = load i32*, i32** %12, align 8
  store i32 0, i32* %24, align 4
  br label %81

25:                                               ; preds = %7
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %26, %27
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %15, align 4
  %32 = load i32*, i32** %12, align 8
  store i32 1, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %16, align 4
  br label %34

34:                                               ; preds = %47, %30
  %35 = load i32, i32* %16, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %16, align 4
  %37 = icmp ne i32 %35, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %44, %38
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %15, align 4
  %42 = sub nsw i32 %41, %40
  store i32 %42, i32* %15, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32*, i32** %14, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %14, align 8
  store i32 0, i32* %45, align 4
  br label %39

47:                                               ; preds = %39
  %48 = load i32*, i32** %14, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %14, align 8
  store i32 1, i32* %48, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %15, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %15, align 4
  br label %34

53:                                               ; preds = %34
  br label %80

54:                                               ; preds = %25
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %17, align 4
  %56 = load i32*, i32** %12, align 8
  store i32 1, i32* %56, align 4
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %18, align 4
  br label %58

58:                                               ; preds = %73, %54
  %59 = load i32, i32* %18, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %18, align 4
  %61 = icmp ne i32 %59, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %58
  %63 = load i32*, i32** %14, align 8
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %69, %62
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %17, align 4
  %67 = sub nsw i32 %66, %65
  store i32 %67, i32* %17, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32*, i32** %14, align 8
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %64

73:                                               ; preds = %64
  %74 = load i32*, i32** %14, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %14, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %17, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %17, align 4
  br label %58

79:                                               ; preds = %58
  br label %80

80:                                               ; preds = %79, %53
  br label %81

81:                                               ; preds = %80, %23
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %9, align 4
  %84 = sub nsw i32 %82, %83
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32*, i32** %13, align 8
  store i32 0, i32* %87, align 4
  br label %98

88:                                               ; preds = %81
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %9, align 4
  %91 = sub nsw i32 %89, %90
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32*, i32** %13, align 8
  store i32 1, i32* %94, align 4
  br label %97

95:                                               ; preds = %88
  %96 = load i32*, i32** %13, align 8
  store i32 -1, i32* %96, align 4
  br label %97

97:                                               ; preds = %95, %93
  br label %98

98:                                               ; preds = %97, %86
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
