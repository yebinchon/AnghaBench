; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-net_id.c_dev_pci_onboard.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-net_id.c_dev_pci_onboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netnames = type { i8*, i8*, i32* }

@.str = private unnamed_addr constant [11 x i8] c"acpi_index\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@NAMING_ZERO_ACPI_INDEX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ONBOARD_INDEX_MAX = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"dev_port\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"phys_port_name\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"o%lu\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"n%s\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"d%lu\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.netnames*)* @dev_pci_onboard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_pci_onboard(i32* %0, %struct.netnames* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.netnames*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.netnames* %1, %struct.netnames** %5, align 8
  store i64 0, i64* %7, align 8
  store i8* null, i8** %9, align 8
  %13 = load %struct.netnames*, %struct.netnames** %5, align 8
  %14 = getelementptr inbounds %struct.netnames, %struct.netnames* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @sd_device_get_sysattr_value(i32* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %8)
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load %struct.netnames*, %struct.netnames** %5, align 8
  %20 = getelementptr inbounds %struct.netnames, %struct.netnames* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @sd_device_get_sysattr_value(i32* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %8)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %3, align 4
  br label %102

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %2
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @safe_atolu(i8* %29, i64* %6)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %3, align 4
  br label %102

35:                                               ; preds = %28
  %36 = load i64, i64* %6, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, i32* @NAMING_ZERO_ACPI_INDEX, align 4
  %40 = call i32 @naming_scheme_has(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %102

45:                                               ; preds = %38, %35
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @ONBOARD_INDEX_MAX, align 8
  %48 = icmp ugt i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @ENOENT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %102

52:                                               ; preds = %45
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @sd_device_get_sysattr_value(i32* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %8)
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i8*, i8** %8, align 8
  %58 = call i64 @strtoul(i8* %57, i32* null, i32 10)
  store i64 %58, i64* %7, align 8
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @sd_device_get_sysattr_value(i32* %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %9)
  %62 = load %struct.netnames*, %struct.netnames** %5, align 8
  %63 = getelementptr inbounds %struct.netnames, %struct.netnames* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %11, align 8
  store i64 8, i64* %10, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i64 (i8**, i64, i8*, ...) @strpcpyf(i8** %11, i64 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 %66)
  store i64 %67, i64* %10, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %59
  %71 = load i64, i64* %10, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = call i64 (i8**, i64, i8*, ...) @strpcpyf(i8** %11, i64 %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %72)
  store i64 %73, i64* %10, align 8
  br label %82

74:                                               ; preds = %59
  %75 = load i64, i64* %7, align 8
  %76 = icmp ugt i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* %7, align 8
  %80 = call i64 (i8**, i64, i8*, ...) @strpcpyf(i8** %11, i64 %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 %79)
  store i64 %80, i64* %10, align 8
  br label %81

81:                                               ; preds = %77, %74
  br label %82

82:                                               ; preds = %81, %70
  %83 = load i64, i64* %10, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load %struct.netnames*, %struct.netnames** %5, align 8
  %87 = getelementptr inbounds %struct.netnames, %struct.netnames* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  store i8 0, i8* %89, align 1
  br label %90

90:                                               ; preds = %85, %82
  %91 = load %struct.netnames*, %struct.netnames** %5, align 8
  %92 = getelementptr inbounds %struct.netnames, %struct.netnames* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.netnames*, %struct.netnames** %5, align 8
  %95 = getelementptr inbounds %struct.netnames, %struct.netnames* %94, i32 0, i32 1
  %96 = call i32 @sd_device_get_sysattr_value(i32* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %95)
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load %struct.netnames*, %struct.netnames** %5, align 8
  %100 = getelementptr inbounds %struct.netnames, %struct.netnames* %99, i32 0, i32 1
  store i8* null, i8** %100, align 8
  br label %101

101:                                              ; preds = %98, %90
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %49, %42, %33, %25
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @sd_device_get_sysattr_value(i32*, i8*, i8**) #1

declare dso_local i32 @safe_atolu(i8*, i64*) #1

declare dso_local i32 @naming_scheme_has(i32) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i64 @strpcpyf(i8**, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
