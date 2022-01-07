; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsarray.c_Ap_sort.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsarray.c_Ap_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.sortslot = type { i32, %struct.TYPE_17__* }

@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"array is too large to sort\00", align 1
@sortcmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @Ap_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Ap_sort(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.sortslot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  store %struct.sortslot* null, %struct.sortslot** %3, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %8 = call i32 @js_getlength(%struct.TYPE_17__* %7, i32 0)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %13 = call i32 @js_copy(%struct.TYPE_17__* %12, i32 0)
  br label %128

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @INT_MAX, align 4
  %17 = sdiv i32 %16, 16
  %18 = icmp sge i32 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %21 = call i32 @js_rangeerror(%struct.TYPE_17__* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %14
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 16
  %27 = trunc i64 %26 to i32
  %28 = call %struct.sortslot* @js_malloc(%struct.TYPE_17__* %23, i32 %27)
  store %struct.sortslot* %28, %struct.sortslot** %3, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %34 = call i64 @js_try(%struct.TYPE_17__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %22
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 4
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %42 = load %struct.sortslot*, %struct.sortslot** %3, align 8
  %43 = call i32 @js_free(%struct.TYPE_17__* %41, %struct.sortslot* %42)
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %45 = call i32 @js_throw(%struct.TYPE_17__* %44)
  br label %46

46:                                               ; preds = %36, %22
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %76, %46
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %79

51:                                               ; preds = %47
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i64 @js_hasindex(%struct.TYPE_17__* %52, i32 0, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %51
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %58 = call i32* @js_tovalue(%struct.TYPE_17__* %57, i32 -1)
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sortslot*, %struct.sortslot** %3, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.sortslot, %struct.sortslot* %60, i64 %62
  %64 = getelementptr inbounds %struct.sortslot, %struct.sortslot* %63, i32 0, i32 0
  store i32 %59, i32* %64, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %66 = load %struct.sortslot*, %struct.sortslot** %3, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.sortslot, %struct.sortslot* %66, i64 %68
  %70 = getelementptr inbounds %struct.sortslot, %struct.sortslot* %69, i32 0, i32 1
  store %struct.TYPE_17__* %65, %struct.TYPE_17__** %70, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %72 = call i32 @js_pop(%struct.TYPE_17__* %71, i32 1)
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %56, %51
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %47

79:                                               ; preds = %47
  %80 = load %struct.sortslot*, %struct.sortslot** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @sortcmp, align 4
  %83 = call i32 @qsort(%struct.sortslot* %80, i32 %81, i32 16, i32 %82)
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %100, %79
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %84
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %90 = load %struct.sortslot*, %struct.sortslot** %3, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.sortslot, %struct.sortslot* %90, i64 %92
  %94 = getelementptr inbounds %struct.sortslot, %struct.sortslot* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @js_pushvalue(%struct.TYPE_17__* %89, i32 %95)
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @js_setindex(%struct.TYPE_17__* %97, i32 0, i32 %98)
  br label %100

100:                                              ; preds = %88
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  br label %84

103:                                              ; preds = %84
  %104 = load i32, i32* %5, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %113, %103
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @js_delindex(%struct.TYPE_17__* %110, i32 0, i32 %111)
  br label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %4, align 4
  br label %105

116:                                              ; preds = %105
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %118, align 4
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %122 = call i32 @js_endtry(%struct.TYPE_17__* %121)
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %124 = load %struct.sortslot*, %struct.sortslot** %3, align 8
  %125 = call i32 @js_free(%struct.TYPE_17__* %123, %struct.sortslot* %124)
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %127 = call i32 @js_copy(%struct.TYPE_17__* %126, i32 0)
  br label %128

128:                                              ; preds = %116, %11
  ret void
}

declare dso_local i32 @js_getlength(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @js_copy(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @js_rangeerror(%struct.TYPE_17__*, i8*) #1

declare dso_local %struct.sortslot* @js_malloc(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @js_try(%struct.TYPE_17__*) #1

declare dso_local i32 @js_free(%struct.TYPE_17__*, %struct.sortslot*) #1

declare dso_local i32 @js_throw(%struct.TYPE_17__*) #1

declare dso_local i64 @js_hasindex(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32* @js_tovalue(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @js_pop(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @qsort(%struct.sortslot*, i32, i32, i32) #1

declare dso_local i32 @js_pushvalue(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @js_setindex(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @js_delindex(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @js_endtry(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
