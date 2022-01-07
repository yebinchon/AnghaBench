; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-device/extr_device-private.c_device_tag.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-device/extr_device-private.c_device_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"/run/udev/tags/\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@USEC_INFINITY = common dso_local global i32 0, align 4
@UID_INVALID = common dso_local global i32 0, align 4
@GID_INVALID = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @device_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_tag(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @assert(i8* %11)
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @assert(i8* %13)
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @device_get_id_filename(i8* %15, i8** %8)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %52

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i8* @strjoina(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  store i8* %24, i8** %9, align 8
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* @USEC_INFINITY, align 4
  %30 = load i32, i32* @UID_INVALID, align 4
  %31 = load i32, i32* @GID_INVALID, align 4
  %32 = call i32 @touch_file(i8* %28, i32 1, i32 %29, i32 %30, i32 %31, i32 292)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %52

37:                                               ; preds = %27
  br label %51

38:                                               ; preds = %21
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @unlink(i8* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i32, i32* @errno, align 4
  %45 = load i32, i32* @ENOENT, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @errno, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %52

50:                                               ; preds = %43, %38
  br label %51

51:                                               ; preds = %50, %37
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %47, %35, %19
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @device_get_id_filename(i8*, i8**) #1

declare dso_local i8* @strjoina(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @touch_file(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
