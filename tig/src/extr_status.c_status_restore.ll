; ModuleID = '/home/carl/AnghaBench/tig/src/extr_status.c_status_restore.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_status.c_status_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.view*)* @status_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @status_restore(%struct.view* %0) #0 {
  %2 = alloca %struct.view*, align 8
  store %struct.view* %0, %struct.view** %2, align 8
  %3 = load %struct.view*, %struct.view** %2, align 8
  %4 = getelementptr inbounds %struct.view, %struct.view* %3, i32 0, i32 1
  %5 = call i32 @check_position(%struct.TYPE_7__* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %147

8:                                                ; preds = %1
  %9 = load %struct.view*, %struct.view** %2, align 8
  %10 = getelementptr inbounds %struct.view, %struct.view* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.view*, %struct.view** %2, align 8
  %14 = getelementptr inbounds %struct.view, %struct.view* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %12, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %8
  %18 = load %struct.view*, %struct.view** %2, align 8
  %19 = getelementptr inbounds %struct.view, %struct.view* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  %22 = load %struct.view*, %struct.view** %2, align 8
  %23 = getelementptr inbounds %struct.view, %struct.view* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  br label %25

25:                                               ; preds = %17, %8
  br label %26

26:                                               ; preds = %51, %25
  %27 = load %struct.view*, %struct.view** %2, align 8
  %28 = getelementptr inbounds %struct.view, %struct.view* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.view*, %struct.view** %2, align 8
  %32 = getelementptr inbounds %struct.view, %struct.view* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %26
  %36 = load %struct.view*, %struct.view** %2, align 8
  %37 = getelementptr inbounds %struct.view, %struct.view* %36, i32 0, i32 3
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load %struct.view*, %struct.view** %2, align 8
  %40 = getelementptr inbounds %struct.view, %struct.view* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %35, %26
  %50 = phi i1 [ false, %26 ], [ %48, %35 ]
  br i1 %50, label %51, label %57

51:                                               ; preds = %49
  %52 = load %struct.view*, %struct.view** %2, align 8
  %53 = getelementptr inbounds %struct.view, %struct.view* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %26

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %80, %57
  %59 = load %struct.view*, %struct.view** %2, align 8
  %60 = getelementptr inbounds %struct.view, %struct.view* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %58
  %65 = load %struct.view*, %struct.view** %2, align 8
  %66 = getelementptr inbounds %struct.view, %struct.view* %65, i32 0, i32 3
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load %struct.view*, %struct.view** %2, align 8
  %69 = getelementptr inbounds %struct.view, %struct.view* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  br label %78

78:                                               ; preds = %64, %58
  %79 = phi i1 [ false, %58 ], [ %77, %64 ]
  br i1 %79, label %80, label %86

80:                                               ; preds = %78
  %81 = load %struct.view*, %struct.view** %2, align 8
  %82 = getelementptr inbounds %struct.view, %struct.view* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %83, align 4
  br label %58

86:                                               ; preds = %78
  %87 = load %struct.view*, %struct.view** %2, align 8
  %88 = getelementptr inbounds %struct.view, %struct.view* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.view*, %struct.view** %2, align 8
  %92 = getelementptr inbounds %struct.view, %struct.view* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %86
  %96 = load %struct.view*, %struct.view** %2, align 8
  %97 = getelementptr inbounds %struct.view, %struct.view* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.view*, %struct.view** %2, align 8
  %101 = getelementptr inbounds %struct.view, %struct.view* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 4
  br label %107

103:                                              ; preds = %86
  %104 = load %struct.view*, %struct.view** %2, align 8
  %105 = getelementptr inbounds %struct.view, %struct.view* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  store i32 1, i32* %106, align 4
  br label %107

107:                                              ; preds = %103, %95
  %108 = load %struct.view*, %struct.view** %2, align 8
  %109 = getelementptr inbounds %struct.view, %struct.view* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.view*, %struct.view** %2, align 8
  %113 = getelementptr inbounds %struct.view, %struct.view* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp sgt i32 %111, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %107
  %118 = load %struct.view*, %struct.view** %2, align 8
  %119 = getelementptr inbounds %struct.view, %struct.view* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.view*, %struct.view** %2, align 8
  %123 = getelementptr inbounds %struct.view, %struct.view* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  store i32 %121, i32* %124, align 4
  br label %143

125:                                              ; preds = %107
  %126 = load %struct.view*, %struct.view** %2, align 8
  %127 = getelementptr inbounds %struct.view, %struct.view* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.view*, %struct.view** %2, align 8
  %131 = getelementptr inbounds %struct.view, %struct.view* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %125
  %135 = load %struct.view*, %struct.view** %2, align 8
  %136 = getelementptr inbounds %struct.view, %struct.view* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.view*, %struct.view** %2, align 8
  %140 = getelementptr inbounds %struct.view, %struct.view* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  store i32 %138, i32* %141, align 4
  br label %142

142:                                              ; preds = %134, %125
  br label %143

143:                                              ; preds = %142, %117
  %144 = load %struct.view*, %struct.view** %2, align 8
  %145 = getelementptr inbounds %struct.view, %struct.view* %144, i32 0, i32 1
  %146 = call i32 @clear_position(%struct.TYPE_7__* %145)
  br label %147

147:                                              ; preds = %143, %7
  ret void
}

declare dso_local i32 @check_position(%struct.TYPE_7__*) #1

declare dso_local i32 @clear_position(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
