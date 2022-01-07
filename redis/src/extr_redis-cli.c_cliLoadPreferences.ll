; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_cliLoadPreferences.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_cliLoadPreferences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REDIS_CLI_RCFILE_ENV = common dso_local global i32 0, align 4
@REDIS_CLI_RCFILE_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cliLoadPreferences() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @REDIS_CLI_RCFILE_ENV, align 4
  %7 = load i32, i32* @REDIS_CLI_RCFILE_DEFAULT, align 4
  %8 = call i32* @getDotfilePath(i32 %6, i32 %7)
  store i32* %8, i32** %1, align 8
  %9 = load i32*, i32** %1, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %42

12:                                               ; preds = %0
  %13 = load i32*, i32** %1, align 8
  %14 = call i32* @fopen(i32* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %2, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %32, %17
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %20 = load i32*, i32** %2, align 8
  %21 = call i32* @fgets(i8* %19, i32 1024, i32* %20)
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %25 = call i32** @sdssplitargs(i8* %24, i32* %5)
  store i32** %25, i32*** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32**, i32*** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @cliSetPreferences(i32** %29, i32 %30, i32 0)
  br label %32

32:                                               ; preds = %28, %23
  %33 = load i32**, i32*** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @sdsfreesplitres(i32** %33, i32 %34)
  br label %18

36:                                               ; preds = %18
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @fclose(i32* %37)
  br label %39

39:                                               ; preds = %36, %12
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @sdsfree(i32* %40)
  br label %42

42:                                               ; preds = %39, %11
  ret void
}

declare dso_local i32* @getDotfilePath(i32, i32) #1

declare dso_local i32* @fopen(i32*, i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32** @sdssplitargs(i8*, i32*) #1

declare dso_local i32 @cliSetPreferences(i32**, i32, i32) #1

declare dso_local i32 @sdsfreesplitres(i32**, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @sdsfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
