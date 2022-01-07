; ModuleID = '/home/carl/AnghaBench/redis/deps/hiredis/extr_sds.c_sdsull2str.c'
source_filename = "/home/carl/AnghaBench/redis/deps/hiredis/extr_sds.c_sdsull2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdsull2str(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %5, align 8
  br label %9

9:                                                ; preds = %18, %2
  %10 = load i64, i64* %4, align 8
  %11 = urem i64 %10, 10
  %12 = add i64 48, %11
  %13 = trunc i64 %12 to i8
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %5, align 8
  store i8 %13, i8* %14, align 1
  %16 = load i64, i64* %4, align 8
  %17 = udiv i64 %16, 10
  store i64 %17, i64* %4, align 8
  br label %18

18:                                               ; preds = %9
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %9, label %21

21:                                               ; preds = %18
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = ptrtoint i8* %22 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  store i64 %26, i64* %7, align 8
  %27 = load i8*, i8** %5, align 8
  store i8 0, i8* %27, align 1
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 -1
  store i8* %29, i8** %5, align 8
  br label %30

30:                                               ; preds = %34, %21
  %31 = load i8*, i8** %3, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ult i8* %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load i8*, i8** %3, align 8
  %36 = load i8, i8* %35, align 1
  store i8 %36, i8* %6, align 1
  %37 = load i8*, i8** %5, align 8
  %38 = load i8, i8* %37, align 1
  %39 = load i8*, i8** %3, align 8
  store i8 %38, i8* %39, align 1
  %40 = load i8, i8* %6, align 1
  %41 = load i8*, i8** %5, align 8
  store i8 %40, i8* %41, align 1
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %3, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 -1
  store i8* %45, i8** %5, align 8
  br label %30

46:                                               ; preds = %30
  %47 = load i64, i64* %7, align 8
  %48 = trunc i64 %47 to i32
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
