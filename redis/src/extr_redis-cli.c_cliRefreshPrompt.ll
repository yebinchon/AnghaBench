; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_cliRefreshPrompt.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_cliRefreshPrompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32, i32, i32*, i64 }

@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"redis %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"[%i]\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cliRefreshPrompt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cliRefreshPrompt() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [256 x i8], align 16
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 5), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %39

6:                                                ; preds = %0
  %7 = call i8* (...) @sdsempty()
  store i8* %7, i8** %1, align 8
  %8 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 4), align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load i8*, i8** %1, align 8
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 4), align 8
  %13 = call i8* @sdscatfmt(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %12)
  store i8* %13, i8** %1, align 8
  br label %24

14:                                               ; preds = %6
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 3), align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2), align 8
  %18 = call i32 @anetFormatAddr(i8* %15, i32 256, i32 %16, i32 %17)
  %19 = load i8*, i8** %1, align 8
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %22 = call i32 @strlen(i8* %21)
  %23 = call i8* @sdscatlen(i8* %19, i8* %20, i32 %22)
  store i8* %23, i8** %1, align 8
  br label %24

24:                                               ; preds = %14, %10
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i8*, i8** %1, align 8
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 8
  %30 = call i8* @sdscatfmt(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %29)
  store i8* %30, i8** %1, align 8
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i8*, i8** %1, align 8
  %33 = call i8* @sdscatlen(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  store i8* %33, i8** %1, align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %35 = load i8*, i8** %1, align 8
  %36 = call i32 @snprintf(i32 %34, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  %37 = load i8*, i8** %1, align 8
  %38 = call i32 @sdsfree(i8* %37)
  br label %39

39:                                               ; preds = %31, %5
  ret void
}

declare dso_local i8* @sdsempty(...) #1

declare dso_local i8* @sdscatfmt(i8*, i8*, i32*) #1

declare dso_local i32 @anetFormatAddr(i8*, i32, i32, i32) #1

declare dso_local i8* @sdscatlen(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @sdsfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
