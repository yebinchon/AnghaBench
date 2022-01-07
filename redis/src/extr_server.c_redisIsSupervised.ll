; ModuleID = '/home/carl/AnghaBench/redis/src/extr_server.c_redisIsSupervised.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_server.c_redisIsSupervised.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUPERVISED_AUTODETECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"UPSTART_JOB\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"NOTIFY_SOCKET\00", align 1
@SUPERVISED_UPSTART = common dso_local global i32 0, align 4
@SUPERVISED_SYSTEMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redisIsSupervised(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @SUPERVISED_AUTODETECT, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %4, align 8
  %11 = call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 (...) @redisSupervisedUpstart()
  br label %22

16:                                               ; preds = %9
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 (...) @redisSupervisedSystemd()
  br label %21

21:                                               ; preds = %19, %16
  br label %22

22:                                               ; preds = %21, %14
  br label %37

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @SUPERVISED_UPSTART, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 (...) @redisSupervisedUpstart()
  store i32 %28, i32* %2, align 4
  br label %38

29:                                               ; preds = %23
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @SUPERVISED_SYSTEMD, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 (...) @redisSupervisedSystemd()
  store i32 %34, i32* %2, align 4
  br label %38

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36, %22
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %33, %27
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @redisSupervisedUpstart(...) #1

declare dso_local i32 @redisSupervisedSystemd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
