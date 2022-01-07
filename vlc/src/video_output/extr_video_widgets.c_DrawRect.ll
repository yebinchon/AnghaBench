; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_video_widgets.c_DrawRect.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_video_widgets.c_DrawRect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32* }

@STYLE_FILLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32, i32, i32, i32, i32)* @DrawRect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DrawRect(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %15, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %7
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %7
  br label %128

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @STYLE_FILLED, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %99

44:                                               ; preds = %40
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %44
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %49, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %47
  %59 = load i32*, i32** %15, align 8
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %12, align 4
  %62 = mul nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %12, align 4
  %69 = sub nsw i32 %67, %68
  %70 = add nsw i32 %69, 1
  %71 = mul nsw i32 %66, %70
  %72 = call i32 @memset(i32* %64, i32 %65, i32 %71)
  br label %98

73:                                               ; preds = %47, %44
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %17, align 4
  br label %75

75:                                               ; preds = %94, %73
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp sle i32 %76, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %75
  %80 = load i32*, i32** %15, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %17, align 4
  %84 = mul nsw i32 %82, %83
  %85 = add nsw i32 %81, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %80, i64 %86
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %11, align 4
  %91 = sub nsw i32 %89, %90
  %92 = add nsw i32 %91, 1
  %93 = call i32 @memset(i32* %87, i32 %88, i32 %92)
  br label %94

94:                                               ; preds = %79
  %95 = load i32, i32* %17, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %17, align 4
  br label %75

97:                                               ; preds = %75
  br label %98

98:                                               ; preds = %97, %58
  br label %128

99:                                               ; preds = %40
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %101 = load i32, i32* @STYLE_FILLED, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %14, align 4
  call void @DrawRect(%struct.TYPE_7__* %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106)
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %108 = load i32, i32* @STYLE_FILLED, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %14, align 4
  call void @DrawRect(%struct.TYPE_7__* %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113)
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %115 = load i32, i32* @STYLE_FILLED, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %12, align 4
  call void @DrawRect(%struct.TYPE_7__* %114, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %120)
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %122 = load i32, i32* @STYLE_FILLED, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %14, align 4
  call void @DrawRect(%struct.TYPE_7__* %121, i32 %122, i32 %123, i32 %124, i32 %125, i32 %126, i32 %127)
  br label %128

128:                                              ; preds = %39, %99, %98
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
