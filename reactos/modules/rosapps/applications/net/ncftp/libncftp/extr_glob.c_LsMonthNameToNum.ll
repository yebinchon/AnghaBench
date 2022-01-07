; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_LsMonthNameToNum.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_LsMonthNameToNum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @LsMonthNameToNum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LsMonthNameToNum(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %5, i8** %2, align 8
  %6 = load i8, i8* %4, align 1
  %7 = sext i8 %6 to i32
  switch i32 %7, label %17 [
    i32 65, label %8
    i32 68, label %15
    i32 70, label %16
    i32 74, label %18
    i32 77, label %33
    i32 78, label %41
    i32 79, label %42
    i32 83, label %43
  ]

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 117
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 7, i32 3
  store i32 %14, i32* %3, align 4
  br label %44

15:                                               ; preds = %1
  store i32 11, i32* %3, align 4
  br label %44

16:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %44

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %1, %17
  %19 = load i8*, i8** %2, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %2, align 8
  %21 = load i8, i8* %19, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 117
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load i8*, i8** %2, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 108
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 6, i32 5
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %24
  br label %44

33:                                               ; preds = %1
  %34 = load i8*, i8** %2, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %2, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 114
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 2, i32 4
  store i32 %40, i32* %3, align 4
  br label %44

41:                                               ; preds = %1
  store i32 10, i32* %3, align 4
  br label %44

42:                                               ; preds = %1
  store i32 9, i32* %3, align 4
  br label %44

43:                                               ; preds = %1
  store i32 8, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %42, %41, %33, %32, %16, %15, %8
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
