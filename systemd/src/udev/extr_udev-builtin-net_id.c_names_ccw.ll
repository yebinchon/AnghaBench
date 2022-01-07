; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-net_id.c_names_ccw.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-net_id.c_names_ccw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netnames = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ccwgroup\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ccw\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c".0\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"c%s\00", align 1
@NET_CCW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netnames*, %struct.netnames*)* @names_ccw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @names_ccw(%struct.netnames* %0, %struct.netnames* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netnames*, align 8
  %5 = alloca %struct.netnames*, align 8
  %6 = alloca %struct.netnames*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.netnames* %0, %struct.netnames** %4, align 8
  store %struct.netnames* %1, %struct.netnames** %5, align 8
  %12 = load %struct.netnames*, %struct.netnames** %4, align 8
  %13 = call i32 @assert(%struct.netnames* %12)
  %14 = load %struct.netnames*, %struct.netnames** %5, align 8
  %15 = call i32 @assert(%struct.netnames* %14)
  %16 = load %struct.netnames*, %struct.netnames** %4, align 8
  %17 = call i32 @sd_device_get_parent(%struct.netnames* %16, %struct.netnames** %6)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %3, align 4
  br label %86

22:                                               ; preds = %2
  %23 = load %struct.netnames*, %struct.netnames** %6, align 8
  %24 = call %struct.netnames* @skip_virtio(%struct.netnames* %23)
  store %struct.netnames* %24, %struct.netnames** %6, align 8
  %25 = load %struct.netnames*, %struct.netnames** %6, align 8
  %26 = icmp ne %struct.netnames* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %86

30:                                               ; preds = %22
  %31 = load %struct.netnames*, %struct.netnames** %6, align 8
  %32 = call i32 @sd_device_get_subsystem(%struct.netnames* %31, i8** %8)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %3, align 4
  br label %86

37:                                               ; preds = %30
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @STR_IN_SET(i8* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @ENOENT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %86

44:                                               ; preds = %37
  %45 = load %struct.netnames*, %struct.netnames** %6, align 8
  %46 = call i32 @sd_device_get_sysname(%struct.netnames* %45, i8** %7)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %3, align 4
  br label %86

51:                                               ; preds = %44
  %52 = load i8*, i8** %7, align 8
  %53 = call i64 @strlen(i8* %52)
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @IN_SET(i64 %54, i32 8, i32 9)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %86

60:                                               ; preds = %51
  %61 = load i8*, i8** %7, align 8
  %62 = call i64 @strspn(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i64 %62, i64* %10, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i64, i64* %10, align 8
  br label %71

68:                                               ; preds = %60
  %69 = load i64, i64* %9, align 8
  %70 = sub i64 %69, 1
  br label %71

71:                                               ; preds = %68, %66
  %72 = phi i64 [ %67, %66 ], [ %70, %68 ]
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 %72
  store i8* %74, i8** %7, align 8
  %75 = load %struct.netnames*, %struct.netnames** %5, align 8
  %76 = getelementptr inbounds %struct.netnames, %struct.netnames* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %7, align 8
  %79 = call i64 @snprintf_ok(i32 %77, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %71
  %82 = load i32, i32* @NET_CCW, align 4
  %83 = load %struct.netnames*, %struct.netnames** %5, align 8
  %84 = getelementptr inbounds %struct.netnames, %struct.netnames* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %81, %71
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %57, %49, %41, %35, %27, %20
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @assert(%struct.netnames*) #1

declare dso_local i32 @sd_device_get_parent(%struct.netnames*, %struct.netnames**) #1

declare dso_local %struct.netnames* @skip_virtio(%struct.netnames*) #1

declare dso_local i32 @sd_device_get_subsystem(%struct.netnames*, i8**) #1

declare dso_local i32 @STR_IN_SET(i8*, i8*, i8*) #1

declare dso_local i32 @sd_device_get_sysname(%struct.netnames*, i8**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @IN_SET(i64, i32, i32) #1

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i64 @snprintf_ok(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
