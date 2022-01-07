; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_galois.c_galois_divpower.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_galois.c_galois_divpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gilog = common dso_local global i64* null, align 8
@glog = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @galois_divpower(i64* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  br label %7

7:                                                ; preds = %56, %3
  %8 = load i64, i64* %6, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %61

10:                                               ; preds = %7
  %11 = load i64*, i64** %4, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %56

15:                                               ; preds = %10
  %16 = load i64*, i64** @gilog, align 8
  %17 = load i64*, i64** %4, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i64, i64* %16, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ule i64 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %15
  %25 = load i64*, i64** @glog, align 8
  %26 = load i64*, i64** @gilog, align 8
  %27 = load i64*, i64** %4, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i64, i64* %26, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = sub i64 255, %32
  %34 = add i64 %31, %33
  %35 = urem i64 %34, 255
  %36 = getelementptr inbounds i64, i64* %25, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** %4, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  store i64 %37, i64* %39, align 8
  br label %55

40:                                               ; preds = %15
  %41 = load i64*, i64** @glog, align 8
  %42 = load i64*, i64** @gilog, align 8
  %43 = load i64*, i64** %4, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i64, i64* %42, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = sub i64 %47, %48
  %50 = urem i64 %49, 255
  %51 = getelementptr inbounds i64, i64* %41, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %4, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %40, %24
  br label %56

56:                                               ; preds = %55, %10
  %57 = load i64*, i64** %4, align 8
  %58 = getelementptr inbounds i64, i64* %57, i32 1
  store i64* %58, i64** %4, align 8
  %59 = load i64, i64* %6, align 8
  %60 = add nsw i64 %59, -1
  store i64 %60, i64* %6, align 8
  br label %7

61:                                               ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
