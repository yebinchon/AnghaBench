; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/vnc/extr_vnc.c_vncSetRect.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/vnc/extr_vnc.c_vncSetRect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@frameBuffer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vncSetRect(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %10, align 4
  %18 = add nsw i32 %16, %17
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %18, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %6
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %26, %27
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %23, %6
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %30, %31
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %32, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = sub nsw i32 %40, %41
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %37, %29
  %44 = load i32, i32* %10, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %11, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %43
  br label %130

50:                                               ; preds = %46
  %51 = call i32 (...) @vncHideCursor()
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 8
  br i1 %56, label %57, label %89

57:                                               ; preds = %50
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 %61, %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %60, i64 %68
  store i32* %69, i32** %15, align 8
  store i32 0, i32* %14, align 4
  br label %70

70:                                               ; preds = %85, %57
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %70
  %75 = load i32*, i32** %15, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @memset(i32* %75, i32 %76, i32 %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32*, i32** %15, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32* %84, i32** %15, align 8
  br label %85

85:                                               ; preds = %74
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  br label %70

88:                                               ; preds = %70
  br label %119

89:                                               ; preds = %50
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %14, align 4
  br label %91

91:                                               ; preds = %115, %89
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %93, %94
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %118

97:                                               ; preds = %91
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %13, align 4
  br label %99

99:                                               ; preds = %111, %97
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %101, %102
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %99
  %106 = load i32, i32* @frameBuffer, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @SETPIXEL(i32 %106, i32 %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %105
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %13, align 4
  br label %99

114:                                              ; preds = %99
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %14, align 4
  br label %91

118:                                              ; preds = %91
  br label %119

119:                                              ; preds = %118, %88
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %123, %124
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %126, %127
  %129 = call i32 @rfbMarkRectAsModified(%struct.TYPE_6__* %120, i32 %121, i32 %122, i32 %125, i32 %128)
  br label %130

130:                                              ; preds = %119, %49
  ret void
}

declare dso_local i32 @vncHideCursor(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @SETPIXEL(i32, i32, i32, i32) #1

declare dso_local i32 @rfbMarkRectAsModified(%struct.TYPE_6__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
