; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_config.c_free_mode.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_config.c_free_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_mode = type { %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.sway_mode* }
%struct.TYPE_2__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_mode*)* @free_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_mode(%struct.sway_mode* %0) #0 {
  %2 = alloca %struct.sway_mode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sway_mode* %0, %struct.sway_mode** %2, align 8
  %7 = load %struct.sway_mode*, %struct.sway_mode** %2, align 8
  %8 = icmp ne %struct.sway_mode* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %149

10:                                               ; preds = %1
  %11 = load %struct.sway_mode*, %struct.sway_mode** %2, align 8
  %12 = getelementptr inbounds %struct.sway_mode, %struct.sway_mode* %11, i32 0, i32 4
  %13 = load %struct.sway_mode*, %struct.sway_mode** %12, align 8
  %14 = call i32 @free(%struct.sway_mode* %13)
  %15 = load %struct.sway_mode*, %struct.sway_mode** %2, align 8
  %16 = getelementptr inbounds %struct.sway_mode, %struct.sway_mode* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %47

19:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %39, %19
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.sway_mode*, %struct.sway_mode** %2, align 8
  %23 = getelementptr inbounds %struct.sway_mode, %struct.sway_mode* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %21, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %20
  %29 = load %struct.sway_mode*, %struct.sway_mode** %2, align 8
  %30 = getelementptr inbounds %struct.sway_mode, %struct.sway_mode* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @free_sway_binding(i32 %37)
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %20

42:                                               ; preds = %20
  %43 = load %struct.sway_mode*, %struct.sway_mode** %2, align 8
  %44 = getelementptr inbounds %struct.sway_mode, %struct.sway_mode* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = call i32 @list_free(%struct.TYPE_2__* %45)
  br label %47

47:                                               ; preds = %42, %10
  %48 = load %struct.sway_mode*, %struct.sway_mode** %2, align 8
  %49 = getelementptr inbounds %struct.sway_mode, %struct.sway_mode* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = icmp ne %struct.TYPE_2__* %50, null
  br i1 %51, label %52, label %80

52:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %72, %52
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.sway_mode*, %struct.sway_mode** %2, align 8
  %56 = getelementptr inbounds %struct.sway_mode, %struct.sway_mode* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %54, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %53
  %62 = load %struct.sway_mode*, %struct.sway_mode** %2, align 8
  %63 = getelementptr inbounds %struct.sway_mode, %struct.sway_mode* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @free_sway_binding(i32 %70)
  br label %72

72:                                               ; preds = %61
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %53

75:                                               ; preds = %53
  %76 = load %struct.sway_mode*, %struct.sway_mode** %2, align 8
  %77 = getelementptr inbounds %struct.sway_mode, %struct.sway_mode* %76, i32 0, i32 2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = call i32 @list_free(%struct.TYPE_2__* %78)
  br label %80

80:                                               ; preds = %75, %47
  %81 = load %struct.sway_mode*, %struct.sway_mode** %2, align 8
  %82 = getelementptr inbounds %struct.sway_mode, %struct.sway_mode* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = icmp ne %struct.TYPE_2__* %83, null
  br i1 %84, label %85, label %113

85:                                               ; preds = %80
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %105, %85
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.sway_mode*, %struct.sway_mode** %2, align 8
  %89 = getelementptr inbounds %struct.sway_mode, %struct.sway_mode* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %87, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %86
  %95 = load %struct.sway_mode*, %struct.sway_mode** %2, align 8
  %96 = getelementptr inbounds %struct.sway_mode, %struct.sway_mode* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @free_sway_binding(i32 %103)
  br label %105

105:                                              ; preds = %94
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %86

108:                                              ; preds = %86
  %109 = load %struct.sway_mode*, %struct.sway_mode** %2, align 8
  %110 = getelementptr inbounds %struct.sway_mode, %struct.sway_mode* %109, i32 0, i32 1
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = call i32 @list_free(%struct.TYPE_2__* %111)
  br label %113

113:                                              ; preds = %108, %80
  %114 = load %struct.sway_mode*, %struct.sway_mode** %2, align 8
  %115 = getelementptr inbounds %struct.sway_mode, %struct.sway_mode* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = icmp ne %struct.TYPE_2__* %116, null
  br i1 %117, label %118, label %146

118:                                              ; preds = %113
  store i32 0, i32* %6, align 4
  br label %119

119:                                              ; preds = %138, %118
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.sway_mode*, %struct.sway_mode** %2, align 8
  %122 = getelementptr inbounds %struct.sway_mode, %struct.sway_mode* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %120, %125
  br i1 %126, label %127, label %141

127:                                              ; preds = %119
  %128 = load %struct.sway_mode*, %struct.sway_mode** %2, align 8
  %129 = getelementptr inbounds %struct.sway_mode, %struct.sway_mode* %128, i32 0, i32 0
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @free_switch_binding(i32 %136)
  br label %138

138:                                              ; preds = %127
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %6, align 4
  br label %119

141:                                              ; preds = %119
  %142 = load %struct.sway_mode*, %struct.sway_mode** %2, align 8
  %143 = getelementptr inbounds %struct.sway_mode, %struct.sway_mode* %142, i32 0, i32 0
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = call i32 @list_free(%struct.TYPE_2__* %144)
  br label %146

146:                                              ; preds = %141, %113
  %147 = load %struct.sway_mode*, %struct.sway_mode** %2, align 8
  %148 = call i32 @free(%struct.sway_mode* %147)
  br label %149

149:                                              ; preds = %146, %9
  ret void
}

declare dso_local i32 @free(%struct.sway_mode*) #1

declare dso_local i32 @free_sway_binding(i32) #1

declare dso_local i32 @list_free(%struct.TYPE_2__*) #1

declare dso_local i32 @free_switch_binding(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
