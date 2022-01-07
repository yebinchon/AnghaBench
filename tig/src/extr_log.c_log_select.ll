; ModuleID = '/home/carl/AnghaBench/tig/src/extr_log.c_log_select.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_log.c_log_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32, %struct.TYPE_2__*, %struct.log_state* }
%struct.TYPE_2__ = type { i32 }
%struct.log_state = type { i32, i64 }
%struct.line = type { i32, i64 }

@LINE_COMMIT = common dso_local global i64 0, align 8
@VIEW_NO_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.view*, %struct.line*)* @log_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_select(%struct.view* %0, %struct.line* %1) #0 {
  %3 = alloca %struct.view*, align 8
  %4 = alloca %struct.line*, align 8
  %5 = alloca %struct.log_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.line*, align 8
  store %struct.view* %0, %struct.view** %3, align 8
  store %struct.line* %1, %struct.line** %4, align 8
  %8 = load %struct.view*, %struct.view** %3, align 8
  %9 = getelementptr inbounds %struct.view, %struct.view* %8, i32 0, i32 2
  %10 = load %struct.log_state*, %struct.log_state** %9, align 8
  store %struct.log_state* %10, %struct.log_state** %5, align 8
  %11 = load %struct.log_state*, %struct.log_state** %5, align 8
  %12 = getelementptr inbounds %struct.log_state, %struct.log_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.line*, %struct.line** %4, align 8
  %19 = getelementptr inbounds %struct.line, %struct.line* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %17, %20
  %22 = call i32 @abs(i32 %21) #3
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %36, label %24

24:                                               ; preds = %16
  %25 = load %struct.log_state*, %struct.log_state** %5, align 8
  %26 = getelementptr inbounds %struct.log_state, %struct.log_state* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LINE_COMMIT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.line*, %struct.line** %4, align 8
  %33 = getelementptr inbounds %struct.line, %struct.line* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %31, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %30, %16, %2
  %37 = load %struct.view*, %struct.view** %3, align 8
  %38 = load %struct.line*, %struct.line** %4, align 8
  %39 = load i64, i64* @LINE_COMMIT, align 8
  %40 = call %struct.line* @find_prev_line_by_type(%struct.view* %37, %struct.line* %38, i64 %39)
  store %struct.line* %40, %struct.line** %7, align 8
  %41 = load %struct.line*, %struct.line** %7, align 8
  %42 = icmp ne %struct.line* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load %struct.view*, %struct.view** %3, align 8
  %45 = load %struct.line*, %struct.line** %7, align 8
  %46 = call i32 @log_copy_rev(%struct.view* %44, %struct.line* %45)
  br label %47

47:                                               ; preds = %43, %36
  br label %48

48:                                               ; preds = %47, %30, %24
  %49 = load %struct.line*, %struct.line** %4, align 8
  %50 = getelementptr inbounds %struct.line, %struct.line* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @LINE_COMMIT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load %struct.view*, %struct.view** %3, align 8
  %56 = load i32, i32* @VIEW_NO_REF, align 4
  %57 = call i32 @view_has_flags(%struct.view* %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = load %struct.view*, %struct.view** %3, align 8
  %61 = load %struct.line*, %struct.line** %4, align 8
  %62 = call i32 @log_copy_rev(%struct.view* %60, %struct.line* %61)
  br label %63

63:                                               ; preds = %59, %54, %48
  %64 = load %struct.view*, %struct.view** %3, align 8
  %65 = getelementptr inbounds %struct.view, %struct.view* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.view*, %struct.view** %3, align 8
  %70 = getelementptr inbounds %struct.view, %struct.view* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @string_copy_rev(i32 %68, i32 %71)
  %73 = load %struct.line*, %struct.line** %4, align 8
  %74 = getelementptr inbounds %struct.line, %struct.line* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.log_state*, %struct.log_state** %5, align 8
  %77 = getelementptr inbounds %struct.log_state, %struct.log_state* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.line*, %struct.line** %4, align 8
  %79 = getelementptr inbounds %struct.line, %struct.line* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.log_state*, %struct.log_state** %5, align 8
  %82 = getelementptr inbounds %struct.log_state, %struct.log_state* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local %struct.line* @find_prev_line_by_type(%struct.view*, %struct.line*, i64) #2

declare dso_local i32 @log_copy_rev(%struct.view*, %struct.line*) #2

declare dso_local i32 @view_has_flags(%struct.view*, i32) #2

declare dso_local i32 @string_copy_rev(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
