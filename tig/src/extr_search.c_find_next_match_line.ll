; ModuleID = '/home/carl/AnghaBench/tig/src/extr_search.c_find_next_match_line.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_search.c_find_next_match_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32, i64*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"Line %zu matches '%s' (%zu of %zu)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i32, i32)* @find_next_match_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_next_match_line(%struct.view* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %18

13:                                               ; preds = %3
  %14 = load %struct.view*, %struct.view** %5, align 8
  %15 = getelementptr inbounds %struct.view, %struct.view* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  br label %18

18:                                               ; preds = %13, %12
  %19 = phi i32 [ 0, %12 ], [ %17, %13 ]
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %8, align 8
  br label %21

21:                                               ; preds = %99, %18
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.view*, %struct.view** %5, align 8
  %24 = getelementptr inbounds %struct.view, %struct.view* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %22, %26
  br i1 %27, label %28, label %104

28:                                               ; preds = %21
  %29 = load %struct.view*, %struct.view** %5, align 8
  %30 = getelementptr inbounds %struct.view, %struct.view* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %9, align 8
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %28
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.view*, %struct.view** %5, align 8
  %43 = getelementptr inbounds %struct.view, %struct.view* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ule i64 %41, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %99

48:                                               ; preds = %40, %37
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.view*, %struct.view** %5, align 8
  %54 = getelementptr inbounds %struct.view, %struct.view* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ugt i64 %52, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %99

59:                                               ; preds = %51, %48
  br label %83

60:                                               ; preds = %28
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %60
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.view*, %struct.view** %5, align 8
  %66 = getelementptr inbounds %struct.view, %struct.view* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp uge i64 %64, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %99

71:                                               ; preds = %63, %60
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.view*, %struct.view** %5, align 8
  %77 = getelementptr inbounds %struct.view, %struct.view* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ult i64 %75, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %99

82:                                               ; preds = %74, %71
  br label %83

83:                                               ; preds = %82, %59
  %84 = load %struct.view*, %struct.view** %5, align 8
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @select_view_line(%struct.view* %84, i64 %85)
  %87 = load i64, i64* %9, align 8
  %88 = add i64 %87, 1
  %89 = load %struct.view*, %struct.view** %5, align 8
  %90 = getelementptr inbounds %struct.view, %struct.view* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i64, i64* %8, align 8
  %93 = add i64 %92, 1
  %94 = load %struct.view*, %struct.view** %5, align 8
  %95 = getelementptr inbounds %struct.view, %struct.view* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = call i32 @success(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %88, i32 %91, i64 %93, i64 %97)
  store i32 %98, i32* %4, align 4
  br label %105

99:                                               ; preds = %81, %70, %58, %47
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %8, align 8
  %103 = add i64 %102, %101
  store i64 %103, i64* %8, align 8
  br label %21

104:                                              ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %83
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @select_view_line(%struct.view*, i64) #1

declare dso_local i32 @success(i8*, i64, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
