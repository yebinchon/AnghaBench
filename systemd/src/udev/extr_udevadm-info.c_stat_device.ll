; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udevadm-info.c_stat_device.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udevadm-info.c_stat_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"INFO_\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%sMAJOR=%u\0A%sMINOR=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%u:%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @stat_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stat_device(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @stat(i8* %9, %struct.stat* %8)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @errno, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %41

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @major(i32 %25)
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @minor(i32 %29)
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %23, i32 %26, i8* %27, i32 %30)
  br label %40

32:                                               ; preds = %15
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @major(i32 %34)
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @minor(i32 %37)
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %32, %22
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %12
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @major(i32) #1

declare dso_local i32 @minor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
