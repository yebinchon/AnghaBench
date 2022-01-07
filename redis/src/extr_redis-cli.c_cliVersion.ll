; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_cliVersion.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_cliVersion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@REDIS_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c" (git:%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"-dirty\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cliVersion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cliVersion() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @sdsempty()
  %3 = load i32, i32* @REDIS_VERSION, align 4
  %4 = call i32 (i32, i8*, ...) @sdscatprintf(i32 %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %3)
  store i32 %4, i32* %1, align 4
  %5 = call i32 (...) @redisGitSHA1()
  %6 = call i64 @strtoll(i32 %5, i32* null, i32 16)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %0
  %9 = load i32, i32* %1, align 4
  %10 = call i32 (...) @redisGitSHA1()
  %11 = call i32 (i32, i8*, ...) @sdscatprintf(i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  store i32 %11, i32* %1, align 4
  %12 = call i32 (...) @redisGitDirty()
  %13 = call i64 @strtoll(i32 %12, i32* null, i32 10)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load i32, i32* %1, align 4
  %17 = call i32 (i32, i8*, ...) @sdscatprintf(i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %15, %8
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @sdscat(i32 %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 %20, i32* %1, align 4
  br label %21

21:                                               ; preds = %18, %0
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @sdscatprintf(i32, i8*, ...) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i64 @strtoll(i32, i32*, i32) #1

declare dso_local i32 @redisGitSHA1(...) #1

declare dso_local i32 @redisGitDirty(...) #1

declare dso_local i32 @sdscat(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
