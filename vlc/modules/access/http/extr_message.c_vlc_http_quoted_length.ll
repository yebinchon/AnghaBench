; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_quoted_length.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_quoted_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @vlc_http_quoted_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vlc_http_quoted_length(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = add i64 %8, 1
  store i64 %9, i64* %4, align 8
  %10 = getelementptr inbounds i8, i8* %7, i64 %8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 34
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %52

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %46, %15
  %17 = load i8*, i8** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %4, align 8
  %20 = getelementptr inbounds i8, i8* %17, i64 %18
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %5, align 1
  %22 = load i8, i8* %5, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i64 0, i64* %2, align 8
  br label %52

26:                                               ; preds = %16
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 92
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load i8*, i8** %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %4, align 8
  %34 = getelementptr inbounds i8, i8* %31, i64 %32
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %6, align 1
  %36 = load i8, i8* %6, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp slt i32 %37, 32
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = load i8, i8* %6, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp ne i32 %41, 9
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i64 0, i64* %2, align 8
  br label %52

44:                                               ; preds = %39, %30
  br label %45

45:                                               ; preds = %44, %26
  br label %46

46:                                               ; preds = %45
  %47 = load i8, i8* %5, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp ne i32 %48, 34
  br i1 %49, label %16, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %4, align 8
  store i64 %51, i64* %2, align 8
  br label %52

52:                                               ; preds = %50, %43, %25, %14
  %53 = load i64, i64* %2, align 8
  ret i64 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
