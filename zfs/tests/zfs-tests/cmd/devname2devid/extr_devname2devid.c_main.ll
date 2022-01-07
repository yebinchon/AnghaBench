; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/devname2devid/extr_devname2devid.c_main.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/devname2devid/extr_devname2devid.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udev = type { i32 }
%struct.udev_device = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s <devicepath> [search path]\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"udev_new\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"realpath\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"devid %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.udev*, align 8
  %7 = alloca %struct.udev_device*, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.udev_device* null, %struct.udev_device** %7, align 8
  %14 = load i32, i32* @MAXPATHLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = call i32 @exit(i32 1) #4
  unreachable

26:                                               ; preds = %2
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %11, align 8
  %30 = call %struct.udev* (...) @udev_new()
  store %struct.udev* %30, %struct.udev** %6, align 8
  %31 = icmp eq %struct.udev* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 @exit(i32 1) #4
  unreachable

35:                                               ; preds = %26
  %36 = load i8*, i8** %11, align 8
  %37 = call i32* @realpath(i8* %36, i8* %17)
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %41 = call i32 @exit(i32 1) #4
  unreachable

42:                                               ; preds = %35
  %43 = call i8* @strrchr(i8* %17, i8 signext 47)
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  store i8* %44, i8** %12, align 8
  %45 = load %struct.udev*, %struct.udev** %6, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = call %struct.udev_device* @udev_device_new_from_subsystem_sysname(%struct.udev* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %46)
  store %struct.udev_device* %47, %struct.udev_device** %7, align 8
  %48 = icmp eq %struct.udev_device* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i8*, i8** %12, align 8
  %51 = call i32 @perror(i8* %50)
  %52 = call i32 @exit(i32 1) #4
  unreachable

53:                                               ; preds = %42
  %54 = load %struct.udev_device*, %struct.udev_device** %7, align 8
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %56 = call i32 @udev_device_get_devid(%struct.udev_device* %54, i8* %55, i32 128)
  store i32 %56, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.udev_device*, %struct.udev_device** %7, align 8
  %60 = call i32 @udev_device_unref(%struct.udev_device* %59)
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* @errno, align 4
  %62 = load i8*, i8** %12, align 8
  %63 = call i32 @perror(i8* %62)
  %64 = call i32 @exit(i32 1) #4
  unreachable

65:                                               ; preds = %53
  %66 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %67 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  %68 = load %struct.udev_device*, %struct.udev_device** %7, align 8
  %69 = call i32 @udev_device_unref(%struct.udev_device* %68)
  %70 = load %struct.udev*, %struct.udev** %6, align 8
  %71 = call i32 @udev_unref(%struct.udev* %70)
  store i32 0, i32* %3, align 4
  %72 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local %struct.udev* @udev_new(...) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32* @realpath(i8*, i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local %struct.udev_device* @udev_device_new_from_subsystem_sysname(%struct.udev*, i8*, i8*) #2

declare dso_local i32 @udev_device_get_devid(%struct.udev_device*, i8*, i32) #2

declare dso_local i32 @udev_device_unref(%struct.udev_device*) #2

declare dso_local i32 @udev_unref(%struct.udev*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
