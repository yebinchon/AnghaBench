; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_h264_nal.c_h264_get_profile_level.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_h264_nal.c_h264_get_profile_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h264_get_profile_level(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %10, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %103

20:                                               ; preds = %4
  %21 = load i32*, i32** %10, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %43

25:                                               ; preds = %20
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sge i32 %28, 12
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load i32*, i32** %9, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32*, i32** %10, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 3
  %38 = add nsw i32 1, %37
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %33, %30
  %41 = load i32*, i32** %10, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 8
  store i32* %42, i32** %10, align 8
  br label %79

43:                                               ; preds = %25, %20
  %44 = load i32*, i32** %10, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %77, label %48

48:                                               ; preds = %43
  %49 = load i32*, i32** %10, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %77, label %53

53:                                               ; preds = %48
  %54 = load i32*, i32** %10, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %53
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32*, i32** %10, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  store i32* %65, i32** %10, align 8
  br label %76

66:                                               ; preds = %58, %53
  %67 = load i32*, i32** %10, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32*, i32** %10, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  store i32* %73, i32** %10, align 8
  br label %75

74:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %103

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %75, %63
  br label %78

77:                                               ; preds = %48, %43
  store i32 0, i32* %5, align 4
  br label %103

78:                                               ; preds = %76
  br label %79

79:                                               ; preds = %78, %40
  %80 = load i32*, i32** %10, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %10, align 8
  %82 = load i32, i32* %80, align 4
  %83 = and i32 %82, 31
  %84 = icmp ne i32 %83, 7
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i32 0, i32* %5, align 4
  br label %103

86:                                               ; preds = %79
  %87 = load i32*, i32** %7, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i32*, i32** %10, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %7, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %89, %86
  %95 = load i32*, i32** %8, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i32*, i32** %10, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %8, align 8
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %97, %94
  store i32 1, i32* %5, align 4
  br label %103

103:                                              ; preds = %102, %85, %77, %74, %19
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
