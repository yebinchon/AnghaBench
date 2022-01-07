; ModuleID = '/home/carl/AnghaBench/tig/src/extr_grep.c_grep_get_line.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_grep.c_grep_get_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_line = type { i8* }
%struct.line = type { i64, %struct.grep_line* }

@grep_get_line.grep_line = internal global %struct.grep_line zeroinitializer, align 8
@LINE_DEFAULT = common dso_local global i64 0, align 8
@LINE_DELIMITER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.grep_line* (%struct.line*)* @grep_get_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.grep_line* @grep_get_line(%struct.line* %0) #0 {
  %2 = alloca %struct.grep_line*, align 8
  %3 = alloca %struct.line*, align 8
  store %struct.line* %0, %struct.line** %3, align 8
  %4 = load %struct.line*, %struct.line** %3, align 8
  %5 = getelementptr inbounds %struct.line, %struct.line* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @LINE_DEFAULT, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.line*, %struct.line** %3, align 8
  %11 = getelementptr inbounds %struct.line, %struct.line* %10, i32 0, i32 1
  %12 = load %struct.grep_line*, %struct.grep_line** %11, align 8
  store %struct.grep_line* %12, %struct.grep_line** %2, align 8
  br label %26

13:                                               ; preds = %1
  %14 = load %struct.line*, %struct.line** %3, align 8
  %15 = getelementptr inbounds %struct.line, %struct.line* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LINE_DELIMITER, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %24

20:                                               ; preds = %13
  %21 = load %struct.line*, %struct.line** %3, align 8
  %22 = call i32 @box_text(%struct.line* %21)
  %23 = call i8* @get_path(i32 %22)
  br label %24

24:                                               ; preds = %20, %19
  %25 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %19 ], [ %23, %20 ]
  store i8* %25, i8** getelementptr inbounds (%struct.grep_line, %struct.grep_line* @grep_get_line.grep_line, i32 0, i32 0), align 8
  store %struct.grep_line* @grep_get_line.grep_line, %struct.grep_line** %2, align 8
  br label %26

26:                                               ; preds = %24, %9
  %27 = load %struct.grep_line*, %struct.grep_line** %2, align 8
  ret %struct.grep_line* %27
}

declare dso_local i8* @get_path(i32) #1

declare dso_local i32 @box_text(%struct.line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
