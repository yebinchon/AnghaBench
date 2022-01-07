; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_fd-util.c_get_max_fd.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_fd-util.c_get_max_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32, i32 }

@RLIMIT_NOFILE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@FD_SETSIZE = common dso_local global i64 0, align 8
@RLIM_INFINITY = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_max_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_max_fd() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.rlimit, align 4
  %3 = alloca i64, align 8
  %4 = load i32, i32* @RLIMIT_NOFILE, align 4
  %5 = call i64 @getrlimit(i32 %4, %struct.rlimit* %2)
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @errno, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %1, align 4
  br label %38

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @MAX(i32 %12, i32 %14)
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @FD_SETSIZE, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %10
  %20 = load i64, i64* @FD_SETSIZE, align 8
  %21 = sub nsw i64 %20, 1
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %1, align 4
  br label %38

23:                                               ; preds = %10
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @RLIM_INFINITY, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @INT_MAX, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %23
  %32 = load i64, i64* @INT_MAX, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %1, align 4
  br label %38

34:                                               ; preds = %27
  %35 = load i64, i64* %3, align 8
  %36 = sub nsw i64 %35, 1
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %1, align 4
  br label %38

38:                                               ; preds = %34, %31, %19, %7
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i64 @getrlimit(i32, %struct.rlimit*) #1

declare dso_local i64 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
