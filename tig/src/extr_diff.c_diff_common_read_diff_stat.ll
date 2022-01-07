; ModuleID = '/home/carl/AnghaBench/tig/src/extr_diff.c_diff_common_read_diff_stat.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_diff.c_diff_common_read_diff_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line = type { i32 }
%struct.view = type { i32 }
%struct.diff_stat_context = type { i8*, i32, i32 }

@LINE_DIFF_STAT = common dso_local global i32 0, align 4
@LINE_DEFAULT = common dso_local global i32 0, align 4
@LINE_DIFF_DEL = common dso_local global i32 0, align 4
@LINE_DIFF_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.line* (%struct.view*, i8*)* @diff_common_read_diff_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.line* @diff_common_read_diff_stat(%struct.view* %0, i8* %1) #0 {
  %3 = alloca %struct.view*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.diff_stat_context, align 8
  store %struct.view* %0, %struct.view** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %5, i32 0, i32 0
  %7 = load i8*, i8** %4, align 8
  store i8* %7, i8** %6, align 8
  %8 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %5, i32 0, i32 1
  %9 = load i32, i32* @LINE_DIFF_STAT, align 4
  store i32 %9, i32* %8, align 8
  %10 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %5, i32 0, i32 2
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @LINE_DEFAULT, align 4
  %12 = call i64 @diff_common_read_diff_stat_part(%struct.diff_stat_context* %5, i8 signext 124, i32 %11)
  %13 = load i32, i32* @LINE_DEFAULT, align 4
  %14 = call i64 @diff_common_read_diff_stat_part(%struct.diff_stat_context* %5, i8 signext 66, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load i32, i32* @LINE_DIFF_DEL, align 4
  %18 = call i64 @diff_common_read_diff_stat_part(%struct.diff_stat_context* %5, i8 signext 32, i32 %17)
  %19 = load i32, i32* @LINE_DEFAULT, align 4
  %20 = call i64 @diff_common_read_diff_stat_part(%struct.diff_stat_context* %5, i8 signext 45, i32 %19)
  %21 = load i32, i32* @LINE_DIFF_ADD, align 4
  %22 = call i64 @diff_common_read_diff_stat_part(%struct.diff_stat_context* %5, i8 signext 32, i32 %21)
  %23 = load i32, i32* @LINE_DEFAULT, align 4
  %24 = call i64 @diff_common_read_diff_stat_part(%struct.diff_stat_context* %5, i8 signext 98, i32 %23)
  br label %30

25:                                               ; preds = %2
  %26 = load i32, i32* @LINE_DIFF_ADD, align 4
  %27 = call i64 @diff_common_read_diff_stat_part(%struct.diff_stat_context* %5, i8 signext 43, i32 %26)
  %28 = load i32, i32* @LINE_DIFF_DEL, align 4
  %29 = call i64 @diff_common_read_diff_stat_part(%struct.diff_stat_context* %5, i8 signext 45, i32 %28)
  br label %30

30:                                               ; preds = %25, %16
  %31 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %5, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @strlen(i32 %32)
  %34 = call i32 @diff_common_add_cell(%struct.diff_stat_context* %5, i32 %33, i32 0)
  %35 = load %struct.view*, %struct.view** %3, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* @LINE_DIFF_STAT, align 4
  %38 = call %struct.line* @diff_common_add_line(%struct.view* %35, i8* %36, i32 %37, %struct.diff_stat_context* %5)
  ret %struct.line* %38
}

declare dso_local i64 @diff_common_read_diff_stat_part(%struct.diff_stat_context*, i8 signext, i32) #1

declare dso_local i32 @diff_common_add_cell(%struct.diff_stat_context*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local %struct.line* @diff_common_add_line(%struct.view*, i8*, i32, %struct.diff_stat_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
