; ModuleID = '/home/carl/AnghaBench/tig/src/extr_status.c_status_get_column_data.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_status.c_status_get_column_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view_column = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.view = type { %struct.line* }
%struct.line = type { i32, %struct.status* }
%struct.status = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.view_column_data = type { i32, i32*, %struct.view_column* }

@status_get_column_data.group_column = internal global %struct.view_column zeroinitializer, align 8
@VIEW_COLUMN_SECTION = common dso_local global i32 0, align 4
@LINE_SECTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Changes to be committed:\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Changes not staged for commit:\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Untracked files:\00", align 1
@LINE_DEFAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"  (no files)\00", align 1
@opt_status_show_untracked_files = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"  (not shown)\00", align 1
@status_onbranch = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, %struct.line*, %struct.view_column_data*)* @status_get_column_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @status_get_column_data(%struct.view* %0, %struct.line* %1, %struct.view_column_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca %struct.line*, align 8
  %7 = alloca %struct.view_column_data*, align 8
  %8 = alloca %struct.status*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %5, align 8
  store %struct.line* %1, %struct.line** %6, align 8
  store %struct.view_column_data* %2, %struct.view_column_data** %7, align 8
  %11 = load %struct.line*, %struct.line** %6, align 8
  %12 = getelementptr inbounds %struct.line, %struct.line* %11, i32 0, i32 1
  %13 = load %struct.status*, %struct.status** %12, align 8
  store %struct.status* %13, %struct.status** %8, align 8
  %14 = load %struct.status*, %struct.status** %8, align 8
  %15 = icmp ne %struct.status* %14, null
  br i1 %15, label %69, label %16

16:                                               ; preds = %3
  %17 = load %struct.view_column_data*, %struct.view_column_data** %7, align 8
  %18 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %17, i32 0, i32 2
  store %struct.view_column* @status_get_column_data.group_column, %struct.view_column** %18, align 8
  %19 = load i32, i32* @VIEW_COLUMN_SECTION, align 4
  %20 = load %struct.view_column_data*, %struct.view_column_data** %7, align 8
  %21 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %20, i32 0, i32 2
  %22 = load %struct.view_column*, %struct.view_column** %21, align 8
  %23 = getelementptr inbounds %struct.view_column, %struct.view_column* %22, i32 0, i32 1
  store i32 %19, i32* %23, align 8
  %24 = load %struct.line*, %struct.line** %6, align 8
  %25 = getelementptr inbounds %struct.line, %struct.line* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %53 [
    i32 130, label %27
    i32 129, label %29
    i32 128, label %31
    i32 131, label %33
    i32 132, label %51
  ]

27:                                               ; preds = %16
  %28 = load i32, i32* @LINE_SECTION, align 4
  store i32 %28, i32* %10, align 4
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %54

29:                                               ; preds = %16
  %30 = load i32, i32* @LINE_SECTION, align 4
  store i32 %30, i32* %10, align 4
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %54

31:                                               ; preds = %16
  %32 = load i32, i32* @LINE_SECTION, align 4
  store i32 %32, i32* %10, align 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %54

33:                                               ; preds = %16
  %34 = load i32, i32* @LINE_DEFAULT, align 4
  store i32 %34, i32* %10, align 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  %35 = load i32, i32* @opt_status_show_untracked_files, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %33
  %38 = load %struct.view*, %struct.view** %5, align 8
  %39 = getelementptr inbounds %struct.view, %struct.view* %38, i32 0, i32 0
  %40 = load %struct.line*, %struct.line** %39, align 8
  %41 = load %struct.line*, %struct.line** %6, align 8
  %42 = icmp ult %struct.line* %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load %struct.line*, %struct.line** %6, align 8
  %45 = getelementptr inbounds %struct.line, %struct.line* %44, i64 -1
  %46 = getelementptr inbounds %struct.line, %struct.line* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 128
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %50

50:                                               ; preds = %49, %43, %37, %33
  br label %54

51:                                               ; preds = %16
  store i32 132, i32* %10, align 4
  %52 = load i8*, i8** @status_onbranch, align 8
  store i8* %52, i8** %9, align 8
  br label %54

53:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %81

54:                                               ; preds = %51, %50, %31, %29, %27
  %55 = load i8*, i8** %9, align 8
  %56 = load %struct.view_column_data*, %struct.view_column_data** %7, align 8
  %57 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %56, i32 0, i32 2
  %58 = load %struct.view_column*, %struct.view_column** %57, align 8
  %59 = getelementptr inbounds %struct.view_column, %struct.view_column* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i8* %55, i8** %61, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.view_column_data*, %struct.view_column_data** %7, align 8
  %64 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %63, i32 0, i32 2
  %65 = load %struct.view_column*, %struct.view_column** %64, align 8
  %66 = getelementptr inbounds %struct.view_column, %struct.view_column* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  store i32 %62, i32* %68, align 8
  br label %80

69:                                               ; preds = %3
  %70 = load %struct.status*, %struct.status** %8, align 8
  %71 = getelementptr inbounds %struct.status, %struct.status* %70, i32 0, i32 1
  %72 = load %struct.view_column_data*, %struct.view_column_data** %7, align 8
  %73 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %72, i32 0, i32 1
  store i32* %71, i32** %73, align 8
  %74 = load %struct.status*, %struct.status** %8, align 8
  %75 = getelementptr inbounds %struct.status, %struct.status* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.view_column_data*, %struct.view_column_data** %7, align 8
  %79 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %69, %54
  store i32 1, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %53
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
