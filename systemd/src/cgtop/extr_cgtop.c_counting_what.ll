; ModuleID = '/home/carl/AnghaBench/systemd/src/cgtop/extr_cgtop.c_counting_what.c'
source_filename = "/home/carl/AnghaBench/systemd/src/cgtop/extr_cgtop.c_counting_what.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_count = common dso_local global i64 0, align 8
@COUNT_PIDS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"tasks\00", align 1
@COUNT_ALL_PROCESSES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"all processes (incl. kernel)\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"userspace processes (excl. kernel)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @counting_what to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @counting_what() #0 {
  %1 = alloca i8*, align 8
  %2 = load i64, i64* @arg_count, align 8
  %3 = load i64, i64* @COUNT_PIDS, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  br label %12

6:                                                ; preds = %0
  %7 = load i64, i64* @arg_count, align 8
  %8 = load i64, i64* @COUNT_ALL_PROCESSES, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %12

11:                                               ; preds = %6
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %12

12:                                               ; preds = %11, %10, %5
  %13 = load i8*, i8** %1, align 8
  ret i8* %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
