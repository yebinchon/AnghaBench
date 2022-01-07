; ModuleID = '/home/carl/AnghaBench/vlc/modules/services_discovery/extr_udev.c_disc_get_mrl.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/services_discovery/extr_udev.c_disc_get_mrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udev_device = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"ID_CDROM\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"ID_CDROM_MEDIA_STATE\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"blank\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"ID_CDROM_MEDIA_TRACK_COUNT_AUDIO\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"cdda\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"ID_CDROM_MEDIA_DVD\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"dvd\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"ID_CDROM_MEDIA_BD\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"bluray\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.udev_device*)* @disc_get_mrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @disc_get_mrl(%struct.udev_device* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.udev_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.udev_device* %0, %struct.udev_device** %3, align 8
  %8 = load %struct.udev_device*, %struct.udev_device** %3, align 8
  %9 = call i8* @udev_device_get_devnode(%struct.udev_device* %8)
  store i8* %9, i8** %4, align 8
  %10 = load %struct.udev_device*, %struct.udev_device** %3, align 8
  %11 = call i8* @udev_device_get_property_value(%struct.udev_device* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %73

15:                                               ; preds = %1
  %16 = load %struct.udev_device*, %struct.udev_device** %3, align 8
  %17 = call i8* @udev_device_get_property_value(%struct.udev_device* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* @O_RDONLY, align 4
  %23 = call i32 @vlc_open(i8* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @vlc_close(i32 %27)
  br label %29

29:                                               ; preds = %26, %20
  store i8* null, i8** %2, align 8
  br label %73

30:                                               ; preds = %15
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i8* null, i8** %2, align 8
  br label %73

35:                                               ; preds = %30
  store i8* null, i8** %7, align 8
  %36 = load %struct.udev_device*, %struct.udev_device** %3, align 8
  %37 = call i8* @udev_device_get_property_value(%struct.udev_device* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i8* %37, i8** %5, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i8*, i8** %5, align 8
  %42 = call i64 @atoi(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %45

45:                                               ; preds = %44, %40, %35
  %46 = load %struct.udev_device*, %struct.udev_device** %3, align 8
  %47 = call i8* @udev_device_get_property_value(%struct.udev_device* %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i8* %47, i8** %5, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i8*, i8** %5, align 8
  %52 = call i64 @atoi(i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %55

55:                                               ; preds = %54, %50, %45
  %56 = load %struct.udev_device*, %struct.udev_device** %3, align 8
  %57 = call i8* @udev_device_get_property_value(%struct.udev_device* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  store i8* %57, i8** %5, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i8*, i8** %5, align 8
  %62 = call i64 @atoi(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %7, align 8
  br label %65

65:                                               ; preds = %64, %60, %55
  %66 = load i8*, i8** %7, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i8* null, i8** %2, align 8
  br label %73

69:                                               ; preds = %65
  %70 = load i8*, i8** %4, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i8* @vlc_path2uri(i8* %70, i8* %71)
  store i8* %72, i8** %2, align 8
  br label %73

73:                                               ; preds = %69, %68, %34, %29, %14
  %74 = load i8*, i8** %2, align 8
  ret i8* %74
}

declare dso_local i8* @udev_device_get_devnode(%struct.udev_device*) #1

declare dso_local i8* @udev_device_get_property_value(%struct.udev_device*, i8*) #1

declare dso_local i32 @vlc_open(i8*, i32) #1

declare dso_local i32 @vlc_close(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i8* @vlc_path2uri(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
