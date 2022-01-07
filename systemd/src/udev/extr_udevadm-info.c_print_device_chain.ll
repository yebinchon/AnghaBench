; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udevadm-info.c_print_device_chain.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udevadm-info.c_print_device_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [314 x i8] c"\0AUdevadm info starts with the device specified by the devpath and then\0Awalks up the chain of parent devices. It prints for every device\0Afound, all possible attributes in the udev rules key format.\0AA rule to match, can be composed by the attributes of the device\0Aand the attributes from one single parent device.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"  looking at device '%s':\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"    KERNEL==\22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"    SUBSYSTEM==\22%s\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"    DRIVER==\22%s\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"ATTR\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"  looking at parent device '%s':\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"    KERNELS==\22%s\22\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"    SUBSYSTEMS==\22%s\22\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"    DRIVERS==\22%s\22\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"ATTRS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @print_device_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_device_chain(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([314 x i8], [314 x i8]* @.str, i64 0, i64 0))
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @sd_device_get_devpath(i32* %7, i8** %5)
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @sd_device_get_sysname(i32* %11, i8** %5)
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i64 @sd_device_get_subsystem(i32* %15, i8** %5)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %19

19:                                               ; preds = %18, %1
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i64 @sd_device_get_driver(i32* %22, i8** %5)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %26

26:                                               ; preds = %25, %19
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @print_all_attributes(i32* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %31 = load i32*, i32** %2, align 8
  store i32* %31, i32** %3, align 8
  br label %32

32:                                               ; preds = %61, %26
  %33 = load i32*, i32** %3, align 8
  %34 = call i64 @sd_device_get_parent(i32* %33, i32** %4)
  %35 = icmp sge i64 %34, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %32
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @sd_device_get_devpath(i32* %37, i8** %5)
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* %39)
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @sd_device_get_sysname(i32* %41, i8** %5)
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %43)
  %45 = load i32*, i32** %4, align 8
  %46 = call i64 @sd_device_get_subsystem(i32* %45, i8** %5)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %49

49:                                               ; preds = %48, %36
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* %50)
  %52 = load i32*, i32** %4, align 8
  %53 = call i64 @sd_device_get_driver(i32* %52, i8** %5)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %56

56:                                               ; preds = %55, %49
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %57)
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @print_all_attributes(i32* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %61

61:                                               ; preds = %56
  %62 = load i32*, i32** %4, align 8
  store i32* %62, i32** %3, align 8
  br label %32

63:                                               ; preds = %32
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sd_device_get_devpath(i32*, i8**) #1

declare dso_local i32 @sd_device_get_sysname(i32*, i8**) #1

declare dso_local i64 @sd_device_get_subsystem(i32*, i8**) #1

declare dso_local i64 @sd_device_get_driver(i32*, i8**) #1

declare dso_local i32 @print_all_attributes(i32*, i8*) #1

declare dso_local i64 @sd_device_get_parent(i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
