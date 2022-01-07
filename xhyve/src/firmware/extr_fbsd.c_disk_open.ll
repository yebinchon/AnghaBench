; ModuleID = '/home/carl/AnghaBench/xhyve/src/firmware/extr_fbsd.c_disk_open.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/firmware/extr_fbsd.c_disk_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ndisks = common dso_local global i64 0, align 8
@NDISKS = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@disk_fd = common dso_local global i32* null, align 8
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @disk_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disk_open(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i64, i64* @ndisks, align 8
  %7 = load i64, i64* @NDISKS, align 8
  %8 = icmp uge i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @ERANGE, align 4
  store i32 %10, i32* %2, align 4
  br label %28

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* @O_RDONLY, align 4
  %14 = call i32 @open(i8* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = load i32*, i32** @disk_fd, align 8
  %20 = load i64, i64* @ndisks, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32 %18, i32* %21, align 4
  %22 = load i64, i64* @ndisks, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* @ndisks, align 8
  br label %26

24:                                               ; preds = %11
  %25 = load i32, i32* @errno, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %24, %17
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %9
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @open(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
