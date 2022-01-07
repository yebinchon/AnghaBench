; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_pce.c_puzzle_draw_pieces.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_pce.c_puzzle_draw_pieces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i32*, %struct.TYPE_23__, %struct.TYPE_24__*, %struct.TYPE_22__, i32* }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_24__ = type { i32, i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_25__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @puzzle_draw_pieces(%struct.TYPE_26__* %0, %struct.TYPE_25__* %1, %struct.TYPE_25__* %2) #0 {
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %6, align 8
  %11 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  store %struct.TYPE_27__* %13, %struct.TYPE_27__** %7, align 8
  %14 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 5
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %22 = icmp eq %struct.TYPE_24__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %3
  br label %115

24:                                               ; preds = %18
  store i64 0, i64* %8, align 8
  br label %25

25:                                               ; preds = %111, %24
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %114

31:                                               ; preds = %25
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub i64 %35, 1
  store i64 %36, i64* %9, align 8
  br label %37

37:                                               ; preds = %107, %31
  %38 = load i64, i64* %9, align 8
  %39 = icmp uge i64 %38, 0
  br i1 %39, label %40, label %110

40:                                               ; preds = %37
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i64 %44
  store %struct.TYPE_24__* %45, %struct.TYPE_24__** %10, align 8
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %40
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %74

56:                                               ; preds = %51
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %61, %40
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %73 = call i32 @puzzle_drw_basic_pce_in_plane(%struct.TYPE_26__* %68, %struct.TYPE_25__* %69, %struct.TYPE_25__* %70, i64 %71, %struct.TYPE_24__* %72)
  br label %106

74:                                               ; preds = %61, %56, %51
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %74
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %85, %80, %74
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %94 = load i64, i64* %8, align 8
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %96 = call i32 @puzzle_drw_adv_pce_in_plane(%struct.TYPE_26__* %91, %struct.TYPE_25__* %92, %struct.TYPE_25__* %93, i64 %94, %struct.TYPE_24__* %95)
  br label %105

97:                                               ; preds = %85
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %101 = load i64, i64* %8, align 8
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %103 = load i64, i64* %9, align 8
  %104 = call i32 @puzzle_drw_complex_pce_in_plane(%struct.TYPE_26__* %98, %struct.TYPE_25__* %99, %struct.TYPE_25__* %100, i64 %101, %struct.TYPE_24__* %102, i64 %103)
  br label %105

105:                                              ; preds = %97, %90
  br label %106

106:                                              ; preds = %105, %67
  br label %107

107:                                              ; preds = %106
  %108 = load i64, i64* %9, align 8
  %109 = add i64 %108, -1
  store i64 %109, i64* %9, align 8
  br label %37

110:                                              ; preds = %37
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %8, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %8, align 8
  br label %25

114:                                              ; preds = %25
  br label %115

115:                                              ; preds = %114, %23
  ret void
}

declare dso_local i32 @puzzle_drw_basic_pce_in_plane(%struct.TYPE_26__*, %struct.TYPE_25__*, %struct.TYPE_25__*, i64, %struct.TYPE_24__*) #1

declare dso_local i32 @puzzle_drw_adv_pce_in_plane(%struct.TYPE_26__*, %struct.TYPE_25__*, %struct.TYPE_25__*, i64, %struct.TYPE_24__*) #1

declare dso_local i32 @puzzle_drw_complex_pce_in_plane(%struct.TYPE_26__*, %struct.TYPE_25__*, %struct.TYPE_25__*, i64, %struct.TYPE_24__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
