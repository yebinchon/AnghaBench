; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_chroma/extr_i420_rgb8.c_SetOffset.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_chroma/extr_i420_rgb8.c_SetOffset.c"
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
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  %22 = sub nsw i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %7
  %25 = load i32*, i32** %12, align 8
  store i32 0, i32* %25, align 4
  br label %96

26:                                               ; preds = %7
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %27, %28
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %26
  store i32 0, i32* %17, align 4
  %32 = load i32*, i32** %12, align 8
  store i32 1, i32* %32, align 4
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %15, align 4
  br label %35

35:                                               ; preds = %50, %31
  %36 = load i32, i32* %15, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %15, align 4
  %38 = icmp ne i32 %36, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %45, %39
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %16, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %16, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i32*, i32** %14, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %14, align 8
  store i32 0, i32* %46, align 4
  %48 = load i32*, i32** %14, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %14, align 8
  store i32 0, i32* %48, align 4
  br label %40

50:                                               ; preds = %40
  %51 = load i32*, i32** %14, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %14, align 8
  store i32 1, i32* %51, align 4
  %53 = load i32, i32* %17, align 4
  %54 = load i32*, i32** %14, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %14, align 8
  store i32 %53, i32* %54, align 4
  %56 = load i32, i32* %17, align 4
  %57 = sub nsw i32 1, %56
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %16, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %16, align 4
  br label %35

61:                                               ; preds = %35
  br label %95

62:                                               ; preds = %26
  store i32 0, i32* %18, align 4
  %63 = load i32*, i32** %12, align 8
  store i32 1, i32* %63, align 4
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %15, align 4
  br label %66

66:                                               ; preds = %79, %62
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %15, align 4
  %69 = icmp ne i32 %67, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %66
  store i32 1, i32* %19, align 4
  br label %71

71:                                               ; preds = %76, %70
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %16, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %16, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* %19, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %19, align 4
  br label %71

79:                                               ; preds = %71
  %80 = load i32, i32* %19, align 4
  %81 = load i32*, i32** %14, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %14, align 8
  store i32 %80, i32* %81, align 4
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %19, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %19, align 4
  %86 = ashr i32 %85, 1
  %87 = load i32*, i32** %14, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %14, align 8
  store i32 %86, i32* %87, align 4
  %89 = load i32, i32* %19, align 4
  %90 = and i32 %89, 1
  store i32 %90, i32* %18, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %16, align 4
  br label %66

94:                                               ; preds = %66
  br label %95

95:                                               ; preds = %94, %61
  br label %96

96:                                               ; preds = %95, %24
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %9, align 4
  %99 = sub nsw i32 %97, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32*, i32** %13, align 8
  store i32 0, i32* %102, align 4
  br label %113

103:                                              ; preds = %96
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %9, align 4
  %106 = sub nsw i32 %104, %105
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32*, i32** %13, align 8
  store i32 1, i32* %109, align 4
  br label %112

110:                                              ; preds = %103
  %111 = load i32*, i32** %13, align 8
  store i32 -1, i32* %111, align 4
  br label %112

112:                                              ; preds = %110, %108
  br label %113

113:                                              ; preds = %112, %101
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
