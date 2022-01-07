; ModuleID = '/home/carl/AnghaBench/tmux/extr_status.c_status_prompt_load_history.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_status.c_status_prompt_load_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"loading history from %s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @status_prompt_load_history() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = call i8* (...) @status_prompt_find_history_file()
  store i8* %6, i8** %2, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %69

9:                                                ; preds = %0
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 (i8*, i8*, ...) @log_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i8*, i8** %2, align 8
  %13 = call i32* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %13, i32** %1, align 8
  %14 = load i32*, i32** %1, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = load i8*, i8** %2, align 8
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 @strerror(i32 %18)
  %20 = call i32 (i8*, i8*, ...) @log_debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %17, i32 %19)
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @free(i8* %21)
  br label %69

23:                                               ; preds = %9
  %24 = load i8*, i8** %2, align 8
  %25 = call i32 @free(i8* %24)
  br label %26

26:                                               ; preds = %65, %23
  %27 = load i32*, i32** %1, align 8
  %28 = call i8* @fgetln(i32* %27, i64* %5)
  store i8* %28, i8** %3, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %66

31:                                               ; preds = %26
  %32 = load i64, i64* %5, align 8
  %33 = icmp ugt i64 %32, 0
  br i1 %33, label %34, label %65

34:                                               ; preds = %31
  %35 = load i8*, i8** %3, align 8
  %36 = load i64, i64* %5, align 8
  %37 = sub i64 %36, 1
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %42, label %49

42:                                               ; preds = %34
  %43 = load i8*, i8** %3, align 8
  %44 = load i64, i64* %5, align 8
  %45 = sub i64 %44, 1
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8 0, i8* %46, align 1
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @status_prompt_add_history(i8* %47)
  br label %64

49:                                               ; preds = %34
  %50 = load i64, i64* %5, align 8
  %51 = add i64 %50, 1
  %52 = call i8* @xmalloc(i64 %51)
  store i8* %52, i8** %4, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = load i8*, i8** %3, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @memcpy(i8* %53, i8* %54, i64 %55)
  %57 = load i8*, i8** %4, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8 0, i8* %59, align 1
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @status_prompt_add_history(i8* %60)
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @free(i8* %62)
  br label %64

64:                                               ; preds = %49, %42
  br label %65

65:                                               ; preds = %64, %31
  br label %26

66:                                               ; preds = %30
  %67 = load i32*, i32** %1, align 8
  %68 = call i32 @fclose(i32* %67)
  br label %69

69:                                               ; preds = %66, %16, %8
  ret void
}

declare dso_local i8* @status_prompt_find_history_file(...) #1

declare dso_local i32 @log_debug(i8*, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @fgetln(i32*, i64*) #1

declare dso_local i32 @status_prompt_add_history(i8*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
