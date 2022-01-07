; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-hwdb.c_udev_builtin_hwdb_search.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-hwdb.c_udev_builtin_hwdb_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"MODALIAS\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"usb_device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i8*, i8*, i32)* @udev_builtin_hwdb_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udev_builtin_hwdb_search(i32* %0, i32* %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca [16 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @assert(i32* %20)
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %6
  %25 = load i32*, i32** %7, align 8
  store i32* %25, i32** %8, align 8
  br label %26

26:                                               ; preds = %24, %6
  %27 = load i32*, i32** %8, align 8
  store i32* %27, i32** %13, align 8
  br label %28

28:                                               ; preds = %91, %26
  %29 = load i32*, i32** %13, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %92

31:                                               ; preds = %28
  store i8* null, i8** %19, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = call i64 @sd_device_get_subsystem(i32* %32, i8** %17)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %86

36:                                               ; preds = %31
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i8*, i8** %17, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i64 @streq(i8* %40, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %86

45:                                               ; preds = %39, %36
  %46 = load i32*, i32** %13, align 8
  %47 = call i32 @sd_device_get_property_value(i32* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %19)
  %48 = load i8*, i8** %17, align 8
  %49 = call i64 @streq(i8* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %45
  %52 = load i32*, i32** %13, align 8
  %53 = call i64 @sd_device_get_devtype(i32* %52, i8** %18)
  %54 = icmp sge i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = load i8*, i8** %18, align 8
  %57 = call i64 @streq(i8* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i8*, i8** %19, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = load i32*, i32** %13, align 8
  %64 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %65 = call i8* @modalias_usb(i32* %63, i8* %64, i32 16)
  store i8* %65, i8** %19, align 8
  br label %66

66:                                               ; preds = %62, %59
  store i32 1, i32* %15, align 4
  br label %67

67:                                               ; preds = %66, %55, %51, %45
  %68 = load i8*, i8** %19, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  br label %86

71:                                               ; preds = %67
  %72 = load i32*, i32** %7, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = load i8*, i8** %19, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @udev_builtin_hwdb_lookup(i32* %72, i8* %73, i8* %74, i8* %75, i32 %76)
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %16, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %92

81:                                               ; preds = %71
  %82 = load i32, i32* %15, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %92

85:                                               ; preds = %81
  br label %86

86:                                               ; preds = %85, %70, %44, %35
  %87 = load i32*, i32** %13, align 8
  %88 = call i64 @sd_device_get_parent(i32* %87, i32** %13)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %92

91:                                               ; preds = %86
  br label %28

92:                                               ; preds = %90, %84, %80, %28
  %93 = load i32, i32* %16, align 4
  ret i32 %93
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i64 @sd_device_get_subsystem(i32*, i8**) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @sd_device_get_property_value(i32*, i8*, i8**) #1

declare dso_local i64 @sd_device_get_devtype(i32*, i8**) #1

declare dso_local i8* @modalias_usb(i32*, i8*, i32) #1

declare dso_local i32 @udev_builtin_hwdb_lookup(i32*, i8*, i8*, i8*, i32) #1

declare dso_local i64 @sd_device_get_parent(i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
