; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-uaccess.c_builtin_uaccess.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-uaccess.c_builtin_uaccess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"Failed to get device name: %m\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ID_SEAT\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"seat0\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Failed to determine active user on seat %s: %m\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Failed to apply ACL: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**, i32)* @builtin_uaccess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @builtin_uaccess(i32* %0, i32 %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i32 0, i32* %12, align 4
  %16 = call i32 @umask(i32 18)
  %17 = call i32 (...) @logind_running()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %108

20:                                               ; preds = %4
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @sd_device_get_devname(i32* %21, i8** %10)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %14, align 4
  %28 = call i32 (i32*, i32, i8*, ...) @log_device_error_errno(i32* %26, i32 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %75

29:                                               ; preds = %20
  %30 = load i32*, i32** %6, align 8
  %31 = call i64 @sd_device_get_property_value(i32* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %11)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %34

34:                                               ; preds = %33, %29
  %35 = load i8*, i8** %11, align 8
  %36 = call i32 @sd_seat_get_active(i8* %35, i32* null, i32* %13)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %34
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* @ENXIO, align 4
  %42 = sub nsw i32 0, %41
  %43 = load i32, i32* @ENODATA, align 4
  %44 = sub nsw i32 0, %43
  %45 = call i64 @IN_SET(i32 %40, i32 %42, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 0, i32* %14, align 4
  br label %53

48:                                               ; preds = %39
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 (i32*, i32, i8*, ...) @log_device_error_errno(i32* %49, i32 %50, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %48, %47
  br label %75

54:                                               ; preds = %34
  %55 = load i8*, i8** %10, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @devnode_acl(i8* %55, i32 1, i32 0, i32 0, i32 1, i32 %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %54
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @ENOENT, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @LOG_DEBUG, align 4
  br label %70

68:                                               ; preds = %60
  %69 = load i32, i32* @LOG_ERR, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @log_device_full(i32* %61, i32 %71, i32 %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %75

74:                                               ; preds = %54
  store i32 1, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %75

75:                                               ; preds = %74, %70, %53, %25
  %76 = load i8*, i8** %10, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %106

78:                                               ; preds = %75
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %106, label %81

81:                                               ; preds = %78
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @devnode_acl(i8* %82, i32 1, i32 0, i32 0, i32 0, i32 0)
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %81
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* @ENOENT, align 4
  %90 = sub nsw i32 0, %89
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* @LOG_DEBUG, align 4
  br label %96

94:                                               ; preds = %86
  %95 = load i32, i32* @LOG_ERR, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @log_device_full(i32* %87, i32 %97, i32 %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %100 = load i32, i32* %14, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* %15, align 4
  store i32 %103, i32* %14, align 4
  br label %104

104:                                              ; preds = %102, %96
  br label %105

105:                                              ; preds = %104, %81
  br label %106

106:                                              ; preds = %105, %78, %75
  %107 = load i32, i32* %14, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %106, %19
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @umask(i32) #1

declare dso_local i32 @logind_running(...) #1

declare dso_local i32 @sd_device_get_devname(i32*, i8**) #1

declare dso_local i32 @log_device_error_errno(i32*, i32, i8*, ...) #1

declare dso_local i64 @sd_device_get_property_value(i32*, i8*, i8**) #1

declare dso_local i32 @sd_seat_get_active(i8*, i32*, i32*) #1

declare dso_local i64 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @devnode_acl(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @log_device_full(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
