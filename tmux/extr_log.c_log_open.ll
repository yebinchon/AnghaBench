; ModuleID = '/home/carl/AnghaBench/tmux/extr_log.c_log_open.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_log.c_log_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@log_level = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"tmux-%s-%ld.log\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@log_file = common dso_local global i32* null, align 8
@_IOLBF = common dso_local global i32 0, align 4
@log_event_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_open(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i64, i64* @log_level, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %25

7:                                                ; preds = %1
  %8 = call i32 (...) @log_close()
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 (...) @getpid()
  %11 = call i32 @xasprintf(i8** %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %9, i64 %10)
  %12 = load i8*, i8** %3, align 8
  %13 = call i32* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %13, i32** @log_file, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @free(i8* %14)
  %16 = load i32*, i32** @log_file, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  br label %25

19:                                               ; preds = %7
  %20 = load i32*, i32** @log_file, align 8
  %21 = load i32, i32* @_IOLBF, align 4
  %22 = call i32 @setvbuf(i32* %20, i32* null, i32 %21, i32 0)
  %23 = load i32, i32* @log_event_cb, align 4
  %24 = call i32 @event_set_log_callback(i32 %23)
  br label %25

25:                                               ; preds = %19, %18, %6
  ret void
}

declare dso_local i32 @log_close(...) #1

declare dso_local i32 @xasprintf(i8**, i8*, i8*, i64) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @setvbuf(i32*, i32*, i32, i32) #1

declare dso_local i32 @event_set_log_callback(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
