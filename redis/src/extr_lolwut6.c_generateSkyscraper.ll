; ModuleID = '/home/carl/AnghaBench/redis/src/extr_lolwut6.c_generateSkyscraper.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_lolwut6.c_generateSkyscraper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.skyscraper = type { i32, i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generateSkyscraper(%struct.TYPE_5__* %0, %struct.skyscraper* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.skyscraper*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.skyscraper* %1, %struct.skyscraper** %4, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.skyscraper*, %struct.skyscraper** %4, align 8
  %18 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %16, %19
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %152, %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %155

27:                                               ; preds = %23
  %28 = load %struct.skyscraper*, %struct.skyscraper** %4, align 8
  %29 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %148, %27
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.skyscraper*, %struct.skyscraper** %4, align 8
  %34 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.skyscraper*, %struct.skyscraper** %4, align 8
  %37 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %35, %38
  %40 = icmp slt i32 %32, %39
  br i1 %40, label %41, label %151

41:                                               ; preds = %31
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.skyscraper*, %struct.skyscraper** %4, align 8
  %48 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  %51 = icmp sle i32 %46, %50
  br i1 %51, label %63, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.skyscraper*, %struct.skyscraper** %4, align 8
  %55 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.skyscraper*, %struct.skyscraper** %4, align 8
  %58 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %56, %59
  %61 = sub nsw i32 %60, 2
  %62 = icmp sge i32 %53, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %52, %45
  br label %148

64:                                               ; preds = %52, %41
  %65 = load %struct.skyscraper*, %struct.skyscraper** %4, align 8
  %66 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %9, align 4
  %68 = load %struct.skyscraper*, %struct.skyscraper** %4, align 8
  %69 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %142

72:                                               ; preds = %64
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.skyscraper*, %struct.skyscraper** %4, align 8
  %75 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  %78 = icmp sgt i32 %73, %77
  br i1 %78, label %79, label %142

79:                                               ; preds = %72
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.skyscraper*, %struct.skyscraper** %4, align 8
  %82 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.skyscraper*, %struct.skyscraper** %4, align 8
  %85 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %83, %86
  %88 = sub nsw i32 %87, 2
  %89 = icmp slt i32 %80, %88
  br i1 %89, label %90, label %142

90:                                               ; preds = %79
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  %94 = icmp sgt i32 %91, %93
  br i1 %94, label %95, label %142

95:                                               ; preds = %90
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %5, align 4
  %98 = sub nsw i32 %97, 1
  %99 = icmp slt i32 %96, %98
  br i1 %99, label %100, label %142

100:                                              ; preds = %95
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.skyscraper*, %struct.skyscraper** %4, align 8
  %103 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  %106 = sub nsw i32 %101, %105
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  %110 = sub nsw i32 %107, %109
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %10, align 4
  %112 = sdiv i32 %111, 2
  %113 = srem i32 %112, 2
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %141

115:                                              ; preds = %100
  %116 = load i32, i32* %11, align 4
  %117 = srem i32 %116, 2
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %141

119:                                              ; preds = %115
  br label %120

120:                                              ; preds = %124, %119
  %121 = call i32 (...) @rand()
  %122 = srem i32 %121, 2
  %123 = add nsw i32 1, %122
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %120
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.skyscraper*, %struct.skyscraper** %4, align 8
  %127 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %125, %128
  br i1 %129, label %120, label %130

130:                                              ; preds = %124
  %131 = load i32, i32* %10, align 4
  %132 = srem i32 %131, 2
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sub nsw i32 %136, 1
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @lwGetPixel(%struct.TYPE_5__* %135, i32 %137, i32 %138)
  store i32 %139, i32* %9, align 4
  br label %140

140:                                              ; preds = %134, %130
  br label %141

141:                                              ; preds = %140, %115, %100
  br label %142

142:                                              ; preds = %141, %95, %90, %79, %72, %64
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @lwDrawPixel(%struct.TYPE_5__* %143, i32 %144, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %142, %63
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %8, align 4
  br label %31

151:                                              ; preds = %31
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %7, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %7, align 4
  br label %23

155:                                              ; preds = %23
  ret void
}

declare dso_local i32 @rand(...) #1

declare dso_local i32 @lwGetPixel(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @lwDrawPixel(%struct.TYPE_5__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
