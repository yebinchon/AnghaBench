; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_seafile-session.c_seafile_session_class_init.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_seafile-session.c_seafile_session_class_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"repo-committed\00", align 1
@SEAFILE_TYPE_SESSION = common dso_local global i32 0, align 4
@G_SIGNAL_RUN_LAST = common dso_local global i32 0, align 4
@g_cclosure_marshal_VOID__POINTER = common dso_local global i32 0, align 4
@G_TYPE_NONE = common dso_local global i32 0, align 4
@G_TYPE_POINTER = common dso_local global i32 0, align 4
@signals = common dso_local global i32* null, align 8
@REPO_COMMITTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"repo-fetched\00", align 1
@REPO_FETCHED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"repo-uploaded\00", align 1
@REPO_UPLOADED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"repo-http-fetched\00", align 1
@REPO_HTTP_FETCHED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"repo-http-uploaded\00", align 1
@REPO_HTTP_UPLOADED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @seafile_session_class_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seafile_session_class_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @SEAFILE_TYPE_SESSION, align 4
  %4 = load i32, i32* @G_SIGNAL_RUN_LAST, align 4
  %5 = load i32, i32* @g_cclosure_marshal_VOID__POINTER, align 4
  %6 = load i32, i32* @G_TYPE_NONE, align 4
  %7 = load i32, i32* @G_TYPE_POINTER, align 4
  %8 = call i32 @g_signal_new(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %4, i32 0, i32* null, i32* null, i32 %5, i32 %6, i32 1, i32 %7)
  %9 = load i32*, i32** @signals, align 8
  %10 = load i64, i64* @REPO_COMMITTED, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  store i32 %8, i32* %11, align 4
  %12 = load i32, i32* @SEAFILE_TYPE_SESSION, align 4
  %13 = load i32, i32* @G_SIGNAL_RUN_LAST, align 4
  %14 = load i32, i32* @g_cclosure_marshal_VOID__POINTER, align 4
  %15 = load i32, i32* @G_TYPE_NONE, align 4
  %16 = load i32, i32* @G_TYPE_POINTER, align 4
  %17 = call i32 @g_signal_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32 %13, i32 0, i32* null, i32* null, i32 %14, i32 %15, i32 1, i32 %16)
  %18 = load i32*, i32** @signals, align 8
  %19 = load i64, i64* @REPO_FETCHED, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @SEAFILE_TYPE_SESSION, align 4
  %22 = load i32, i32* @G_SIGNAL_RUN_LAST, align 4
  %23 = load i32, i32* @g_cclosure_marshal_VOID__POINTER, align 4
  %24 = load i32, i32* @G_TYPE_NONE, align 4
  %25 = load i32, i32* @G_TYPE_POINTER, align 4
  %26 = call i32 @g_signal_new(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %21, i32 %22, i32 0, i32* null, i32* null, i32 %23, i32 %24, i32 1, i32 %25)
  %27 = load i32*, i32** @signals, align 8
  %28 = load i64, i64* @REPO_UPLOADED, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @SEAFILE_TYPE_SESSION, align 4
  %31 = load i32, i32* @G_SIGNAL_RUN_LAST, align 4
  %32 = load i32, i32* @g_cclosure_marshal_VOID__POINTER, align 4
  %33 = load i32, i32* @G_TYPE_NONE, align 4
  %34 = load i32, i32* @G_TYPE_POINTER, align 4
  %35 = call i32 @g_signal_new(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %30, i32 %31, i32 0, i32* null, i32* null, i32 %32, i32 %33, i32 1, i32 %34)
  %36 = load i32*, i32** @signals, align 8
  %37 = load i64, i64* @REPO_HTTP_FETCHED, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @SEAFILE_TYPE_SESSION, align 4
  %40 = load i32, i32* @G_SIGNAL_RUN_LAST, align 4
  %41 = load i32, i32* @g_cclosure_marshal_VOID__POINTER, align 4
  %42 = load i32, i32* @G_TYPE_NONE, align 4
  %43 = load i32, i32* @G_TYPE_POINTER, align 4
  %44 = call i32 @g_signal_new(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %39, i32 %40, i32 0, i32* null, i32* null, i32 %41, i32 %42, i32 1, i32 %43)
  %45 = load i32*, i32** @signals, align 8
  %46 = load i64, i64* @REPO_HTTP_UPLOADED, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32 %44, i32* %47, align 4
  ret void
}

declare dso_local i32 @g_signal_new(i8*, i32, i32, i32, i32*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
