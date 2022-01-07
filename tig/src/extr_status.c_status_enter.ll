; ModuleID = '/home/carl/AnghaBench/tig/src/extr_status.c_status_enter.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_status.c_status_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }
%struct.line = type { i64, %struct.status* }
%struct.status = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@OPEN_SPLIT = common dso_local global i32 0, align 4
@OPEN_DEFAULT = common dso_local global i32 0, align 4
@LINE_STAT_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"No file to diff\00", align 1
@REQ_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"No file to show\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Cannot display a directory\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Nothing to enter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, %struct.line*)* @status_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @status_enter(%struct.view* %0, %struct.line* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.view*, align 8
  %5 = alloca %struct.line*, align 8
  %6 = alloca %struct.status*, align 8
  %7 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %4, align 8
  store %struct.line* %1, %struct.line** %5, align 8
  %8 = load %struct.line*, %struct.line** %5, align 8
  %9 = getelementptr inbounds %struct.line, %struct.line* %8, i32 0, i32 1
  %10 = load %struct.status*, %struct.status** %9, align 8
  store %struct.status* %10, %struct.status** %6, align 8
  %11 = load %struct.view*, %struct.view** %4, align 8
  %12 = call i64 @view_is_displayed(%struct.view* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @OPEN_SPLIT, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @OPEN_DEFAULT, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %7, align 4
  %20 = load %struct.line*, %struct.line** %5, align 8
  %21 = getelementptr inbounds %struct.line, %struct.line* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @LINE_STAT_NONE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %35, label %25

25:                                               ; preds = %18
  %26 = load %struct.status*, %struct.status** %6, align 8
  %27 = icmp ne %struct.status* %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %25
  %29 = load %struct.line*, %struct.line** %5, align 8
  %30 = getelementptr inbounds %struct.line, %struct.line* %29, i64 1
  %31 = getelementptr inbounds %struct.line, %struct.line* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @LINE_STAT_NONE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28, %18
  %36 = call i32 @report(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @REQ_NONE, align 4
  store i32 %37, i32* %3, align 4
  br label %72

38:                                               ; preds = %28, %25
  %39 = load %struct.line*, %struct.line** %5, align 8
  %40 = getelementptr inbounds %struct.line, %struct.line* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  switch i64 %41, label %60 [
    i64 130, label %42
    i64 129, label %42
    i64 128, label %43
  ]

42:                                               ; preds = %38, %38
  br label %63

43:                                               ; preds = %38
  %44 = load %struct.status*, %struct.status** %6, align 8
  %45 = icmp ne %struct.status* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = call i32 @report(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @REQ_NONE, align 4
  store i32 %48, i32* %3, align 4
  br label %72

49:                                               ; preds = %43
  %50 = load %struct.status*, %struct.status** %6, align 8
  %51 = getelementptr inbounds %struct.status, %struct.status* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @suffixcmp(i32 %53, i32 -1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  %57 = call i32 @report(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i32, i32* @REQ_NONE, align 4
  store i32 %58, i32* %3, align 4
  br label %72

59:                                               ; preds = %49
  br label %63

60:                                               ; preds = %38
  %61 = call i32 @report(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %62 = load i32, i32* @REQ_NONE, align 4
  store i32 %62, i32* %3, align 4
  br label %72

63:                                               ; preds = %59, %42
  %64 = load %struct.view*, %struct.view** %4, align 8
  %65 = load %struct.status*, %struct.status** %6, align 8
  %66 = load %struct.line*, %struct.line** %5, align 8
  %67 = getelementptr inbounds %struct.line, %struct.line* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @open_stage_view(%struct.view* %64, %struct.status* %65, i64 %68, i32 %69)
  %71 = load i32, i32* @REQ_NONE, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %63, %60, %56, %46, %35
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @view_is_displayed(%struct.view*) #1

declare dso_local i32 @report(i8*) #1

declare dso_local i32 @suffixcmp(i32, i32, i8*) #1

declare dso_local i32 @open_stage_view(%struct.view*, %struct.status*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
