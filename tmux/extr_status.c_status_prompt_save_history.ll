; ModuleID = '/home/carl/AnghaBench/tmux/extr_status.c_status_prompt_save_history.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_status.c_status_prompt_save_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"saving history to %s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@status_prompt_hsize = common dso_local global i64 0, align 8
@status_prompt_hlist = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @status_prompt_save_history() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = call i8* (...) @status_prompt_find_history_file()
  store i8* %4, i8** %3, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %43

7:                                                ; preds = %0
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 (i8*, i8*, ...) @log_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load i8*, i8** %3, align 8
  %11 = call i32* @fopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %11, i32** %1, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %7
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* @errno, align 4
  %17 = call i32 @strerror(i32 %16)
  %18 = call i32 (i8*, i8*, ...) @log_debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %15, i32 %17)
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @free(i8* %19)
  br label %43

21:                                               ; preds = %7
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @free(i8* %22)
  store i64 0, i64* %2, align 8
  br label %24

24:                                               ; preds = %37, %21
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* @status_prompt_hsize, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load i32*, i32** @status_prompt_hlist, align 8
  %30 = load i64, i64* %2, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @fputs(i32 %32, i32* %33)
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @fputc(i8 signext 10, i32* %35)
  br label %37

37:                                               ; preds = %28
  %38 = load i64, i64* %2, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %2, align 8
  br label %24

40:                                               ; preds = %24
  %41 = load i32*, i32** %1, align 8
  %42 = call i32 @fclose(i32* %41)
  br label %43

43:                                               ; preds = %40, %14, %6
  ret void
}

declare dso_local i8* @status_prompt_find_history_file(...) #1

declare dso_local i32 @log_debug(i8*, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fputs(i32, i32*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
