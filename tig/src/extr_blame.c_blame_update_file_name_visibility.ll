; ModuleID = '/home/carl/AnghaBench/tig/src/extr_blame.c_blame_update_file_name_visibility.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_blame.c_blame_update_file_name_visibility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.blame_state* }
%struct.blame_state = type { i32 }
%struct.view_column = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@VIEW_COLUMN_FILE_NAME = common dso_local global i32 0, align 4
@FILENAME_NO = common dso_local global i64 0, align 8
@FILENAME_AUTO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.view*)* @blame_update_file_name_visibility to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blame_update_file_name_visibility(%struct.view* %0) #0 {
  %2 = alloca %struct.view*, align 8
  %3 = alloca %struct.blame_state*, align 8
  %4 = alloca %struct.view_column*, align 8
  store %struct.view* %0, %struct.view** %2, align 8
  %5 = load %struct.view*, %struct.view** %2, align 8
  %6 = getelementptr inbounds %struct.view, %struct.view* %5, i32 0, i32 0
  %7 = load %struct.blame_state*, %struct.blame_state** %6, align 8
  store %struct.blame_state* %7, %struct.blame_state** %3, align 8
  %8 = load %struct.view*, %struct.view** %2, align 8
  %9 = load i32, i32* @VIEW_COLUMN_FILE_NAME, align 4
  %10 = call %struct.view_column* @get_view_column(%struct.view* %8, i32 %9)
  store %struct.view_column* %10, %struct.view_column** %4, align 8
  %11 = load %struct.view_column*, %struct.view_column** %4, align 8
  %12 = icmp ne %struct.view_column* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %43

14:                                               ; preds = %1
  %15 = load %struct.view_column*, %struct.view_column** %4, align 8
  %16 = getelementptr inbounds %struct.view_column, %struct.view_column* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @FILENAME_NO, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %38, label %22

22:                                               ; preds = %14
  %23 = load %struct.view_column*, %struct.view_column** %4, align 8
  %24 = getelementptr inbounds %struct.view_column, %struct.view_column* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FILENAME_AUTO, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load %struct.blame_state*, %struct.blame_state** %3, align 8
  %32 = getelementptr inbounds %struct.blame_state, %struct.blame_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %30, %22
  %37 = phi i1 [ false, %22 ], [ %35, %30 ]
  br label %38

38:                                               ; preds = %36, %14
  %39 = phi i1 [ true, %14 ], [ %37, %36 ]
  %40 = zext i1 %39 to i32
  %41 = load %struct.view_column*, %struct.view_column** %4, align 8
  %42 = getelementptr inbounds %struct.view_column, %struct.view_column* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %38, %13
  ret void
}

declare dso_local %struct.view_column* @get_view_column(%struct.view*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
