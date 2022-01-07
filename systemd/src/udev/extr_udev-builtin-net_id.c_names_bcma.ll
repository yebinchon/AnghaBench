; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-net_id.c_names_bcma.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-net_id.c_names_bcma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netnames = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"bcma\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"bcma%*u:%u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"b%u\00", align 1
@NET_BCMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netnames*, %struct.netnames*)* @names_bcma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @names_bcma(%struct.netnames* %0, %struct.netnames* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netnames*, align 8
  %5 = alloca %struct.netnames*, align 8
  %6 = alloca %struct.netnames*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.netnames* %0, %struct.netnames** %4, align 8
  store %struct.netnames* %1, %struct.netnames** %5, align 8
  %10 = load %struct.netnames*, %struct.netnames** %4, align 8
  %11 = call i32 @assert(%struct.netnames* %10)
  %12 = load %struct.netnames*, %struct.netnames** %5, align 8
  %13 = call i32 @assert(%struct.netnames* %12)
  %14 = load %struct.netnames*, %struct.netnames** %4, align 8
  %15 = call i32 @sd_device_get_parent_with_subsystem_devtype(%struct.netnames* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.netnames** %6)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %47

20:                                               ; preds = %2
  %21 = load %struct.netnames*, %struct.netnames** %6, align 8
  %22 = call i32 @sd_device_get_sysname(%struct.netnames* %21, i8** %8)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %3, align 4
  br label %47

27:                                               ; preds = %20
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @sscanf(i8* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %47

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = icmp ugt i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.netnames*, %struct.netnames** %5, align 8
  %39 = getelementptr inbounds %struct.netnames, %struct.netnames* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @xsprintf(i32 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %37, %34
  %44 = load i32, i32* @NET_BCMA, align 4
  %45 = load %struct.netnames*, %struct.netnames** %5, align 8
  %46 = getelementptr inbounds %struct.netnames, %struct.netnames* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %31, %25, %18
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @assert(%struct.netnames*) #1

declare dso_local i32 @sd_device_get_parent_with_subsystem_devtype(%struct.netnames*, i8*, i32*, %struct.netnames**) #1

declare dso_local i32 @sd_device_get_sysname(%struct.netnames*, i8**) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @xsprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
