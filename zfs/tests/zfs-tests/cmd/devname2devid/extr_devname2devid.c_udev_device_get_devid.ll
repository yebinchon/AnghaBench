; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/devname2devid/extr_devname2devid.c_udev_device_get_devid.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/devname2devid/extr_devname2devid.c_udev_device_get_devid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udev_device = type { i32 }
%struct.udev_list_entry = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ID_BUS\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"DM_UUID\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"dm-uuid-%s\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%s%s-\00", align 1
@DEV_BYID_PATH = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.udev_device*, i8*, i64)* @udev_device_get_devid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udev_device_get_devid(%struct.udev_device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.udev_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.udev_list_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.udev_device* %0, %struct.udev_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i32, i32* @MAXPATHLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load %struct.udev_device*, %struct.udev_device** %5, align 8
  %20 = call i8* @udev_device_get_property_value(%struct.udev_device* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %3
  %24 = load %struct.udev_device*, %struct.udev_device** %5, align 8
  %25 = call i8* @udev_device_get_property_value(%struct.udev_device* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %29, i32 %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %73

34:                                               ; preds = %23
  %35 = load i32, i32* @ENODATA, align 4
  store i32 %35, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %73

36:                                               ; preds = %3
  %37 = trunc i64 %16 to i32
  %38 = load i8*, i8** @DEV_BYID_PATH, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %18, i32 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %38, i8* %39)
  %41 = load %struct.udev_device*, %struct.udev_device** %5, align 8
  %42 = call %struct.udev_list_entry* @udev_device_get_devlinks_list_entry(%struct.udev_device* %41)
  store %struct.udev_list_entry* %42, %struct.udev_list_entry** %8, align 8
  br label %43

43:                                               ; preds = %68, %36
  %44 = load %struct.udev_list_entry*, %struct.udev_list_entry** %8, align 8
  %45 = icmp ne %struct.udev_list_entry* %44, null
  br i1 %45, label %46, label %71

46:                                               ; preds = %43
  %47 = load %struct.udev_list_entry*, %struct.udev_list_entry** %8, align 8
  %48 = call i8* @udev_list_entry_get_name(%struct.udev_list_entry* %47)
  store i8* %48, i8** %14, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = call i32 @strlen(i8* %18)
  %51 = call i64 @strncmp(i8* %49, i8* %18, i32 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %46
  %54 = load i8*, i8** @DEV_BYID_PATH, align 8
  %55 = call i32 @strlen(i8* %54)
  %56 = load i8*, i8** %14, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %14, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = load i64, i64* %7, align 8
  %62 = sub i64 %61, 1
  %63 = call i32 @stpncpy(i8* %59, i8* %60, i64 %62)
  %64 = load i8*, i8** %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = sub i64 %65, 1
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  store i8 0, i8* %67, align 1
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %73

68:                                               ; preds = %46
  %69 = load %struct.udev_list_entry*, %struct.udev_list_entry** %8, align 8
  %70 = call %struct.udev_list_entry* @udev_list_entry_get_next(%struct.udev_list_entry* %69)
  store %struct.udev_list_entry* %70, %struct.udev_list_entry** %8, align 8
  br label %43

71:                                               ; preds = %43
  %72 = load i32, i32* @ENODATA, align 4
  store i32 %72, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %73

73:                                               ; preds = %71, %53, %34, %28
  %74 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @udev_device_get_property_value(%struct.udev_device*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local %struct.udev_list_entry* @udev_device_get_devlinks_list_entry(%struct.udev_device*) #2

declare dso_local i8* @udev_list_entry_get_name(%struct.udev_list_entry*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @stpncpy(i8*, i8*, i64) #2

declare dso_local %struct.udev_list_entry* @udev_list_entry_get_next(%struct.udev_list_entry*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
