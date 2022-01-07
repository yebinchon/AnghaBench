; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_cea708.c_CEA708_Window_CarriageReturn.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_cea708.c_CEA708_Window_CarriageReturn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@CEA708_WINDOW_MAX_ROWS = common dso_local global i32 0, align 4
@CEA708_WINDOW_MAX_COLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @CEA708_Window_CarriageReturn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CEA708_Window_CarriageReturn(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %142 [
    i32 130, label %7
    i32 129, label %41
    i32 128, label %77
    i32 131, label %111
  ]

7:                                                ; preds = %1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = call i32 @CEA708_Window_ColCount(%struct.TYPE_8__* %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 4
  br label %27

24:                                               ; preds = %12, %7
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = call i32 @CEA708_Window_Scroll(%struct.TYPE_8__* %25)
  br label %27

27:                                               ; preds = %24, %19
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 128
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @CEA708_WINDOW_MAX_ROWS, align 4
  %36 = sub nsw i32 %35, 1
  br label %37

37:                                               ; preds = %34, %33
  %38 = phi i32 [ 0, %33 ], [ %36, %34 ]
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  br label %142

41:                                               ; preds = %1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  %46 = load i32, i32* @CEA708_WINDOW_MAX_COLS, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %41
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %50 = call i32 @CEA708_Window_ColCount(%struct.TYPE_8__* %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %63

60:                                               ; preds = %48, %41
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %62 = call i32 @CEA708_Window_Scroll(%struct.TYPE_8__* %61)
  br label %63

63:                                               ; preds = %60, %55
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 128
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %73

70:                                               ; preds = %63
  %71 = load i32, i32* @CEA708_WINDOW_MAX_ROWS, align 4
  %72 = sub nsw i32 %71, 1
  br label %73

73:                                               ; preds = %70, %69
  %74 = phi i32 [ 0, %69 ], [ %72, %70 ]
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  br label %142

77:                                               ; preds = %1
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %77
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %84 = call i32 @CEA708_Window_RowCount(%struct.TYPE_8__* %83)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %91, align 4
  br label %97

94:                                               ; preds = %82, %77
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %96 = call i32 @CEA708_Window_Scroll(%struct.TYPE_8__* %95)
  br label %97

97:                                               ; preds = %94, %89
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 130
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %107

104:                                              ; preds = %97
  %105 = load i32, i32* @CEA708_WINDOW_MAX_COLS, align 4
  %106 = sub nsw i32 %105, 1
  br label %107

107:                                              ; preds = %104, %103
  %108 = phi i32 [ 0, %103 ], [ %106, %104 ]
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  br label %142

111:                                              ; preds = %1
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %111
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  br label %128

125:                                              ; preds = %111
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %127 = call i32 @CEA708_Window_Scroll(%struct.TYPE_8__* %126)
  br label %128

128:                                              ; preds = %125, %120
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 130
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %138

135:                                              ; preds = %128
  %136 = load i32, i32* @CEA708_WINDOW_MAX_COLS, align 4
  %137 = sub nsw i32 %136, 1
  br label %138

138:                                              ; preds = %135, %134
  %139 = phi i32 [ 0, %134 ], [ %137, %135 ]
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  br label %142

142:                                              ; preds = %1, %138, %107, %73, %37
  ret void
}

declare dso_local i32 @CEA708_Window_ColCount(%struct.TYPE_8__*) #1

declare dso_local i32 @CEA708_Window_Scroll(%struct.TYPE_8__*) #1

declare dso_local i32 @CEA708_Window_RowCount(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
