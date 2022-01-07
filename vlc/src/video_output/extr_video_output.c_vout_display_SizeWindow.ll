; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_video_output.c_vout_display_SizeWindow.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_video_output.c_vout_display_SizeWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i32, i32, %struct.TYPE_9__*)* @vout_display_SizeWindow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vout_display_SizeWindow(i32* noalias %0, i32* noalias %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.TYPE_9__* noalias %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %16, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %9, align 8
  store i32 %21, i32* %22, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %10, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %8
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %135

36:                                               ; preds = %31, %8
  %37 = load i32, i32* %13, align 4
  %38 = icmp ugt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %14, align 4
  %41 = icmp ugt i32 %40, 0
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi i1 [ false, %36 ], [ %41, %39 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %13, align 4
  %48 = mul i32 %46, %47
  %49 = load i32, i32* %14, align 4
  %50 = udiv i32 %48, %49
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %15, align 4
  %52 = call i64 @ORIENT_IS_SWAP(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %17, align 4
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %54, %42
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ugt i32 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %58
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ugt i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %65
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = mul i32 %73, %78
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = udiv i32 %79, %84
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %72, %65, %58
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = load i32*, i32** %9, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %12, align 4
  %94 = mul i32 %92, %93
  %95 = load i32, i32* %11, align 4
  %96 = udiv i32 %94, %95
  %97 = load i32*, i32** %10, align 8
  store i32 %96, i32* %97, align 4
  br label %135

98:                                               ; preds = %86
  %99 = load i32*, i32** %10, align 8
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = load i32*, i32** %10, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %11, align 4
  %106 = mul i32 %104, %105
  %107 = load i32, i32* %12, align 4
  %108 = udiv i32 %106, %107
  %109 = load i32*, i32** %9, align 8
  store i32 %108, i32* %109, align 4
  br label %135

110:                                              ; preds = %98
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = mul i32 %111, %115
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = udiv i32 %116, %120
  %122 = load i32*, i32** %9, align 8
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = mul i32 %123, %127
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = udiv i32 %128, %132
  %134 = load i32*, i32** %10, align 8
  store i32 %133, i32* %134, align 4
  br label %135

135:                                              ; preds = %110, %102, %90, %35
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ORIENT_IS_SWAP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
