; ModuleID = '/home/carl/AnghaBench/tig/src/extr_reflog.c_reflog_open.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_reflog.c_reflog_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32, %struct.main_state* }
%struct.main_state = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"git\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"reflog\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@encoding_arg = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"%(cmdlineargs)\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%(revargs)\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"--no-color\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"--pretty=raw\00", align 1
@opt_file_args = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [40 x i8] c"No revisions match the given arguments.\00", align 1
@WATCH_HEAD = common dso_local global i32 0, align 4
@WATCH_REFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i32)* @reflog_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reflog_open(%struct.view* %0, i32 %1) #0 {
  %3 = alloca %struct.view*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.main_state*, align 8
  %6 = alloca [9 x i8*], align 16
  store %struct.view* %0, %struct.view** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.view*, %struct.view** %3, align 8
  %8 = getelementptr inbounds %struct.view, %struct.view* %7, i32 0, i32 1
  %9 = load %struct.main_state*, %struct.main_state** %8, align 8
  store %struct.main_state* %9, %struct.main_state** %5, align 8
  %10 = getelementptr inbounds [9 x i8*], [9 x i8*]* %6, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** @encoding_arg, align 8
  store i8* %14, i8** %13, align 8
  %15 = getelementptr inbounds i8*, i8** %13, i64 1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %16, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %17, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %18, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  store i8* null, i8** %19, align 8
  %20 = load %struct.view*, %struct.view** %3, align 8
  %21 = call i64 @is_initial_view(%struct.view* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i64, i64* @opt_file_args, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %23, %2
  %29 = load %struct.main_state*, %struct.main_state** %5, align 8
  %30 = getelementptr inbounds %struct.main_state, %struct.main_state* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = load %struct.view*, %struct.view** %3, align 8
  %32 = getelementptr inbounds %struct.view, %struct.view* %31, i32 0, i32 0
  %33 = load i32, i32* @WATCH_HEAD, align 4
  %34 = load i32, i32* @WATCH_REFS, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @watch_register(i32* %32, i32 %35)
  %37 = load %struct.view*, %struct.view** %3, align 8
  %38 = getelementptr inbounds [9 x i8*], [9 x i8*]* %6, i64 0, i64 0
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @begin_update(%struct.view* %37, i32* null, i8** %38, i32 %39)
  ret i32 %40
}

declare dso_local i64 @is_initial_view(%struct.view*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @watch_register(i32*, i32) #1

declare dso_local i32 @begin_update(%struct.view*, i32*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
