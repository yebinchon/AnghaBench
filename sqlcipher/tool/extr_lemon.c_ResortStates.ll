; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_ResortStates.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_ResortStates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lemon = type { i32, i64, i64, i32, %struct.state** }
%struct.state = type { i32, i64, i64, i32, i64, i64, %struct.action*, i8*, i8* }
%struct.action = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.action* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@NO_OFFSET = common dso_local global i8* null, align 8
@stateResortCompare = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ResortStates(%struct.lemon* %0) #0 {
  %2 = alloca %struct.lemon*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.state*, align 8
  %5 = alloca %struct.action*, align 8
  %6 = alloca i32, align 4
  store %struct.lemon* %0, %struct.lemon** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %104, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.lemon*, %struct.lemon** %2, align 8
  %10 = getelementptr inbounds %struct.lemon, %struct.lemon* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %107

13:                                               ; preds = %7
  %14 = load %struct.lemon*, %struct.lemon** %2, align 8
  %15 = getelementptr inbounds %struct.lemon, %struct.lemon* %14, i32 0, i32 4
  %16 = load %struct.state**, %struct.state*** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.state*, %struct.state** %16, i64 %18
  %20 = load %struct.state*, %struct.state** %19, align 8
  store %struct.state* %20, %struct.state** %4, align 8
  %21 = load %struct.state*, %struct.state** %4, align 8
  %22 = getelementptr inbounds %struct.state, %struct.state* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load %struct.state*, %struct.state** %4, align 8
  %24 = getelementptr inbounds %struct.state, %struct.state* %23, i32 0, i32 5
  store i64 0, i64* %24, align 8
  %25 = load %struct.state*, %struct.state** %4, align 8
  %26 = getelementptr inbounds %struct.state, %struct.state* %25, i32 0, i32 0
  store i32 -1, i32* %26, align 8
  %27 = load i8*, i8** @NO_OFFSET, align 8
  %28 = load %struct.state*, %struct.state** %4, align 8
  %29 = getelementptr inbounds %struct.state, %struct.state* %28, i32 0, i32 8
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** @NO_OFFSET, align 8
  %31 = load %struct.state*, %struct.state** %4, align 8
  %32 = getelementptr inbounds %struct.state, %struct.state* %31, i32 0, i32 7
  store i8* %30, i8** %32, align 8
  %33 = load %struct.state*, %struct.state** %4, align 8
  %34 = getelementptr inbounds %struct.state, %struct.state* %33, i32 0, i32 6
  %35 = load %struct.action*, %struct.action** %34, align 8
  store %struct.action* %35, %struct.action** %5, align 8
  br label %36

36:                                               ; preds = %99, %13
  %37 = load %struct.action*, %struct.action** %5, align 8
  %38 = icmp ne %struct.action* %37, null
  br i1 %38, label %39, label %103

39:                                               ; preds = %36
  %40 = load %struct.lemon*, %struct.lemon** %2, align 8
  %41 = load %struct.action*, %struct.action** %5, align 8
  %42 = call i32 @compute_action(%struct.lemon* %40, %struct.action* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %98

45:                                               ; preds = %39
  %46 = load %struct.action*, %struct.action** %5, align 8
  %47 = getelementptr inbounds %struct.action, %struct.action* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.lemon*, %struct.lemon** %2, align 8
  %52 = getelementptr inbounds %struct.lemon, %struct.lemon* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %50, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load %struct.state*, %struct.state** %4, align 8
  %57 = getelementptr inbounds %struct.state, %struct.state* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %57, align 8
  br label %97

60:                                               ; preds = %45
  %61 = load %struct.action*, %struct.action** %5, align 8
  %62 = getelementptr inbounds %struct.action, %struct.action* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.lemon*, %struct.lemon** %2, align 8
  %67 = getelementptr inbounds %struct.lemon, %struct.lemon* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %65, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %60
  %71 = load %struct.state*, %struct.state** %4, align 8
  %72 = getelementptr inbounds %struct.state, %struct.state* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %72, align 8
  br label %96

75:                                               ; preds = %60
  %76 = load %struct.state*, %struct.state** %4, align 8
  %77 = getelementptr inbounds %struct.state, %struct.state* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %75
  %81 = load %struct.state*, %struct.state** %4, align 8
  %82 = getelementptr inbounds %struct.state, %struct.state* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.action*, %struct.action** %5, align 8
  %85 = getelementptr inbounds %struct.action, %struct.action* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %83, %87
  br label %89

89:                                               ; preds = %80, %75
  %90 = phi i1 [ true, %75 ], [ %88, %80 ]
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.state*, %struct.state** %4, align 8
  %95 = getelementptr inbounds %struct.state, %struct.state* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %89, %70
  br label %97

97:                                               ; preds = %96, %55
  br label %98

98:                                               ; preds = %97, %39
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.action*, %struct.action** %5, align 8
  %101 = getelementptr inbounds %struct.action, %struct.action* %100, i32 0, i32 2
  %102 = load %struct.action*, %struct.action** %101, align 8
  store %struct.action* %102, %struct.action** %5, align 8
  br label %36

103:                                              ; preds = %36
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %3, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %3, align 4
  br label %7

107:                                              ; preds = %7
  %108 = load %struct.lemon*, %struct.lemon** %2, align 8
  %109 = getelementptr inbounds %struct.lemon, %struct.lemon* %108, i32 0, i32 4
  %110 = load %struct.state**, %struct.state*** %109, align 8
  %111 = getelementptr inbounds %struct.state*, %struct.state** %110, i64 1
  %112 = load %struct.lemon*, %struct.lemon** %2, align 8
  %113 = getelementptr inbounds %struct.lemon, %struct.lemon* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sub nsw i32 %114, 1
  %116 = load i32, i32* @stateResortCompare, align 4
  %117 = call i32 @qsort(%struct.state** %111, i32 %115, i32 8, i32 %116)
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %134, %107
  %119 = load i32, i32* %3, align 4
  %120 = load %struct.lemon*, %struct.lemon** %2, align 8
  %121 = getelementptr inbounds %struct.lemon, %struct.lemon* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %137

124:                                              ; preds = %118
  %125 = load i32, i32* %3, align 4
  %126 = load %struct.lemon*, %struct.lemon** %2, align 8
  %127 = getelementptr inbounds %struct.lemon, %struct.lemon* %126, i32 0, i32 4
  %128 = load %struct.state**, %struct.state*** %127, align 8
  %129 = load i32, i32* %3, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.state*, %struct.state** %128, i64 %130
  %132 = load %struct.state*, %struct.state** %131, align 8
  %133 = getelementptr inbounds %struct.state, %struct.state* %132, i32 0, i32 3
  store i32 %125, i32* %133, align 8
  br label %134

134:                                              ; preds = %124
  %135 = load i32, i32* %3, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %3, align 4
  br label %118

137:                                              ; preds = %118
  %138 = load %struct.lemon*, %struct.lemon** %2, align 8
  %139 = getelementptr inbounds %struct.lemon, %struct.lemon* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.lemon*, %struct.lemon** %2, align 8
  %142 = getelementptr inbounds %struct.lemon, %struct.lemon* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 8
  br label %143

143:                                              ; preds = %164, %137
  %144 = load %struct.lemon*, %struct.lemon** %2, align 8
  %145 = getelementptr inbounds %struct.lemon, %struct.lemon* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = icmp sgt i32 %146, 1
  br i1 %147, label %148, label %162

148:                                              ; preds = %143
  %149 = load %struct.lemon*, %struct.lemon** %2, align 8
  %150 = getelementptr inbounds %struct.lemon, %struct.lemon* %149, i32 0, i32 4
  %151 = load %struct.state**, %struct.state*** %150, align 8
  %152 = load %struct.lemon*, %struct.lemon** %2, align 8
  %153 = getelementptr inbounds %struct.lemon, %struct.lemon* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.state*, %struct.state** %151, i64 %156
  %158 = load %struct.state*, %struct.state** %157, align 8
  %159 = getelementptr inbounds %struct.state, %struct.state* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br label %162

162:                                              ; preds = %148, %143
  %163 = phi i1 [ false, %143 ], [ %161, %148 ]
  br i1 %163, label %164, label %169

164:                                              ; preds = %162
  %165 = load %struct.lemon*, %struct.lemon** %2, align 8
  %166 = getelementptr inbounds %struct.lemon, %struct.lemon* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %166, align 8
  br label %143

169:                                              ; preds = %162
  ret void
}

declare dso_local i32 @compute_action(%struct.lemon*, %struct.action*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @qsort(%struct.state**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
