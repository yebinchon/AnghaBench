; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_file.c_zed_file_close_from.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_file.c_zed_file_close_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32 }

@errno = common dso_local global i32 0, align 4
@RLIMIT_NOFILE = common dso_local global i32 0, align 4
@RLIM_INFINITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zed_file_close_from(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.rlimit, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 256, i32* %3, align 4
  %8 = load i32, i32* @errno, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @RLIMIT_NOFILE, align 4
  %10 = call i64 @getrlimit(i32 %9, %struct.rlimit* %5)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 256, i32* %6, align 4
  br label %23

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %5, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RLIM_INFINITY, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 256, i32* %6, align 4
  br label %22

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %19, %18
  br label %23

23:                                               ; preds = %22, %12
  %24 = load i32, i32* %2, align 4
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %32, %23
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @close(i32 %30)
  br label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %25

35:                                               ; preds = %25
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* @errno, align 4
  ret void
}

declare dso_local i64 @getrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
