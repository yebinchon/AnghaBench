; ModuleID = '/home/carl/AnghaBench/redis/src/extr_server.c_sigShutdownHandler.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_server.c_sigShutdownHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [39 x i8] c"Received SIGINT scheduling shutdown...\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Received SIGTERM scheduling shutdown...\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Received shutdown signal, scheduling shutdown...\00", align 1
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"You insist... exiting now.\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Received shutdown signal during loading, exiting now.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sigShutdownHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sigShutdownHandler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %7 [
    i32 129, label %5
    i32 128, label %6
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %8

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %8

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %8

8:                                                ; preds = %7, %6, %5
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = icmp eq i32 %12, 129
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i32, i32* @LL_WARNING, align 4
  %16 = call i32 @serverLogFromHandler(i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %17 = call i32 (...) @getpid()
  %18 = call i32 @rdbRemoveTempFile(i32 %17)
  %19 = call i32 @exit(i32 1) #3
  unreachable

20:                                               ; preds = %11, %8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* @LL_WARNING, align 4
  %25 = call i32 @serverLogFromHandler(i32 %24, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %26 = call i32 @exit(i32 0) #3
  unreachable

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* @LL_WARNING, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @serverLogFromHandler(i32 %29, i8* %30)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @serverLogFromHandler(i32, i8*) #1

declare dso_local i32 @rdbRemoveTempFile(i32) #1

declare dso_local i32 @getpid(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
