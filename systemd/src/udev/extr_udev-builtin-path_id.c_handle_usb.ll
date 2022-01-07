; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-path_id.c_handle_usb.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-path_id.c_handle_usb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"usb_interface\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"usb_device\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"usb-0:%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8**)* @handle_usb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @handle_usb(i32* %0, i8** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i64 @sd_device_get_devtype(i32* %9, i8** %6)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  store i32* %13, i32** %3, align 8
  br label %41

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @STR_IN_SET(i8* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  store i32* %19, i32** %3, align 8
  br label %41

20:                                               ; preds = %14
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @sd_device_get_sysname(i32* %21, i8** %7)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32*, i32** %4, align 8
  store i32* %25, i32** %3, align 8
  br label %41

26:                                               ; preds = %20
  %27 = load i8*, i8** %7, align 8
  %28 = call i8* @strchr(i8* %27, i8 signext 45)
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = load i32*, i32** %4, align 8
  store i32* %32, i32** %3, align 8
  br label %41

33:                                               ; preds = %26
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %8, align 8
  %36 = load i8**, i8*** %5, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @path_prepend(i8** %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  %39 = load i32*, i32** %4, align 8
  %40 = call i32* @skip_subsystem(i32* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32* %40, i32** %3, align 8
  br label %41

41:                                               ; preds = %33, %31, %24, %18, %12
  %42 = load i32*, i32** %3, align 8
  ret i32* %42
}

declare dso_local i64 @sd_device_get_devtype(i32*, i8**) #1

declare dso_local i32 @STR_IN_SET(i8*, i8*, i8*) #1

declare dso_local i64 @sd_device_get_sysname(i32*, i8**) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @path_prepend(i8**, i8*, i8*) #1

declare dso_local i32* @skip_subsystem(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
