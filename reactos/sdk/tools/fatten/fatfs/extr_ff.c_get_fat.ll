; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_get_fat.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_get_fat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32* }

@FR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_fat(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %2
  store i32 1, i32* %8, align 4
  br label %150

18:                                               ; preds = %11
  store i32 -1, i32* %8, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %148 [
    i32 130, label %22
    i32 129, label %91
    i32 128, label %119
  ]

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sdiv i32 %24, 2
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = call i32 @SS(%struct.TYPE_5__* %33)
  %35 = sdiv i32 %32, %34
  %36 = add nsw i32 %31, %35
  %37 = call i32 @move_window(%struct.TYPE_5__* %28, i32 %36)
  %38 = load i32, i32* @FR_OK, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %22
  br label %149

41:                                               ; preds = %22
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = call i32 @SS(%struct.TYPE_5__* %47)
  %49 = srem i32 %45, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %44, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %5, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = call i32 @SS(%struct.TYPE_5__* %58)
  %60 = sdiv i32 %57, %59
  %61 = add nsw i32 %56, %60
  %62 = call i32 @move_window(%struct.TYPE_5__* %53, i32 %61)
  %63 = load i32, i32* @FR_OK, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %41
  br label %149

66:                                               ; preds = %41
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %72 = call i32 @SS(%struct.TYPE_5__* %71)
  %73 = srem i32 %70, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %69, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 8
  %78 = load i32, i32* %5, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %4, align 4
  %81 = and i32 %80, 1
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %66
  %84 = load i32, i32* %5, align 4
  %85 = ashr i32 %84, 4
  br label %89

86:                                               ; preds = %66
  %87 = load i32, i32* %5, align 4
  %88 = and i32 %87, 4095
  br label %89

89:                                               ; preds = %86, %83
  %90 = phi i32 [ %85, %83 ], [ %88, %86 ]
  store i32 %90, i32* %8, align 4
  br label %149

91:                                               ; preds = %18
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %98 = call i32 @SS(%struct.TYPE_5__* %97)
  %99 = sdiv i32 %98, 2
  %100 = sdiv i32 %96, %99
  %101 = add nsw i32 %95, %100
  %102 = call i32 @move_window(%struct.TYPE_5__* %92, i32 %101)
  %103 = load i32, i32* @FR_OK, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %91
  br label %149

106:                                              ; preds = %91
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = mul nsw i32 %110, 2
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %113 = call i32 @SS(%struct.TYPE_5__* %112)
  %114 = srem i32 %111, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %109, i64 %115
  store i32* %116, i32** %7, align 8
  %117 = load i32*, i32** %7, align 8
  %118 = call i32 @LD_WORD(i32* %117)
  store i32 %118, i32* %8, align 4
  br label %149

119:                                              ; preds = %18
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %4, align 4
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %126 = call i32 @SS(%struct.TYPE_5__* %125)
  %127 = sdiv i32 %126, 4
  %128 = sdiv i32 %124, %127
  %129 = add nsw i32 %123, %128
  %130 = call i32 @move_window(%struct.TYPE_5__* %120, i32 %129)
  %131 = load i32, i32* @FR_OK, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %119
  br label %149

134:                                              ; preds = %119
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 3
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %4, align 4
  %139 = mul nsw i32 %138, 4
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %141 = call i32 @SS(%struct.TYPE_5__* %140)
  %142 = srem i32 %139, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %137, i64 %143
  store i32* %144, i32** %7, align 8
  %145 = load i32*, i32** %7, align 8
  %146 = call i32 @LD_DWORD(i32* %145)
  %147 = and i32 %146, 268435455
  store i32 %147, i32* %8, align 4
  br label %149

148:                                              ; preds = %18
  store i32 1, i32* %8, align 4
  br label %149

149:                                              ; preds = %148, %134, %133, %106, %105, %89, %65, %40
  br label %150

150:                                              ; preds = %149, %17
  %151 = load i32, i32* %8, align 4
  ret i32 %151
}

declare dso_local i32 @move_window(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @SS(%struct.TYPE_5__*) #1

declare dso_local i32 @LD_WORD(i32*) #1

declare dso_local i32 @LD_DWORD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
