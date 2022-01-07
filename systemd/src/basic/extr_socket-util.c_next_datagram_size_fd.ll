; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_socket-util.c_next_datagram_size_fd.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_socket-util.c_next_datagram_size_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_PEEK = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@FIONREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @next_datagram_size_fd(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @MSG_PEEK, align 4
  %8 = load i32, i32* @MSG_TRUNC, align 4
  %9 = or i32 %7, %8
  %10 = call i64 @recv(i32 %6, i32* null, i32 0, i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load i64, i64* @errno, align 8
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = load i32, i32* @EFAULT, align 4
  %17 = call i64 @IN_SET(i64 %14, i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %29

20:                                               ; preds = %13
  %21 = load i64, i64* @errno, align 8
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %2, align 8
  br label %40

23:                                               ; preds = %1
  %24 = load i64, i64* %4, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %29

27:                                               ; preds = %23
  %28 = load i64, i64* %4, align 8
  store i64 %28, i64* %2, align 8
  br label %40

29:                                               ; preds = %26, %19
  store i32 0, i32* %5, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @FIONREAD, align 4
  %32 = call i64 @ioctl(i32 %30, i32 %31, i32* %5)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i64, i64* @errno, align 8
  %36 = sub nsw i64 0, %35
  store i64 %36, i64* %2, align 8
  br label %40

37:                                               ; preds = %29
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %2, align 8
  br label %40

40:                                               ; preds = %37, %34, %27, %20
  %41 = load i64, i64* %2, align 8
  ret i64 %41
}

declare dso_local i64 @recv(i32, i32*, i32, i32) #1

declare dso_local i64 @IN_SET(i64, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
