; ModuleID = '/home/carl/AnghaBench/toxcore/testing/extr_nTox.c_timeout_getch.c'
source_filename = "/home/carl/AnghaBench/toxcore/testing/extr_nTox.c_timeout_getch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@ERR = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [31 x i8] c"select error: maybe interupted\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @timeout_getch(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.timeval, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @tox_iteration_interval(i32* %8)
  store i32 %9, i32* %4, align 4
  %10 = call i32 @FD_ZERO(i32* %5)
  %11 = call i32 @FD_SET(i32 0, i32* %5)
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* %4, align 4
  %14 = mul nsw i32 %13, 1000
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load i8, i8* @ERR, align 1
  store i8 %16, i8* %3, align 1
  %17 = call i32 @select(i32 1, i32* %5, i32* null, i32* null, %struct.timeval* %6)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 @new_lines(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %29

22:                                               ; preds = %1
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %28

26:                                               ; preds = %22
  %27 = call signext i8 (...) @getch()
  store i8 %27, i8* %3, align 1
  br label %28

28:                                               ; preds = %26, %25
  br label %29

29:                                               ; preds = %28, %20
  %30 = load i8, i8* %3, align 1
  ret i8 %30
}

declare dso_local i32 @tox_iteration_interval(i32*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @new_lines(i8*) #1

declare dso_local signext i8 @getch(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
