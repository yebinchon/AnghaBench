; ModuleID = '/home/carl/AnghaBench/tmux/extr_status.c_status_prompt_up_history.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_status.c_status_prompt_up_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@status_prompt_hsize = common dso_local global i64 0, align 8
@status_prompt_hlist = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64*)* @status_prompt_up_history to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @status_prompt_up_history(i64* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  %4 = load i64, i64* @status_prompt_hsize, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load i64*, i64** %3, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @status_prompt_hsize, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %1
  store i8* null, i8** %2, align 8
  br label %23

12:                                               ; preds = %6
  %13 = load i64*, i64** %3, align 8
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %13, align 8
  %16 = load i8**, i8*** @status_prompt_hlist, align 8
  %17 = load i64, i64* @status_prompt_hsize, align 8
  %18 = load i64*, i64** %3, align 8
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %17, %19
  %21 = getelementptr inbounds i8*, i8** %16, i64 %20
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %2, align 8
  br label %23

23:                                               ; preds = %12, %11
  %24 = load i8*, i8** %2, align 8
  ret i8* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
