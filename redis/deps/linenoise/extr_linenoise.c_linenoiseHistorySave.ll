; ModuleID = '/home/carl/AnghaBench/redis/deps/linenoise/extr_linenoise.c_linenoiseHistorySave.c'
source_filename = "/home/carl/AnghaBench/redis/deps/linenoise/extr_linenoise.c_linenoiseHistorySave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_IXUSR = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@history_len = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@history = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linenoiseHistorySave(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i32, i32* @S_IXUSR, align 4
  %8 = load i32, i32* @S_IRWXG, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @S_IRWXO, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @umask(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @umask(i32 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %44

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* @S_IRUSR, align 4
  %23 = load i32, i32* @S_IWUSR, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @chmod(i8* %21, i32 %24)
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %38, %20
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @history_len, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load i32*, i32** %5, align 8
  %32 = load i8**, i8*** @history, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @fprintf(i32* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %26

41:                                               ; preds = %26
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @fclose(i32* %42)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %41, %19
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @umask(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @chmod(i8*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
