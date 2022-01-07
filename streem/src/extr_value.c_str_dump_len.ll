; ModuleID = '/home/carl/AnghaBench/streem/src/extr_value.c_str_dump_len.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_value.c_str_dump_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @str_dump_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_dump_len(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i64 @strm_str_ptr(i32 %6)
  %8 = inttoptr i64 %7 to i8*
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @strm_str_len(i32 %10)
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %9, i64 %12
  store i8* %13, i8** %5, align 8
  br label %14

14:                                               ; preds = %43, %1
  %15 = load i8*, i8** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %14
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  switch i32 %21, label %25 [
    i32 10, label %22
    i32 13, label %22
    i32 9, label %22
    i32 34, label %22
  ]

22:                                               ; preds = %18, %18, %18, %18
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 2
  store i32 %24, i32* %3, align 4
  br label %43

25:                                               ; preds = %18
  %26 = load i8*, i8** %4, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call i32 @isprint(i8 zeroext %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %4, align 8
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 255
  %35 = icmp sgt i32 %34, 127
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %25
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %42

39:                                               ; preds = %30
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 3
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %36
  br label %43

43:                                               ; preds = %42, %22
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %4, align 8
  br label %14

46:                                               ; preds = %14
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @strm_str_ptr(i32) #1

declare dso_local i32 @strm_str_len(i32) #1

declare dso_local i32 @isprint(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
