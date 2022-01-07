; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_automount.c_autofs_send_ready.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_automount.c_autofs_send_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_dev_ioctl = type { i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i8* }
%struct.TYPE_4__ = type { i32, i8* }

@AUTOFS_DEV_IOCTL_FAIL = common dso_local global i32 0, align 4
@AUTOFS_DEV_IOCTL_READY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32)* @autofs_send_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_send_ready(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.autofs_dev_ioctl, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp sge i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = icmp sge i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = call i32 @init_autofs_dev_ioctl(%struct.autofs_dev_ioctl* %10)
  %20 = load i32, i32* %7, align 4
  %21 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %10, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %10, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %10, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %35

31:                                               ; preds = %4
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %10, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  br label %35

35:                                               ; preds = %31, %24
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @AUTOFS_DEV_IOCTL_FAIL, align 4
  br label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @AUTOFS_DEV_IOCTL_READY, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = call i64 @ioctl(i32 %36, i32 %44, %struct.autofs_dev_ioctl* %10)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @errno, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %51

50:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %47
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @init_autofs_dev_ioctl(%struct.autofs_dev_ioctl*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.autofs_dev_ioctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
