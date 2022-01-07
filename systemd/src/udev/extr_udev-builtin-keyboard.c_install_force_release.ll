; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-keyboard.c_install_force_release.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-keyboard.c_install_force_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"serio\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to get serio parent: %m\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"force_release\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Failed to get force-release attribute: %m\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c",%u\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"keyboard: updating force-release list with '%s'\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Failed to set force-release attribute: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @install_force_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @install_force_release(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [4096 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @assert(i32* %15)
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @assert(i32* %17)
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @sd_device_get_parent_with_subsystem_devtype(i32* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null, i32** %8)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %14, align 4
  %26 = call i32 @log_device_error_errno(i32* %24, i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %4, align 4
  br label %70

27:                                               ; preds = %3
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @sd_device_get_sysattr_value(i32* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %9)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @log_device_error_errno(i32* %33, i32 %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  store i32 %35, i32* %4, align 4
  br label %70

36:                                               ; preds = %27
  %37 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  store i8* %37, i8** %11, align 8
  store i64 4096, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i64 @strpcpy(i8** %11, i64 %38, i8* %39)
  store i64 %40, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %53, %36
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load i64, i64* %12, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %13, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @strpcpyf(i8** %11, i64 %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  store i64 %52, i64* %12, align 8
  br label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %13, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %41

56:                                               ; preds = %41
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %59 = call i32 @log_device_debug(i32* %57, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i8* %58)
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %62 = call i32 @sd_device_set_sysattr_value(i32* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @log_device_error_errno(i32* %66, i32 %67, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  store i32 %68, i32* %4, align 4
  br label %70

69:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %65, %32, %23
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @sd_device_get_parent_with_subsystem_devtype(i32*, i8*, i32*, i32**) #1

declare dso_local i32 @log_device_error_errno(i32*, i32, i8*) #1

declare dso_local i32 @sd_device_get_sysattr_value(i32*, i8*, i8**) #1

declare dso_local i64 @strpcpy(i8**, i64, i8*) #1

declare dso_local i64 @strpcpyf(i8**, i64, i8*, i32) #1

declare dso_local i32 @log_device_debug(i32*, i8*, i8*) #1

declare dso_local i32 @sd_device_set_sysattr_value(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
