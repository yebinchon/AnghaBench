; ModuleID = '/home/carl/AnghaBench/tig/src/extr_blame.c_blame_read_file.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_blame.c_blame_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.view = type { i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i8*, i8*, i64 }
%struct.buffer = type { i64, i32 }
%struct.blame_state = type { i32 }
%struct.blame = type { i64*, i32* }

@.str = private unnamed_addr constant [4 x i8] c"git\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"blame\00", align 1
@encoding_arg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"%(blameargs)\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"--incremental\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"No blame exist for %s\00", align 1
@repo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@OPEN_EXTRA = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"Failed to load blame data\00", align 1
@LINE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, %struct.buffer*, %struct.blame_state*)* @blame_read_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blame_read_file(%struct.view* %0, %struct.buffer* %1, %struct.blame_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca %struct.buffer*, align 8
  %7 = alloca %struct.blame_state*, align 8
  %8 = alloca [9 x i8*], align 16
  %9 = alloca %struct.blame*, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store %struct.buffer* %1, %struct.buffer** %6, align 8
  store %struct.blame_state* %2, %struct.blame_state** %7, align 8
  %10 = load %struct.buffer*, %struct.buffer** %6, align 8
  %11 = icmp ne %struct.buffer* %10, null
  br i1 %11, label %90, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds [9 x i8*], [9 x i8*]* %8, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** @encoding_arg, align 8
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %15, i64 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %17, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %18, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load %struct.view*, %struct.view** %5, align 8
  %21 = getelementptr inbounds %struct.view, %struct.view* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %12
  %29 = load %struct.view*, %struct.view** %5, align 8
  %30 = getelementptr inbounds %struct.view, %struct.view* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  br label %35

34:                                               ; preds = %12
  br label %35

35:                                               ; preds = %34, %28
  %36 = phi i8* [ %33, %28 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), %34 ]
  store i8* %36, i8** %19, align 8
  %37 = getelementptr inbounds i8*, i8** %19, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %37, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load %struct.view*, %struct.view** %5, align 8
  %40 = getelementptr inbounds %struct.view, %struct.view* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %38, align 8
  %44 = getelementptr inbounds i8*, i8** %38, i64 1
  store i8* null, i8** %44, align 8
  %45 = load %struct.view*, %struct.view** %5, align 8
  %46 = call i64 @failed_to_load_initial_view(%struct.view* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %35
  %49 = load %struct.view*, %struct.view** %5, align 8
  %50 = getelementptr inbounds %struct.view, %struct.view* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %48, %35
  %54 = load %struct.view*, %struct.view** %5, align 8
  %55 = getelementptr inbounds %struct.view, %struct.view* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %53
  %59 = load %struct.view*, %struct.view** %5, align 8
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @repo, i32 0, i32 0), align 4
  %61 = getelementptr inbounds [9 x i8*], [9 x i8*]* %8, i64 0, i64 0
  %62 = load i32, i32* @OPEN_EXTRA, align 4
  %63 = call i64 @begin_update(%struct.view* %59, i32 %60, i8** %61, i32 %62)
  %64 = load i64, i64* @SUCCESS, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %58, %53
  %67 = call i32 @report(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %119

68:                                               ; preds = %58
  %69 = load %struct.view*, %struct.view** %5, align 8
  %70 = getelementptr inbounds %struct.view, %struct.view* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %68
  %76 = load %struct.view*, %struct.view** %5, align 8
  %77 = load %struct.view*, %struct.view** %5, align 8
  %78 = getelementptr inbounds %struct.view, %struct.view* %77, i32 0, i32 1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @select_view_line(%struct.view* %76, i64 %81)
  %83 = load %struct.view*, %struct.view** %5, align 8
  %84 = getelementptr inbounds %struct.view, %struct.view* %83, i32 0, i32 1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %75, %68
  %88 = load %struct.blame_state*, %struct.blame_state** %7, align 8
  %89 = getelementptr inbounds %struct.blame_state, %struct.blame_state* %88, i32 0, i32 0
  store i32 1, i32* %89, align 4
  store i32 0, i32* %4, align 4
  br label %119

90:                                               ; preds = %3
  %91 = load %struct.view*, %struct.view** %5, align 8
  %92 = load i32, i32* @LINE_DEFAULT, align 4
  %93 = load %struct.buffer*, %struct.buffer** %6, align 8
  %94 = getelementptr inbounds %struct.buffer, %struct.buffer* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @add_line_alloc(%struct.view* %91, %struct.blame** %9, i32 %92, i64 %95, i32 0)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %90
  store i32 0, i32* %4, align 4
  br label %119

99:                                               ; preds = %90
  %100 = load %struct.blame*, %struct.blame** %9, align 8
  %101 = getelementptr inbounds %struct.blame, %struct.blame* %100, i32 0, i32 1
  store i32* null, i32** %101, align 8
  %102 = load %struct.blame*, %struct.blame** %9, align 8
  %103 = getelementptr inbounds %struct.blame, %struct.blame* %102, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = load %struct.buffer*, %struct.buffer** %6, align 8
  %106 = getelementptr inbounds %struct.buffer, %struct.buffer* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.buffer*, %struct.buffer** %6, align 8
  %109 = getelementptr inbounds %struct.buffer, %struct.buffer* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @strncpy(i64* %104, i32 %107, i64 %110)
  %112 = load %struct.blame*, %struct.blame** %9, align 8
  %113 = getelementptr inbounds %struct.blame, %struct.blame* %112, i32 0, i32 0
  %114 = load i64*, i64** %113, align 8
  %115 = load %struct.buffer*, %struct.buffer** %6, align 8
  %116 = getelementptr inbounds %struct.buffer, %struct.buffer* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i64, i64* %114, i64 %117
  store i64 0, i64* %118, align 8
  store i32 1, i32* %4, align 4
  br label %119

119:                                              ; preds = %99, %98, %87, %66
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i64 @failed_to_load_initial_view(%struct.view*) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i64 @begin_update(%struct.view*, i32, i8**, i32) #1

declare dso_local i32 @report(i8*) #1

declare dso_local i32 @select_view_line(%struct.view*, i64) #1

declare dso_local i32 @add_line_alloc(%struct.view*, %struct.blame**, i32, i64, i32) #1

declare dso_local i32 @strncpy(i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
