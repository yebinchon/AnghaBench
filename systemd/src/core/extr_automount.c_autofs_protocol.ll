; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_automount.c_autofs_protocol.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_automount.c_autofs_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_dev_ioctl = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@AUTOFS_DEV_IOCTL_PROTOVER = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@AUTOFS_DEV_IOCTL_PROTOSUBVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Autofs protocol version %i.%i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @autofs_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_protocol(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.autofs_dev_ioctl, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sge i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = icmp sge i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = call i32 @init_autofs_dev_ioctl(%struct.autofs_dev_ioctl* %8)
  %18 = load i32, i32* %5, align 4
  %19 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %8, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @AUTOFS_DEV_IOCTL_PROTOVER, align 4
  %22 = call i64 @ioctl(i32 %20, i32 %21, %struct.autofs_dev_ioctl* %8)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @errno, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %48

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %8, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  %31 = call i32 @init_autofs_dev_ioctl(%struct.autofs_dev_ioctl* %8)
  %32 = load i32, i32* %5, align 4
  %33 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %8, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @AUTOFS_DEV_IOCTL_PROTOSUBVER, align 4
  %36 = call i64 @ioctl(i32 %34, i32 %35, %struct.autofs_dev_ioctl* %8)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load i32, i32* @errno, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %48

41:                                               ; preds = %27
  %42 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %8, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @log_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %41, %38, %24
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @init_autofs_dev_ioctl(%struct.autofs_dev_ioctl*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.autofs_dev_ioctl*) #1

declare dso_local i32 @log_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
