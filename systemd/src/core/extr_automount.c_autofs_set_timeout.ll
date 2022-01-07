; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_automount.c_autofs_set_timeout.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_automount.c_autofs_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_dev_ioctl = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@USEC_INFINITY = common dso_local global i64 0, align 8
@USEC_PER_SEC = common dso_local global i32 0, align 4
@AUTOFS_DEV_IOCTL_TIMEOUT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @autofs_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_set_timeout(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.autofs_dev_ioctl, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = call i32 @init_autofs_dev_ioctl(%struct.autofs_dev_ioctl* %8)
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %8, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @USEC_INFINITY, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %8, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  br label %32

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* @USEC_PER_SEC, align 4
  %29 = call i64 @DIV_ROUND_UP(i64 %27, i32 %28)
  %30 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %8, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %26, %23
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @AUTOFS_DEV_IOCTL_TIMEOUT, align 4
  %35 = call i64 @ioctl(i32 %33, i32 %34, %struct.autofs_dev_ioctl* %8)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @errno, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %41

40:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @init_autofs_dev_ioctl(%struct.autofs_dev_ioctl*) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.autofs_dev_ioctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
