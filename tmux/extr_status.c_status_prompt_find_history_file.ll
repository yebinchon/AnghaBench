; ModuleID = '/home/carl/AnghaBench/tmux/extr_status.c_status_prompt_find_history_file.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_status.c_status_prompt_find_history_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global_options = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"history-file\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @status_prompt_find_history_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @status_prompt_find_history_file() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = load i32, i32* @global_options, align 4
  %6 = call i8* @options_get_string(i32 %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i8* null, i8** %1, align 8
  br label %43

12:                                               ; preds = %0
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 47
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i8*, i8** %3, align 8
  %19 = call i8* @xstrdup(i8* %18)
  store i8* %19, i8** %1, align 8
  br label %43

20:                                               ; preds = %12
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 126
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 47
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %20
  store i8* null, i8** %1, align 8
  br label %43

33:                                               ; preds = %26
  %34 = call i8* (...) @find_home()
  store i8* %34, i8** %2, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i8* null, i8** %1, align 8
  br label %43

37:                                               ; preds = %33
  %38 = load i8*, i8** %2, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = call i32 @xasprintf(i8** %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %38, i8* %40)
  %42 = load i8*, i8** %4, align 8
  store i8* %42, i8** %1, align 8
  br label %43

43:                                               ; preds = %37, %36, %32, %17, %11
  %44 = load i8*, i8** %1, align 8
  ret i8* %44
}

declare dso_local i8* @options_get_string(i32, i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @find_home(...) #1

declare dso_local i32 @xasprintf(i8**, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
