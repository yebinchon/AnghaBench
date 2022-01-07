; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_mount-util.c_mode_to_inaccessible_node.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_mount-util.c_mode_to_inaccessible_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_IFMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"/run/systemd/inaccessible/reg\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"/run/systemd/inaccessible/dir\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"/run/systemd/inaccessible/chr\00", align 1
@F_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"/run/systemd/inaccessible/sock\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"/run/systemd/inaccessible/blk\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"/run/systemd/inaccessible/fifo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mode_to_inaccessible_node(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @S_IFMT, align 4
  %6 = and i32 %4, %5
  switch i32 %6, label %23 [
    i32 129, label %7
    i32 131, label %8
    i32 132, label %9
    i32 133, label %15
    i32 130, label %21
    i32 128, label %22
  ]

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %24

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %24

9:                                                ; preds = %1
  %10 = load i32, i32* @F_OK, align 4
  %11 = call i32 @access(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %24

14:                                               ; preds = %9
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %24

15:                                               ; preds = %1
  %16 = load i32, i32* @F_OK, align 4
  %17 = call i32 @access(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %24

20:                                               ; preds = %15
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %24

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %24

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %24

23:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %24

24:                                               ; preds = %23, %22, %21, %20, %19, %14, %13, %8, %7
  %25 = load i8*, i8** %2, align 8
  ret i8* %25
}

declare dso_local i32 @access(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
