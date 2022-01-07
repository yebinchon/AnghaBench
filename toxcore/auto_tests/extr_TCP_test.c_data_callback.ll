; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_TCP_test.c_data_callback.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_TCP_test.c_data_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@data_callback_good = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32*, i32)* @data_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @data_callback(i8* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, inttoptr (i64 3 to i8*)
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %52

15:                                               ; preds = %5
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 7
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 1, i32* %6, align 4
  br label %52

19:                                               ; preds = %15
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 5
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 1, i32* %6, align 4
  br label %52

23:                                               ; preds = %19
  %24 = load i32*, i32** %10, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %51

28:                                               ; preds = %23
  %29 = load i32*, i32** %10, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %51

33:                                               ; preds = %28
  %34 = load i32*, i32** %10, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load i32*, i32** %10, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 4
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i32*, i32** %10, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 5
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @data_callback_good, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @data_callback_good, align 4
  store i32 0, i32* %6, align 4
  br label %52

51:                                               ; preds = %43, %38, %33, %28, %23
  store i32 1, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %48, %22, %18, %14
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
