; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_regexp.c_strncmpcanon.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_regexp.c_strncmpcanon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @strncmpcanon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strncmpcanon(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %11

11:                                               ; preds = %45, %3
  %12 = load i32, i32* %7, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %7, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i32 -1, i32* %4, align 4
  br label %47

20:                                               ; preds = %15
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %47

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @chartorune(i32* %8, i8* %26)
  %28 = load i8*, i8** %5, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @chartorune(i32* %9, i8* %31)
  %33 = load i8*, i8** %6, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @canon(i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @canon(i32 %38)
  %40 = sub nsw i32 %37, %39
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %25
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %47

45:                                               ; preds = %25
  br label %11

46:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %43, %24, %19
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @chartorune(i32*, i8*) #1

declare dso_local i32 @canon(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
