; ModuleID = '/home/carl/AnghaBench/tig/src/extr_diff.c_diff_get_lineno.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_diff.c_diff_get_lineno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }
%struct.line = type { i64 }
%struct.chunk_header = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LINE_DIFF_HEADER = common dso_local global i32 0, align 4
@LINE_DIFF_CHUNK = common dso_local global i32 0, align 4
@LINE_DIFF_DEL = common dso_local global i64 0, align 8
@LINE_DIFF_DEL2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diff_get_lineno(%struct.view* %0, %struct.line* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.view*, align 8
  %5 = alloca %struct.line*, align 8
  %6 = alloca %struct.line*, align 8
  %7 = alloca %struct.line*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.chunk_header, align 4
  store %struct.view* %0, %struct.view** %4, align 8
  store %struct.line* %1, %struct.line** %5, align 8
  %10 = load %struct.view*, %struct.view** %4, align 8
  %11 = load %struct.line*, %struct.line** %5, align 8
  %12 = load i32, i32* @LINE_DIFF_HEADER, align 4
  %13 = call %struct.line* @find_prev_line_by_type(%struct.view* %10, %struct.line* %11, i32 %12)
  store %struct.line* %13, %struct.line** %6, align 8
  %14 = load %struct.view*, %struct.view** %4, align 8
  %15 = load %struct.line*, %struct.line** %5, align 8
  %16 = load i32, i32* @LINE_DIFF_CHUNK, align 4
  %17 = call %struct.line* @find_prev_line_by_type(%struct.view* %14, %struct.line* %15, i32 %16)
  store %struct.line* %17, %struct.line** %7, align 8
  %18 = load %struct.line*, %struct.line** %6, align 8
  %19 = icmp ne %struct.line* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.line*, %struct.line** %7, align 8
  %22 = icmp ne %struct.line* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct.line*, %struct.line** %7, align 8
  %25 = load %struct.line*, %struct.line** %6, align 8
  %26 = icmp ult %struct.line* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %20, %2
  store i32 0, i32* %3, align 4
  br label %65

28:                                               ; preds = %23
  %29 = load %struct.line*, %struct.line** %7, align 8
  %30 = call i32 @box_text(%struct.line* %29)
  %31 = call i32 @parse_chunk_header(%struct.chunk_header* %9, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %65

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.chunk_header, %struct.chunk_header* %9, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  %38 = load %struct.line*, %struct.line** %7, align 8
  %39 = getelementptr inbounds %struct.line, %struct.line* %38, i32 1
  store %struct.line* %39, %struct.line** %7, align 8
  br label %40

40:                                               ; preds = %60, %34
  %41 = load %struct.line*, %struct.line** %7, align 8
  %42 = load %struct.line*, %struct.line** %5, align 8
  %43 = icmp ult %struct.line* %41, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %40
  %45 = load %struct.line*, %struct.line** %7, align 8
  %46 = getelementptr inbounds %struct.line, %struct.line* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @LINE_DIFF_DEL, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load %struct.line*, %struct.line** %7, align 8
  %52 = getelementptr inbounds %struct.line, %struct.line* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @LINE_DIFF_DEL2, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %8, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %56, %50, %44
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.line*, %struct.line** %7, align 8
  %62 = getelementptr inbounds %struct.line, %struct.line* %61, i32 1
  store %struct.line* %62, %struct.line** %7, align 8
  br label %40

63:                                               ; preds = %40
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %33, %27
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.line* @find_prev_line_by_type(%struct.view*, %struct.line*, i32) #1

declare dso_local i32 @parse_chunk_header(%struct.chunk_header*, i32) #1

declare dso_local i32 @box_text(%struct.line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
