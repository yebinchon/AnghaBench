; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-find.c_cmd_find_log_state.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-find.c_cmd_find_log_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_find_state = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s: s=$%u %s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s: s=none\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%s: wl=%u %d w=@%u %s\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%s: wl=none\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%s: wp=%%%u\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"%s: wp=none\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"%s: idx=%d\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"%s: idx=none\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.cmd_find_state*)* @cmd_find_log_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_find_log_state(i8* %0, %struct.cmd_find_state* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cmd_find_state*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.cmd_find_state* %1, %struct.cmd_find_state** %4, align 8
  %5 = load %struct.cmd_find_state*, %struct.cmd_find_state** %4, align 8
  %6 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %5, i32 0, i32 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  %11 = load %struct.cmd_find_state*, %struct.cmd_find_state** %4, align 8
  %12 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %11, i32 0, i32 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.cmd_find_state*, %struct.cmd_find_state** %4, align 8
  %17 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %16, i32 0, i32 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, i8*, ...) @log_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %10, i32 %15, i32 %20)
  br label %25

22:                                               ; preds = %2
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 (i8*, i8*, ...) @log_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %22, %9
  %26 = load %struct.cmd_find_state*, %struct.cmd_find_state** %4, align 8
  %27 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %26, i32 0, i32 3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  br i1 %29, label %30, label %58

30:                                               ; preds = %25
  %31 = load i8*, i8** %3, align 8
  %32 = load %struct.cmd_find_state*, %struct.cmd_find_state** %4, align 8
  %33 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %32, i32 0, i32 3
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.cmd_find_state*, %struct.cmd_find_state** %4, align 8
  %38 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %37, i32 0, i32 3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = load %struct.cmd_find_state*, %struct.cmd_find_state** %4, align 8
  %43 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %42, i32 0, i32 2
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = icmp eq %struct.TYPE_7__* %41, %44
  %46 = zext i1 %45 to i32
  %47 = load %struct.cmd_find_state*, %struct.cmd_find_state** %4, align 8
  %48 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %47, i32 0, i32 2
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.cmd_find_state*, %struct.cmd_find_state** %4, align 8
  %53 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %52, i32 0, i32 2
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, i8*, ...) @log_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %31, i32 %36, i32 %46, i32 %51, i32 %56)
  br label %61

58:                                               ; preds = %25
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 (i8*, i8*, ...) @log_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %58, %30
  %62 = load %struct.cmd_find_state*, %struct.cmd_find_state** %4, align 8
  %63 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = icmp ne %struct.TYPE_8__* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load i8*, i8** %3, align 8
  %68 = load %struct.cmd_find_state*, %struct.cmd_find_state** %4, align 8
  %69 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %68, i32 0, i32 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, i8*, ...) @log_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %67, i32 %72)
  br label %77

74:                                               ; preds = %61
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 (i8*, i8*, ...) @log_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %74, %66
  %78 = load %struct.cmd_find_state*, %struct.cmd_find_state** %4, align 8
  %79 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, -1
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i8*, i8** %3, align 8
  %84 = load %struct.cmd_find_state*, %struct.cmd_find_state** %4, align 8
  %85 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i8*, i8*, ...) @log_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %83, i32 %86)
  br label %91

88:                                               ; preds = %77
  %89 = load i8*, i8** %3, align 8
  %90 = call i32 (i8*, i8*, ...) @log_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %89)
  br label %91

91:                                               ; preds = %88, %82
  ret void
}

declare dso_local i32 @log_debug(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
