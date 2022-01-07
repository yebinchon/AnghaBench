; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-manager.c_verify_run_space.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-manager.c_verify_run_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statvfs = type { i64, i64 }

@.str = private unnamed_addr constant [13 x i8] c"/run/systemd\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to statvfs(/run/systemd): %m\00", align 1
@RELOAD_DISK_SPACE_MIN = common dso_local global i32 0, align 4
@FORMAT_BYTES_MAX = common dso_local global i32 0, align 4
@BUS_ERROR_DISK_FULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [111 x i8] c"%s, not enough space available on /run/systemd. Currently, %s are free, but a safety buffer of %s is enforced.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @verify_run_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_run_space(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.statvfs, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = call i64 @statvfs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.statvfs* %6)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 @sd_bus_error_set_errnof(i32* %14, i32 %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 %16, i32* %3, align 4
  br label %48

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %6, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %6, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = mul nsw i32 %20, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @RELOAD_DISK_SPACE_MIN, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %17
  %29 = load i32, i32* @FORMAT_BYTES_MAX, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %8, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %9, align 8
  %33 = load i32, i32* @FORMAT_BYTES_MAX, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %10, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* @BUS_ERROR_DISK_FULL, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = trunc i64 %30 to i32
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @format_bytes(i8* %32, i32 %39, i32 %40)
  %42 = trunc i64 %34 to i32
  %43 = load i32, i32* @RELOAD_DISK_SPACE_MIN, align 4
  %44 = call i32 @format_bytes(i8* %35, i32 %42, i32 %43)
  %45 = call i32 @sd_bus_error_setf(i32* %36, i32 %37, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.2, i64 0, i64 0), i8* %38, i32 %41, i32 %44)
  store i32 %45, i32* %3, align 4
  %46 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %46)
  br label %48

47:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %28, %13
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @statvfs(i8*, %struct.statvfs*) #1

declare dso_local i32 @sd_bus_error_set_errnof(i32*, i32, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @format_bytes(i8*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
