; ModuleID = '/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_runlevel_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_runlevel_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%c %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @runlevel_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @runlevel_main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @utmp_get_runlevel(i32* %3, i32* %4)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = call i32 @puts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %2, align 4
  store i32 %10, i32* %1, align 4
  br label %29

11:                                               ; preds = %0
  %12 = load i32, i32* %4, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %17

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  br label %17

17:                                               ; preds = %15, %14
  %18 = phi i32 [ 78, %14 ], [ %16, %15 ]
  %19 = trunc i32 %18 to i8
  %20 = load i32, i32* %3, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %3, align 4
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i32 [ 78, %22 ], [ %24, %23 ]
  %27 = trunc i32 %26 to i8
  %28 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8 signext %19, i8 signext %27)
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %25, %8
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i32 @utmp_get_runlevel(i32*, i32*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @printf(i8*, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
