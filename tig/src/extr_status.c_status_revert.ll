; ModuleID = '/home/carl/AnghaBench/tig/src/extr_status.c_status_revert.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_status.c_status_revert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.status = type { i8, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i8*, i8*, i32 }

@LINE_STAT_UNSTAGED = common dso_local global i32 0, align 4
@LINE_STAT_STAGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Cannot revert changes to staged files\00", align 1
@LINE_STAT_UNTRACKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Cannot revert changes to untracked files\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Nothing to revert\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Cannot revert changes to multiple files\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Are you sure you want to revert changes?\00", align 1
@__const.status_revert.mode = private unnamed_addr constant [10 x i8] c"100644\00\00\00\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"git\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"update-index\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"--cacheinfo\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"checkout\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%5o\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"--force-remove\00", align 1
@repo = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @status_revert(%struct.status* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.status*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [10 x i8], align 1
  %9 = alloca [7 x i8*], align 16
  %10 = alloca [5 x i8*], align 16
  store %struct.status* %0, %struct.status** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.status*, %struct.status** %5, align 8
  %12 = icmp ne %struct.status* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @LINE_STAT_UNSTAGED, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %13, %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @LINE_STAT_STAGED, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 @report(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %38

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @LINE_STAT_UNTRACKED, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @report(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %37

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 @report(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %36

34:                                               ; preds = %29
  %35 = call i32 @report(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %32
  br label %37

37:                                               ; preds = %36, %27
  br label %38

38:                                               ; preds = %37, %21
  br label %125

39:                                               ; preds = %13
  %40 = call i64 @prompt_yesno(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %124

42:                                               ; preds = %39
  %43 = bitcast [10 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %43, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.status_revert.mode, i32 0, i32 0), i64 10, i1 false)
  %44 = getelementptr inbounds [7 x i8*], [7 x i8*]* %9, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %44, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %45, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %46, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  store i8* %48, i8** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %47, i64 1
  %50 = load %struct.status*, %struct.status** %5, align 8
  %51 = getelementptr inbounds %struct.status, %struct.status* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %49, align 8
  %54 = getelementptr inbounds i8*, i8** %49, i64 1
  %55 = load %struct.status*, %struct.status** %5, align 8
  %56 = getelementptr inbounds %struct.status, %struct.status* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %54, align 8
  %59 = getelementptr inbounds i8*, i8** %54, i64 1
  store i8* null, i8** %59, align 8
  %60 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %60, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %61, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** %62, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 1
  %64 = load %struct.status*, %struct.status** %5, align 8
  %65 = getelementptr inbounds %struct.status, %struct.status* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %63, align 8
  %68 = getelementptr inbounds i8*, i8** %63, i64 1
  store i8* null, i8** %68, align 8
  %69 = load %struct.status*, %struct.status** %5, align 8
  %70 = getelementptr inbounds %struct.status, %struct.status* %69, i32 0, i32 0
  %71 = load i8, i8* %70, align 8
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %72, 85
  br i1 %73, label %74, label %120

74:                                               ; preds = %42
  %75 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %76 = load %struct.status*, %struct.status** %5, align 8
  %77 = getelementptr inbounds %struct.status, %struct.status* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @string_format(i8* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %79)
  %81 = load %struct.status*, %struct.status** %5, align 8
  %82 = getelementptr inbounds %struct.status, %struct.status* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %74
  %87 = load %struct.status*, %struct.status** %5, align 8
  %88 = getelementptr inbounds %struct.status, %struct.status* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %86
  %93 = getelementptr inbounds [7 x i8*], [7 x i8*]* %9, i64 0, i64 2
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8** %93, align 16
  %94 = load %struct.status*, %struct.status** %5, align 8
  %95 = getelementptr inbounds %struct.status, %struct.status* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds [7 x i8*], [7 x i8*]* %9, i64 0, i64 3
  store i8* %97, i8** %98, align 8
  %99 = getelementptr inbounds [7 x i8*], [7 x i8*]* %9, i64 0, i64 4
  store i8* null, i8** %99, align 16
  br label %100

100:                                              ; preds = %92, %86, %74
  %101 = getelementptr inbounds [7 x i8*], [7 x i8*]* %9, i64 0, i64 0
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @repo, i32 0, i32 0), align 4
  %103 = call i32 @io_run_fg(i8** %101, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  store i32 0, i32* %4, align 4
  br label %126

106:                                              ; preds = %100
  %107 = load %struct.status*, %struct.status** %5, align 8
  %108 = getelementptr inbounds %struct.status, %struct.status* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %106
  %113 = load %struct.status*, %struct.status** %5, align 8
  %114 = getelementptr inbounds %struct.status, %struct.status* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  store i32 1, i32* %4, align 4
  br label %126

119:                                              ; preds = %112, %106
  br label %120

120:                                              ; preds = %119, %42
  %121 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i64 0, i64 0
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @repo, i32 0, i32 0), align 4
  %123 = call i32 @io_run_fg(i8** %121, i32 %122)
  store i32 %123, i32* %4, align 4
  br label %126

124:                                              ; preds = %39
  br label %125

125:                                              ; preds = %124, %38
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %125, %120, %118, %105
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @report(i8*) #1

declare dso_local i64 @prompt_yesno(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @string_format(i8*, i8*, i32) #1

declare dso_local i32 @io_run_fg(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
