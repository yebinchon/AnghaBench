; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_helper.c_glob_to_regex.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_helper.c_glob_to_regex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @glob_to_regex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @glob_to_regex(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i8* @g_regex_escape_string(i8* %6, i32 -1)
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strlen(i8* %8)
  store i64 %9, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %51, %1
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %54

14:                                               ; preds = %10
  %15 = load i8*, i8** %3, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 92
  br i1 %20, label %21, label %50

21:                                               ; preds = %14
  %22 = load i8*, i8** %3, align 8
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %23, 1
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 42
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i8*, i8** %3, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8 46, i8* %32, align 1
  br label %47

33:                                               ; preds = %21
  %34 = load i8*, i8** %3, align 8
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %35, 1
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 63
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load i8*, i8** %3, align 8
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, 1
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  store i8 83, i8* %45, align 1
  br label %46

46:                                               ; preds = %41, %33
  br label %47

47:                                               ; preds = %46, %29
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %47, %14
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %5, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %5, align 8
  br label %10

54:                                               ; preds = %10
  %55 = load i8*, i8** %3, align 8
  ret i8* %55
}

declare dso_local i8* @g_regex_escape_string(i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
