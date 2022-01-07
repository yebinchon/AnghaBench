; ModuleID = '/home/carl/AnghaBench/tmux/extr_spawn.c_spawn_log.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_spawn.c_spawn_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spawn_context = type { i8*, i32, i32, %struct.TYPE_2__*, %struct.window_pane*, %struct.winlink*, %struct.session* }
%struct.TYPE_2__ = type { i32 }
%struct.window_pane = type { i32 }
%struct.winlink = type { i32 }
%struct.session = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s: %s, flags=%#x\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"wl=%d wp0=%%%u\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"wl=%d wp0=none\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"wl=none wp0=%%%u\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"wl=none wp0=none\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"%s: s=$%u %s idx=%d\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"%s: name=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.spawn_context*)* @spawn_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spawn_log(i8* %0, %struct.spawn_context* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.spawn_context*, align 8
  %5 = alloca %struct.session*, align 8
  %6 = alloca %struct.winlink*, align 8
  %7 = alloca %struct.window_pane*, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.spawn_context* %1, %struct.spawn_context** %4, align 8
  %10 = load %struct.spawn_context*, %struct.spawn_context** %4, align 8
  %11 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %10, i32 0, i32 6
  %12 = load %struct.session*, %struct.session** %11, align 8
  store %struct.session* %12, %struct.session** %5, align 8
  %13 = load %struct.spawn_context*, %struct.spawn_context** %4, align 8
  %14 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %13, i32 0, i32 5
  %15 = load %struct.winlink*, %struct.winlink** %14, align 8
  store %struct.winlink* %15, %struct.winlink** %6, align 8
  %16 = load %struct.spawn_context*, %struct.spawn_context** %4, align 8
  %17 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %16, i32 0, i32 4
  %18 = load %struct.window_pane*, %struct.window_pane** %17, align 8
  store %struct.window_pane* %18, %struct.window_pane** %7, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = load %struct.spawn_context*, %struct.spawn_context** %4, align 8
  %21 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.spawn_context*, %struct.spawn_context** %4, align 8
  %28 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, i8*, i8*, ...) @log_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %26, i32 %29)
  %31 = load %struct.winlink*, %struct.winlink** %6, align 8
  %32 = icmp ne %struct.winlink* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %2
  %34 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %35 = icmp ne %struct.window_pane* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %38 = load %struct.winlink*, %struct.winlink** %6, align 8
  %39 = getelementptr inbounds %struct.winlink, %struct.winlink* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %42 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, i32, i8*, ...) @xsnprintf(i8* %37, i32 128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %43)
  br label %68

45:                                               ; preds = %33, %2
  %46 = load %struct.winlink*, %struct.winlink** %6, align 8
  %47 = icmp ne %struct.winlink* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %50 = load %struct.winlink*, %struct.winlink** %6, align 8
  %51 = getelementptr inbounds %struct.winlink, %struct.winlink* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, i32, i8*, ...) @xsnprintf(i8* %49, i32 128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %67

54:                                               ; preds = %45
  %55 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %56 = icmp ne %struct.window_pane* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %59 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %60 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, i32, i8*, ...) @xsnprintf(i8* %58, i32 128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  br label %66

63:                                               ; preds = %54
  %64 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %65 = call i32 (i8*, i32, i8*, ...) @xsnprintf(i8* %64, i32 128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %57
  br label %67

67:                                               ; preds = %66, %48
  br label %68

68:                                               ; preds = %67, %36
  %69 = load i8*, i8** %3, align 8
  %70 = load %struct.session*, %struct.session** %5, align 8
  %71 = getelementptr inbounds %struct.session, %struct.session* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %76 = load %struct.spawn_context*, %struct.spawn_context** %4, align 8
  %77 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i8*, i8*, i8*, ...) @log_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %69, i8* %74, i8* %75, i32 %78)
  %80 = load %struct.spawn_context*, %struct.spawn_context** %4, align 8
  %81 = getelementptr inbounds %struct.spawn_context, %struct.spawn_context* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %9, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %68
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  br label %86

86:                                               ; preds = %85, %68
  %87 = load i8*, i8** %3, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 (i8*, i8*, i8*, ...) @log_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %87, i8* %88)
  ret void
}

declare dso_local i32 @log_debug(i8*, i8*, i8*, ...) #1

declare dso_local i32 @xsnprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
