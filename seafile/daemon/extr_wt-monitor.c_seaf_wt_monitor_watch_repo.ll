; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor.c_seaf_wt_monitor_watch_repo.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor.c_seaf_wt_monitor_watch_repo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@CMD_ADD_WATCH = common dso_local global i32 0, align 4
@SEAF_PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"[wt mon] fail to write command pipe.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"send a watch command, repo %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"[wt mon] fail to read result pipe.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seaf_wt_monitor_watch_repo(%struct.TYPE_7__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = call i32 @memset(%struct.TYPE_6__* %8, i32 0, i32 12)
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @memcpy(i32 %13, i8* %14, i32 37)
  %16 = load i32, i32* @CMD_ADD_WATCH, align 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* @SEAF_PATH_MAX, align 4
  %22 = call i32 @g_strlcpy(i32 %19, i8* %20, i32 %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @seaf_pipe_writen(i32 %27, %struct.TYPE_6__* %8, i32 12)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ne i64 %30, 12
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = call i32 @seaf_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %50

34:                                               ; preds = %3
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @seaf_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @seaf_pipe_readn(i32 %41, i32* %9, i32 4)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %44, 4
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = call i32 @seaf_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %50

48:                                               ; preds = %34
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %46, %32
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @g_strlcpy(i32, i8*, i32) #1

declare dso_local i32 @seaf_pipe_writen(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @seaf_warning(i8*) #1

declare dso_local i32 @seaf_debug(i8*, i8*) #1

declare dso_local i32 @seaf_pipe_readn(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
