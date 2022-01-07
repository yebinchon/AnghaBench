; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_init.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i64, i64, i8*, i64, %struct.client*, i8* }
%struct.client = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TTY_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_init(%struct.tty* %0, %struct.client* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty*, align 8
  %7 = alloca %struct.client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.tty* %0, %struct.tty** %6, align 8
  store %struct.client* %1, %struct.client** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %10 = load i32, i32* %8, align 4
  %11 = call i32 @isatty(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %52

14:                                               ; preds = %4
  %15 = load %struct.tty*, %struct.tty** %6, align 8
  %16 = call i32 @memset(%struct.tty* %15, i32 0, i32 56)
  %17 = load i8*, i8** %9, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** %9, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19, %14
  %25 = call i8* @xstrdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.tty*, %struct.tty** %6, align 8
  %27 = getelementptr inbounds %struct.tty, %struct.tty* %26, i32 0, i32 7
  store i8* %25, i8** %27, align 8
  br label %33

28:                                               ; preds = %19
  %29 = load i8*, i8** %9, align 8
  %30 = call i8* @xstrdup(i8* %29)
  %31 = load %struct.tty*, %struct.tty** %6, align 8
  %32 = getelementptr inbounds %struct.tty, %struct.tty* %31, i32 0, i32 7
  store i8* %30, i8** %32, align 8
  br label %33

33:                                               ; preds = %28, %24
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.tty*, %struct.tty** %6, align 8
  %36 = getelementptr inbounds %struct.tty, %struct.tty* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.client*, %struct.client** %7, align 8
  %38 = load %struct.tty*, %struct.tty** %6, align 8
  %39 = getelementptr inbounds %struct.tty, %struct.tty* %38, i32 0, i32 6
  store %struct.client* %37, %struct.client** %39, align 8
  %40 = load %struct.tty*, %struct.tty** %6, align 8
  %41 = getelementptr inbounds %struct.tty, %struct.tty* %40, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.tty*, %struct.tty** %6, align 8
  %44 = getelementptr inbounds %struct.tty, %struct.tty* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load %struct.tty*, %struct.tty** %6, align 8
  %46 = getelementptr inbounds %struct.tty, %struct.tty* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load %struct.tty*, %struct.tty** %6, align 8
  %48 = getelementptr inbounds %struct.tty, %struct.tty* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* @TTY_UNKNOWN, align 4
  %50 = load %struct.tty*, %struct.tty** %6, align 8
  %51 = getelementptr inbounds %struct.tty, %struct.tty* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %33, %13
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @memset(%struct.tty*, i32, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
