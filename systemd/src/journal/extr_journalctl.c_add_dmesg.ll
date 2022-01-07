; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journalctl.c_add_dmesg.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journalctl.c_add_dmesg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_dmesg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"_TRANSPORT=kernel\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to add match: %m\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to add conjunction: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @add_dmesg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_dmesg(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @assert(i32* %5)
  %7 = load i32, i32* @arg_dmesg, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @STRLEN(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @sd_journal_add_match(i32* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @log_error_errno(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 %18, i32* %2, align 4
  br label %28

19:                                               ; preds = %10
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @sd_journal_add_conjunction(i32* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @log_error_errno(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %24, %16, %9
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @sd_journal_add_match(i32*, i8*, i32) #1

declare dso_local i32 @STRLEN(i8*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @sd_journal_add_conjunction(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
