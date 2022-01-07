; ModuleID = '/home/carl/AnghaBench/tig/src/extr_diff.c_diff_find_header_from_stat.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_diff.c_diff_find_header_from_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.line* }
%struct.line = type { i64 }

@LINE_DIFF_STAT = common dso_local global i64 0, align 8
@LINE_DIFF_HEADER = common dso_local global i32 0, align 4
@LINE_DIFF_INDEX = common dso_local global i32 0, align 4
@LINE_DIFF_SIMILARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.line* (%struct.view*, %struct.line*)* @diff_find_header_from_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.line* @diff_find_header_from_stat(%struct.view* %0, %struct.line* %1) #0 {
  %3 = alloca %struct.line*, align 8
  %4 = alloca %struct.view*, align 8
  %5 = alloca %struct.line*, align 8
  %6 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %4, align 8
  store %struct.line* %1, %struct.line** %5, align 8
  %7 = load %struct.line*, %struct.line** %5, align 8
  %8 = getelementptr inbounds %struct.line, %struct.line* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @LINE_DIFF_STAT, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %73

12:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %26, %12
  %14 = load %struct.view*, %struct.view** %4, align 8
  %15 = load %struct.line*, %struct.line** %5, align 8
  %16 = call i64 @view_has_line(%struct.view* %14, %struct.line* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.line*, %struct.line** %5, align 8
  %20 = getelementptr inbounds %struct.line, %struct.line* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @LINE_DIFF_STAT, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %18, %13
  %25 = phi i1 [ false, %13 ], [ %23, %18 ]
  br i1 %25, label %26, label %31

26:                                               ; preds = %24
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  %29 = load %struct.line*, %struct.line** %5, align 8
  %30 = getelementptr inbounds %struct.line, %struct.line* %29, i32 -1
  store %struct.line* %30, %struct.line** %5, align 8
  br label %13

31:                                               ; preds = %24
  %32 = load %struct.view*, %struct.view** %4, align 8
  %33 = getelementptr inbounds %struct.view, %struct.view* %32, i32 0, i32 0
  %34 = load %struct.line*, %struct.line** %33, align 8
  store %struct.line* %34, %struct.line** %5, align 8
  br label %35

35:                                               ; preds = %68, %31
  %36 = load %struct.view*, %struct.view** %4, align 8
  %37 = load %struct.line*, %struct.line** %5, align 8
  %38 = call i64 @view_has_line(%struct.view* %36, %struct.line* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %71

40:                                               ; preds = %35
  %41 = load %struct.view*, %struct.view** %4, align 8
  %42 = load %struct.line*, %struct.line** %5, align 8
  %43 = load i32, i32* @LINE_DIFF_HEADER, align 4
  %44 = call %struct.line* @find_next_line_by_type(%struct.view* %41, %struct.line* %42, i32 %43)
  store %struct.line* %44, %struct.line** %5, align 8
  %45 = load %struct.line*, %struct.line** %5, align 8
  %46 = icmp ne %struct.line* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  br label %71

48:                                               ; preds = %40
  %49 = load %struct.view*, %struct.view** %4, align 8
  %50 = load %struct.line*, %struct.line** %5, align 8
  %51 = load i32, i32* @LINE_DIFF_INDEX, align 4
  %52 = call i64 @diff_find_stat_entry(%struct.view* %49, %struct.line* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.view*, %struct.view** %4, align 8
  %56 = load %struct.line*, %struct.line** %5, align 8
  %57 = load i32, i32* @LINE_DIFF_SIMILARITY, align 4
  %58 = call i64 @diff_find_stat_entry(%struct.view* %55, %struct.line* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54, %48
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %71

64:                                               ; preds = %60
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %64, %54
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.line*, %struct.line** %5, align 8
  %70 = getelementptr inbounds %struct.line, %struct.line* %69, i32 1
  store %struct.line* %70, %struct.line** %5, align 8
  br label %35

71:                                               ; preds = %63, %47, %35
  %72 = load %struct.line*, %struct.line** %5, align 8
  store %struct.line* %72, %struct.line** %3, align 8
  br label %74

73:                                               ; preds = %2
  store %struct.line* null, %struct.line** %3, align 8
  br label %74

74:                                               ; preds = %73, %71
  %75 = load %struct.line*, %struct.line** %3, align 8
  ret %struct.line* %75
}

declare dso_local i64 @view_has_line(%struct.view*, %struct.line*) #1

declare dso_local %struct.line* @find_next_line_by_type(%struct.view*, %struct.line*, i32) #1

declare dso_local i64 @diff_find_stat_entry(%struct.view*, %struct.line*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
