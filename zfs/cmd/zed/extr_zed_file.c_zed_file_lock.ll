; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_file.c_zed_file_lock.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_file.c_zed_file_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flock = type { i64, i64, i32, i32 }

@EBADF = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@F_WRLCK = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@F_SETLK = common dso_local global i32 0, align 4
@EACCES = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zed_file_lock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.flock, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i64, i64* @EBADF, align 8
  store i64 %8, i64* @errno, align 8
  store i32 -1, i32* %2, align 4
  br label %31

9:                                                ; preds = %1
  %10 = load i32, i32* @F_WRLCK, align 4
  %11 = getelementptr inbounds %struct.flock, %struct.flock* %4, i32 0, i32 3
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @SEEK_SET, align 4
  %13 = getelementptr inbounds %struct.flock, %struct.flock* %4, i32 0, i32 2
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.flock, %struct.flock* %4, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.flock, %struct.flock* %4, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @F_SETLK, align 4
  %18 = call i64 @fcntl(i32 %16, i32 %17, %struct.flock* %4)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %9
  %21 = load i64, i64* @errno, align 8
  %22 = load i64, i64* @EACCES, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @EAGAIN, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %20
  store i32 1, i32* %2, align 4
  br label %31

29:                                               ; preds = %24
  store i32 -1, i32* %2, align 4
  br label %31

30:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %29, %28, %7
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @fcntl(i32, i32, %struct.flock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
