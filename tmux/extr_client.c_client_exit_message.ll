; ModuleID = '/home/carl/AnghaBench/tmux/extr_client.c_client_exit_message.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_client.c_client_exit_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@client_exit_message.msg = internal global [256 x i8] zeroinitializer, align 16
@client_exitreason = common dso_local global i32 0, align 4
@client_exitsession = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"detached (from session %s)\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"detached\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"detached and SIGHUP (from session %s)\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"detached and SIGHUP\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"lost tty\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"terminated\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"server exited unexpectedly\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"exited\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"server exited\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"unknown reason\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @client_exit_message() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @client_exitreason, align 4
  switch i32 %2, label %23 [
    i32 130, label %3
    i32 135, label %4
    i32 134, label %11
    i32 131, label %18
    i32 128, label %19
    i32 132, label %20
    i32 133, label %21
    i32 129, label %22
  ]

3:                                                ; preds = %0
  br label %23

4:                                                ; preds = %0
  %5 = load i32*, i32** @client_exitsession, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load i32*, i32** @client_exitsession, align 8
  %9 = call i32 @xsnprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @client_exit_message.msg, i64 0, i64 0), i32 256, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* %8)
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @client_exit_message.msg, i64 0, i64 0), i8** %1, align 8
  br label %24

10:                                               ; preds = %4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %24

11:                                               ; preds = %0
  %12 = load i32*, i32** @client_exitsession, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32*, i32** @client_exitsession, align 8
  %16 = call i32 @xsnprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @client_exit_message.msg, i64 0, i64 0), i32 256, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32* %15)
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @client_exit_message.msg, i64 0, i64 0), i8** %1, align 8
  br label %24

17:                                               ; preds = %11
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  br label %24

18:                                               ; preds = %0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %1, align 8
  br label %24

19:                                               ; preds = %0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %1, align 8
  br label %24

20:                                               ; preds = %0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8** %1, align 8
  br label %24

21:                                               ; preds = %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %1, align 8
  br label %24

22:                                               ; preds = %0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8** %1, align 8
  br label %24

23:                                               ; preds = %0, %3
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8** %1, align 8
  br label %24

24:                                               ; preds = %23, %22, %21, %20, %19, %18, %17, %14, %10, %7
  %25 = load i8*, i8** %1, align 8
  ret i8* %25
}

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
