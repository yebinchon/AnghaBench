; ModuleID = '/home/carl/AnghaBench/tmux/extr_tmux.c_find_home.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tmux.c_find_home.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }

@find_home.home = internal global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @find_home() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.passwd*, align 8
  %3 = load i8*, i8** @find_home.home, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i8*, i8** @find_home.home, align 8
  store i8* %6, i8** %1, align 8
  br label %29

7:                                                ; preds = %0
  %8 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** @find_home.home, align 8
  %9 = load i8*, i8** @find_home.home, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = load i8*, i8** @find_home.home, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %11, %7
  %17 = call i32 (...) @getuid()
  %18 = call %struct.passwd* @getpwuid(i32 %17)
  store %struct.passwd* %18, %struct.passwd** %2, align 8
  %19 = load %struct.passwd*, %struct.passwd** %2, align 8
  %20 = icmp ne %struct.passwd* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.passwd*, %struct.passwd** %2, align 8
  %23 = getelementptr inbounds %struct.passwd, %struct.passwd* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** @find_home.home, align 8
  br label %26

25:                                               ; preds = %16
  store i8* null, i8** @find_home.home, align 8
  br label %26

26:                                               ; preds = %25, %21
  br label %27

27:                                               ; preds = %26, %11
  %28 = load i8*, i8** @find_home.home, align 8
  store i8* %28, i8** %1, align 8
  br label %29

29:                                               ; preds = %27, %5
  %30 = load i8*, i8** %1, align 8
  ret i8* %30
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @getuid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
