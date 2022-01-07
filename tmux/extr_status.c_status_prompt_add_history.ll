; ModuleID = '/home/carl/AnghaBench/tmux/extr_status.c_status_prompt_add_history.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_status.c_status_prompt_add_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@status_prompt_hsize = common dso_local global i32 0, align 4
@status_prompt_hlist = common dso_local global i32* null, align 8
@PROMPT_HISTORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @status_prompt_add_history to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @status_prompt_add_history(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @status_prompt_hsize, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = load i32*, i32** @status_prompt_hlist, align 8
  %8 = load i32, i32* @status_prompt_hsize, align 4
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %7, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = call i64 @strcmp(i32 %12, i8* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  br label %55

17:                                               ; preds = %6, %1
  %18 = load i32, i32* @status_prompt_hsize, align 4
  %19 = load i32, i32* @PROMPT_HISTORY, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %17
  %22 = load i32*, i32** @status_prompt_hlist, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @free(i32 %24)
  %26 = load i32, i32* @PROMPT_HISTORY, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  store i64 %29, i64* %3, align 8
  %30 = load i32*, i32** @status_prompt_hlist, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32*, i32** @status_prompt_hlist, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @memmove(i32* %31, i32* %33, i64 %34)
  %36 = load i8*, i8** %2, align 8
  %37 = call i32 @xstrdup(i8* %36)
  %38 = load i32*, i32** @status_prompt_hlist, align 8
  %39 = load i32, i32* @status_prompt_hsize, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  store i32 %37, i32* %42, align 4
  br label %55

43:                                               ; preds = %17
  %44 = load i32*, i32** @status_prompt_hlist, align 8
  %45 = load i32, i32* @status_prompt_hsize, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i32* @xreallocarray(i32* %44, i32 %46, i32 4)
  store i32* %47, i32** @status_prompt_hlist, align 8
  %48 = load i8*, i8** %2, align 8
  %49 = call i32 @xstrdup(i8* %48)
  %50 = load i32*, i32** @status_prompt_hlist, align 8
  %51 = load i32, i32* @status_prompt_hsize, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @status_prompt_hsize, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 %49, i32* %54, align 4
  br label %55

55:                                               ; preds = %43, %21, %16
  ret void
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32* @xreallocarray(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
