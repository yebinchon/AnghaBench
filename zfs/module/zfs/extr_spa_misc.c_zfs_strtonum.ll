; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa_misc.c_zfs_strtonum.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa_misc.c_zfs_strtonum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_strtonum(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %40, %2
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %6, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %48

13:                                               ; preds = %8
  %14 = load i8, i8* %6, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp sge i32 %15, 48
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load i8, i8* %6, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp sle i32 %19, 57
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i8, i8* %6, align 1
  %23 = sext i8 %22 to i32
  %24 = sub nsw i32 %23, 48
  store i32 %24, i32* %7, align 4
  br label %40

25:                                               ; preds = %17, %13
  %26 = load i8, i8* %6, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp sge i32 %27, 97
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load i8, i8* %6, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sle i32 %31, 102
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i8, i8* %6, align 1
  %35 = sext i8 %34 to i32
  %36 = add nsw i32 10, %35
  %37 = sub nsw i32 %36, 97
  store i32 %37, i32* %7, align 4
  br label %39

38:                                               ; preds = %29, %25
  br label %48

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %21
  %41 = load i32, i32* %5, align 4
  %42 = mul nsw i32 %41, 16
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %3, align 8
  br label %8

48:                                               ; preds = %38, %8
  %49 = load i8**, i8*** %4, align 8
  %50 = icmp ne i8** %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i8*, i8** %3, align 8
  %53 = load i8**, i8*** %4, align 8
  store i8* %52, i8** %53, align 8
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
