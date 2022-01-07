; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_automount.c_open_dev_autofs.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_automount.c_open_dev_autofs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.autofs_dev_ioctl = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"/dev/autofs\00", align 1
@O_CLOEXEC = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to open /dev/autofs: %m\00", align 1
@AUTOFS_DEV_IOCTL_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Autofs kernel version %i.%i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @open_dev_autofs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_dev_autofs(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.autofs_dev_ioctl, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_4__* %5)
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %2, align 4
  br label %59

16:                                               ; preds = %1
  %17 = call i32 @label_fix(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0)
  %18 = load i32, i32* @O_CLOEXEC, align 4
  %19 = load i32, i32* @O_RDONLY, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @open(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = sext i32 %21 to i64
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %16
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 @log_error_errno(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 %31, i32* %2, align 4
  br label %59

32:                                               ; preds = %16
  %33 = call i32 @init_autofs_dev_ioctl(%struct.autofs_dev_ioctl* %4)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @AUTOFS_DEV_IOCTL_VERSION, align 4
  %38 = call i64 @ioctl(i64 %36, i32 %37, %struct.autofs_dev_ioctl* %4)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @safe_close(i64 %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i32, i32* @errno, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %59

49:                                               ; preds = %32
  %50 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %4, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %4, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @log_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %49, %40, %29, %11
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i32 @label_fix(i8*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @init_autofs_dev_ioctl(%struct.autofs_dev_ioctl*) #1

declare dso_local i64 @ioctl(i64, i32, %struct.autofs_dev_ioctl*) #1

declare dso_local i64 @safe_close(i64) #1

declare dso_local i32 @log_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
