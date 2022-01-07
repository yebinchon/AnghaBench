; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_rot13.c_rot13.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_rot13.c_rot13.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8)* @rot13 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @rot13(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = zext i8 %3 to i32
  %5 = icmp sge i32 %4, 97
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = load i8, i8* %2, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp sle i32 %8, 122
  br i1 %9, label %10, label %24

10:                                               ; preds = %6
  %11 = load i8, i8* %2, align 1
  %12 = zext i8 %11 to i32
  %13 = add nsw i32 %12, 13
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %2, align 1
  %15 = load i8, i8* %2, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp sgt i32 %16, 122
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = load i8, i8* %2, align 1
  %20 = zext i8 %19 to i32
  %21 = sub nsw i32 %20, 26
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %2, align 1
  br label %23

23:                                               ; preds = %18, %10
  br label %47

24:                                               ; preds = %6, %1
  %25 = load i8, i8* %2, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp sge i32 %26, 65
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load i8, i8* %2, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp sle i32 %30, 90
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load i8, i8* %2, align 1
  %34 = zext i8 %33 to i32
  %35 = add nsw i32 %34, 13
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %2, align 1
  %37 = load i8, i8* %2, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp sgt i32 %38, 90
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load i8, i8* %2, align 1
  %42 = zext i8 %41 to i32
  %43 = sub nsw i32 %42, 26
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %2, align 1
  br label %45

45:                                               ; preds = %40, %32
  br label %46

46:                                               ; preds = %45, %28, %24
  br label %47

47:                                               ; preds = %46, %23
  %48 = load i8, i8* %2, align 1
  ret i8 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
