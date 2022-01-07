; ModuleID = '/home/carl/AnghaBench/tig/src/extr_stage.c_stage_select.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_stage.c_stage_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }
%struct.line = type { i32 }

@stage_line_type = common dso_local global i64 0, align 8
@LINE_STAT_STAGED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"Staged changes\00", align 1
@LINE_STAT_UNSTAGED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Unstaged changes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.view*, %struct.line*)* @stage_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stage_select(%struct.view* %0, %struct.line* %1) #0 {
  %3 = alloca %struct.view*, align 8
  %4 = alloca %struct.line*, align 8
  %5 = alloca i8*, align 8
  store %struct.view* %0, %struct.view** %3, align 8
  store %struct.line* %1, %struct.line** %4, align 8
  %6 = load i64, i64* @stage_line_type, align 8
  %7 = load i64, i64* @LINE_STAT_STAGED, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %16

10:                                               ; preds = %2
  %11 = load i64, i64* @stage_line_type, align 8
  %12 = load i64, i64* @LINE_STAT_UNSTAGED, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* null
  br label %16

16:                                               ; preds = %10, %9
  %17 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %9 ], [ %15, %10 ]
  store i8* %17, i8** %5, align 8
  %18 = load %struct.view*, %struct.view** %3, align 8
  %19 = load %struct.line*, %struct.line** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @diff_common_select(%struct.view* %18, %struct.line* %19, i8* %20)
  ret void
}

declare dso_local i32 @diff_common_select(%struct.view*, %struct.line*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
