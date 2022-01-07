; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-net_id.c_names_netdevsim.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-net_id.c_names_netdevsim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netnames = type { i32, i32 }

@NAMING_NETDEVSIM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"netdevsim\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"netdevsim%u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"phys_port_name\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"i%un%s\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@NET_NETDEVSIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netnames*, %struct.netnames*)* @names_netdevsim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @names_netdevsim(%struct.netnames* %0, %struct.netnames* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netnames*, align 8
  %5 = alloca %struct.netnames*, align 8
  %6 = alloca %struct.netnames*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.netnames* %0, %struct.netnames** %4, align 8
  store %struct.netnames* %1, %struct.netnames** %5, align 8
  store i8* null, i8** %9, align 8
  %12 = load i32, i32* @NAMING_NETDEVSIM, align 4
  %13 = call i32 @naming_scheme_has(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

16:                                               ; preds = %2
  %17 = load %struct.netnames*, %struct.netnames** %4, align 8
  %18 = call i32 @assert(%struct.netnames* %17)
  %19 = load %struct.netnames*, %struct.netnames** %5, align 8
  %20 = call i32 @assert(%struct.netnames* %19)
  %21 = load %struct.netnames*, %struct.netnames** %4, align 8
  %22 = call i32 @sd_device_get_parent_with_subsystem_devtype(%struct.netnames* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, %struct.netnames** %6)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %3, align 4
  br label %64

27:                                               ; preds = %16
  %28 = load %struct.netnames*, %struct.netnames** %6, align 8
  %29 = call i32 @sd_device_get_sysname(%struct.netnames* %28, i8** %7)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %3, align 4
  br label %64

34:                                               ; preds = %27
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @sscanf(i8* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %64

41:                                               ; preds = %34
  %42 = load %struct.netnames*, %struct.netnames** %4, align 8
  %43 = call i32 @sd_device_get_sysattr_value(%struct.netnames* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %9)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %3, align 4
  br label %64

48:                                               ; preds = %41
  %49 = load %struct.netnames*, %struct.netnames** %5, align 8
  %50 = getelementptr inbounds %struct.netnames, %struct.netnames* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @snprintf_ok(i32 %51, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %52, i8* %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %48
  %58 = load i32, i32* @ENOBUFS, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %64

60:                                               ; preds = %48
  %61 = load i32, i32* @NET_NETDEVSIM, align 4
  %62 = load %struct.netnames*, %struct.netnames** %5, align 8
  %63 = getelementptr inbounds %struct.netnames, %struct.netnames* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %57, %46, %38, %32, %25, %15
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @naming_scheme_has(i32) #1

declare dso_local i32 @assert(%struct.netnames*) #1

declare dso_local i32 @sd_device_get_parent_with_subsystem_devtype(%struct.netnames*, i8*, i32*, %struct.netnames**) #1

declare dso_local i32 @sd_device_get_sysname(%struct.netnames*, i8**) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @sd_device_get_sysattr_value(%struct.netnames*, i8*, i8**) #1

declare dso_local i32 @snprintf_ok(i32, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
