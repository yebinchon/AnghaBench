; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-net_id.c_names_usb.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-net_id.c_names_usb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netnames = type { i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"usb_interface\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@NET_USB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netnames*, %struct.netnames*)* @names_usb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @names_usb(%struct.netnames* %0, %struct.netnames* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netnames*, align 8
  %5 = alloca %struct.netnames*, align 8
  %6 = alloca %struct.netnames*, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.netnames* %0, %struct.netnames** %4, align 8
  store %struct.netnames* %1, %struct.netnames** %5, align 8
  %15 = load %struct.netnames*, %struct.netnames** %4, align 8
  %16 = call i32 @assert(%struct.netnames* %15)
  %17 = load %struct.netnames*, %struct.netnames** %5, align 8
  %18 = call i32 @assert(%struct.netnames* %17)
  %19 = load %struct.netnames*, %struct.netnames** %4, align 8
  %20 = call i32 @sd_device_get_parent_with_subsystem_devtype(%struct.netnames* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.netnames** %6)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %3, align 4
  br label %107

25:                                               ; preds = %2
  %26 = load %struct.netnames*, %struct.netnames** %6, align 8
  %27 = call i32 @sd_device_get_sysname(%struct.netnames* %26, i8** %12)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %3, align 4
  br label %107

32:                                               ; preds = %25
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %34 = load i8*, i8** %12, align 8
  %35 = call i32 @strscpy(i8* %33, i32 256, i8* %34)
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %37 = call i8* @strchr(i8* %36, i8 signext 45)
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %107

43:                                               ; preds = %32
  %44 = load i8*, i8** %11, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  store i8* %45, i8** %8, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i8* @strchr(i8* %46, i8 signext 58)
  store i8* %47, i8** %11, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %107

53:                                               ; preds = %43
  %54 = load i8*, i8** %11, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  store i8 0, i8* %55, align 1
  %56 = load i8*, i8** %11, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  store i8* %57, i8** %9, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = call i8* @strchr(i8* %58, i8 signext 46)
  store i8* %59, i8** %11, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %53
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %107

65:                                               ; preds = %53
  %66 = load i8*, i8** %11, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  store i8 0, i8* %67, align 1
  %68 = load i8*, i8** %11, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  store i8* %69, i8** %10, align 8
  %70 = load i8*, i8** %8, align 8
  store i8* %70, i8** %11, align 8
  br label %71

71:                                               ; preds = %75, %65
  %72 = load i8*, i8** %11, align 8
  %73 = call i8* @strchr(i8* %72, i8 signext 46)
  store i8* %73, i8** %11, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i8*, i8** %11, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  store i8 117, i8* %77, align 1
  br label %71

78:                                               ; preds = %71
  %79 = load %struct.netnames*, %struct.netnames** %5, align 8
  %80 = getelementptr inbounds %struct.netnames, %struct.netnames* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %11, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = call i64 @strpcpyl(i8** %11, i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %82, i32* null)
  store i64 %83, i64* %13, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 @streq(i8* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %78
  %88 = load i8*, i8** %9, align 8
  %89 = call i64 @strpcpyl(i8** %11, i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* %88, i32* null)
  store i64 %89, i64* %13, align 8
  br label %90

90:                                               ; preds = %87, %78
  %91 = load i8*, i8** %10, align 8
  %92 = call i32 @streq(i8* %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = load i8*, i8** %10, align 8
  %96 = call i64 @strpcpyl(i8** %11, i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* %95, i32* null)
  store i64 %96, i64* %13, align 8
  br label %97

97:                                               ; preds = %94, %90
  %98 = load i64, i64* %13, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* @ENAMETOOLONG, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %107

103:                                              ; preds = %97
  %104 = load i32, i32* @NET_USB, align 4
  %105 = load %struct.netnames*, %struct.netnames** %5, align 8
  %106 = getelementptr inbounds %struct.netnames, %struct.netnames* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %103, %100, %62, %50, %40, %30, %23
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @assert(%struct.netnames*) #1

declare dso_local i32 @sd_device_get_parent_with_subsystem_devtype(%struct.netnames*, i8*, i8*, %struct.netnames**) #1

declare dso_local i32 @sd_device_get_sysname(%struct.netnames*, i8**) #1

declare dso_local i32 @strscpy(i8*, i32, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strpcpyl(i8**, i32, i8*, i8*, i32*) #1

declare dso_local i32 @streq(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
