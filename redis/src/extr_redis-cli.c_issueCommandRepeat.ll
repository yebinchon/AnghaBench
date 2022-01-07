; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_issueCommandRepeat.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_issueCommandRepeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@REDIS_OK = common dso_local global i64 0, align 8
@CC_FORCE = common dso_local global i32 0, align 4
@REDIS_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i64)* @issueCommandRepeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @issueCommandRepeat(i32 %0, i8** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  br label %8

8:                                                ; preds = %3, %38
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i8**, i8*** %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i64 @cliSendCommand(i32 %9, i8** %10, i64 %11)
  %13 = load i64, i64* @REDIS_OK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %8
  %16 = load i32, i32* @CC_FORCE, align 4
  %17 = call i32 @cliConnect(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i8**, i8*** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @cliSendCommand(i32 %18, i8** %19, i64 %20)
  %22 = load i64, i64* @REDIS_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = call i32 (...) @cliPrintContextError()
  %26 = load i32, i32* @REDIS_ERR, align 4
  store i32 %26, i32* %4, align 4
  br label %42

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27, %8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @CC_FORCE, align 4
  %36 = call i32 @cliConnect(i32 %35)
  br label %38

37:                                               ; preds = %31, %28
  br label %39

38:                                               ; preds = %34
  br label %8

39:                                               ; preds = %37
  %40 = load i64, i64* @REDIS_OK, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %24
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @cliSendCommand(i32, i8**, i64) #1

declare dso_local i32 @cliConnect(i32) #1

declare dso_local i32 @cliPrintContextError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
