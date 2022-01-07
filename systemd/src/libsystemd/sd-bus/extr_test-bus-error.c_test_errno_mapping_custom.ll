; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_test-bus-error.c_test_errno_mapping_custom.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_test-bus-error.c_test_errno_mapping_custom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"org.freedesktop.custom-dbus-error\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"org.freedesktop.custom-dbus-error-2\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"org.freedesktop.custom-dbus-error-x\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"org.freedesktop.custom-dbus-error-33\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"org.freedesktop.custom-dbus-error-88\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"org.freedesktop.custom-dbus-error-99\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"org.freedesktop.custom-dbus-error-77\00", align 1
@test_errors3 = common dso_local global i32 0, align 4
@test_errors4 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"org.freedesktop.custom-dbus-error-78\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"org.freedesktop.custom-dbus-error-y\00", align 1
@BUS_ERROR_NO_SUCH_UNIT = common dso_local global i8* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@test_errors_bad1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@test_errors_bad2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_errno_mapping_custom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_errno_mapping_custom() #0 {
  %1 = call i32 @sd_bus_error_set(i32* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32* null)
  %2 = icmp eq i32 %1, -5
  %3 = zext i1 %2 to i32
  %4 = call i32 @assert_se(i32 %3)
  %5 = call i32 @sd_bus_error_set(i32* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %6 = icmp eq i32 %5, -52
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert_se(i32 %7)
  %9 = call i32 @sd_bus_error_set(i32* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %10 = load i32, i32* @EIO, align 4
  %11 = sub nsw i32 0, %10
  %12 = icmp eq i32 %9, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert_se(i32 %13)
  %15 = call i32 @sd_bus_error_set(i32* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %16 = icmp eq i32 %15, -333
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert_se(i32 %17)
  %19 = call i32 @sd_bus_error_set(i32* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert_se(i32 %23)
  %25 = call i32 @sd_bus_error_set(i32* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32* null)
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert_se(i32 %29)
  %31 = call i32 @sd_bus_error_set(i32* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32* null)
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert_se(i32 %35)
  %37 = load i32, i32* @test_errors3, align 4
  %38 = call i32 @sd_bus_error_add_map(i32 %37)
  %39 = icmp sgt i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert_se(i32 %40)
  %42 = call i32 @sd_bus_error_set(i32* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %43 = icmp eq i32 %42, -888
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert_se(i32 %44)
  %46 = load i32, i32* @test_errors4, align 4
  %47 = call i32 @sd_bus_error_add_map(i32 %46)
  %48 = icmp sgt i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert_se(i32 %49)
  %51 = load i32, i32* @test_errors4, align 4
  %52 = call i32 @sd_bus_error_add_map(i32 %51)
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert_se(i32 %54)
  %56 = load i32, i32* @test_errors3, align 4
  %57 = call i32 @sd_bus_error_add_map(i32 %56)
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert_se(i32 %59)
  %61 = call i32 @sd_bus_error_set(i32* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32* null)
  %62 = icmp eq i32 %61, -999
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert_se(i32 %63)
  %65 = call i32 @sd_bus_error_set(i32* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32* null)
  %66 = icmp eq i32 %65, -777
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert_se(i32 %67)
  %69 = call i32 @sd_bus_error_set(i32* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32* null)
  %70 = icmp eq i32 %69, -778
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert_se(i32 %71)
  %73 = call i32 @sd_bus_error_set(i32* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %74 = icmp eq i32 %73, -52
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert_se(i32 %75)
  %77 = call i32 @sd_bus_error_set(i32* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32* null)
  %78 = load i32, i32* @EIO, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp eq i32 %77, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert_se(i32 %81)
  %83 = load i8*, i8** @BUS_ERROR_NO_SUCH_UNIT, align 8
  %84 = call i32 @sd_bus_error_set(i32* null, i8* %83, i32* null)
  %85 = load i32, i32* @ENOENT, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp eq i32 %84, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert_se(i32 %88)
  %90 = load i32, i32* @test_errors_bad1, align 4
  %91 = call i32 @sd_bus_error_add_map(i32 %90)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  %94 = icmp eq i32 %91, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert_se(i32 %95)
  %97 = load i32, i32* @test_errors_bad2, align 4
  %98 = call i32 @sd_bus_error_add_map(i32 %97)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp eq i32 %98, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert_se(i32 %102)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @sd_bus_error_set(i32*, i8*, i32*) #1

declare dso_local i32 @sd_bus_error_add_map(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
