; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_point_h_distance.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_point_h_distance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_synctex_point_h_distance(i32 %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  store i32 %0, i32* %11, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %13 = icmp ne %struct.TYPE_13__* %12, null
  br i1 %13, label %14, label %159

14:                                               ; preds = %3
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %158 [
    i32 133, label %20
    i32 130, label %63
    i32 128, label %63
    i32 129, label %63
    i32 132, label %90
    i32 134, label %152
    i32 131, label %152
  ]

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = call i32 @SYNCTEX_HORIZ_V(%struct.TYPE_13__* %24)
  br label %29

26:                                               ; preds = %20
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %28 = call i32 @SYNCTEX_HORIZ(%struct.TYPE_13__* %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i32 [ %25, %23 ], [ %28, %26 ]
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = call i32 @SYNCTEX_ABS_WIDTH_V(%struct.TYPE_13__* %35)
  br label %40

37:                                               ; preds = %29
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = call i32 @SYNCTEX_ABS_WIDTH(%struct.TYPE_13__* %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i32 [ %36, %34 ], [ %39, %37 ]
  %42 = add nsw i32 %31, %41
  store i32 %42, i32* %10, align 4
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i32, i32* %8, align 4
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %48, %50
  store i32 %51, i32* %4, align 4
  br label %161

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i32, i32* %10, align 4
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %58, %60
  store i32 %61, i32* %4, align 4
  br label %161

62:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %161

63:                                               ; preds = %14, %14, %14
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %65 = call i32 @SYNCTEX_HORIZ(%struct.TYPE_13__* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %68 = call i32 @SYNCTEX_ABS_WIDTH(%struct.TYPE_13__* %67)
  %69 = add nsw i32 %66, %68
  store i32 %69, i32* %10, align 4
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %63
  %75 = load i32, i32* %8, align 4
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %75, %77
  store i32 %78, i32* %4, align 4
  br label %161

79:                                               ; preds = %63
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i32, i32* %10, align 4
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %85, %87
  store i32 %88, i32* %4, align 4
  br label %161

89:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %161

90:                                               ; preds = %14
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %92 = call i32 @SYNCTEX_WIDTH(%struct.TYPE_13__* %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %97 = call i32 @SYNCTEX_HORIZ(%struct.TYPE_13__* %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %10, align 4
  %100 = sub nsw i32 %98, %99
  store i32 %100, i32* %10, align 4
  br label %109

101:                                              ; preds = %90
  %102 = load i32, i32* %10, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %8, align 4
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %105 = call i32 @SYNCTEX_HORIZ(%struct.TYPE_13__* %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %101, %95
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %110, %111
  %113 = sdiv i32 %112, 2
  store i32 %113, i32* %9, align 4
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %109
  %119 = load i32, i32* %8, align 4
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %119, %121
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %4, align 4
  br label %161

124:                                              ; preds = %109
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load i32, i32* %10, align 4
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %130, %132
  %134 = sub nsw i32 %133, 1
  store i32 %134, i32* %4, align 4
  br label %161

135:                                              ; preds = %124
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp sgt i32 %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load i32, i32* %10, align 4
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = sub nsw i32 %141, %143
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %4, align 4
  br label %161

146:                                              ; preds = %135
  %147 = load i32, i32* %8, align 4
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = sub nsw i32 %147, %149
  %151 = sub nsw i32 %150, 1
  store i32 %151, i32* %4, align 4
  br label %161

152:                                              ; preds = %14, %14
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %154 = call i32 @SYNCTEX_HORIZ(%struct.TYPE_13__* %153)
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = sub nsw i32 %154, %156
  store i32 %157, i32* %4, align 4
  br label %161

158:                                              ; preds = %14
  br label %159

159:                                              ; preds = %158, %3
  %160 = load i32, i32* @INT_MAX, align 4
  store i32 %160, i32* %4, align 4
  br label %161

161:                                              ; preds = %159, %152, %146, %140, %129, %118, %89, %84, %74, %62, %57, %47
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @SYNCTEX_HORIZ_V(%struct.TYPE_13__*) #1

declare dso_local i32 @SYNCTEX_HORIZ(%struct.TYPE_13__*) #1

declare dso_local i32 @SYNCTEX_ABS_WIDTH_V(%struct.TYPE_13__*) #1

declare dso_local i32 @SYNCTEX_ABS_WIDTH(%struct.TYPE_13__*) #1

declare dso_local i32 @SYNCTEX_WIDTH(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
