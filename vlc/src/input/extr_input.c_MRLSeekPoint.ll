; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_input.c_MRLSeekPoint.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_input.c_MRLSeekPoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*, i32*)* @MRLSeekPoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @MRLSeekPoint(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @strtoul(i8* %9, i8** %7, i32 0)
  store i64 %10, i64* %8, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp eq i8* %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @INT_MAX, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %3
  br label %22

19:                                               ; preds = %14
  %20 = load i64, i64* %8, align 8
  %21 = trunc i64 %20 to i32
  br label %22

22:                                               ; preds = %19, %18
  %23 = phi i32 [ -1, %18 ], [ %21, %19 ]
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i8*, i8** %7, align 8
  store i8* %25, i8** %4, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 58
  br i1 %29, label %30, label %50

30:                                               ; preds = %22
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %4, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i64 @strtoul(i8* %33, i8** %7, i32 0)
  store i64 %34, i64* %8, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = icmp eq i8* %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %30
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @INT_MAX, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %30
  br label %46

43:                                               ; preds = %38
  %44 = load i64, i64* %8, align 8
  %45 = trunc i64 %44 to i32
  br label %46

46:                                               ; preds = %43, %42
  %47 = phi i32 [ -1, %42 ], [ %45, %43 ]
  %48 = load i32*, i32** %6, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i8*, i8** %7, align 8
  store i8* %49, i8** %4, align 8
  br label %52

50:                                               ; preds = %22
  %51 = load i32*, i32** %6, align 8
  store i32 -1, i32* %51, align 4
  br label %52

52:                                               ; preds = %50, %46
  %53 = load i8*, i8** %4, align 8
  ret i8* %53
}

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
