; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-manager.c_method_lookup_dynamic_user_by_name.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-manager.c_method_lookup_dynamic_user_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SD_BUS_ERROR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Dynamic users are only supported in the system instance.\00", align 1
@SD_BUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"User name invalid: %s\00", align 1
@ESRCH = common dso_local global i32 0, align 4
@BUS_ERROR_NO_SUCH_DYNAMIC_USER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Dynamic user %s does not exist.\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @method_lookup_dynamic_user_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_lookup_dynamic_user_by_name(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @assert(i32* %14)
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @assert(i32* %16)
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @sd_bus_message_read_basic(i32* %18, i8 signext 115, i8** %9)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %4, align 4
  br label %64

24:                                               ; preds = %3
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @MANAGER_IS_SYSTEM(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* @SD_BUS_ERROR_NOT_SUPPORTED, align 4
  %31 = call i32 (i32*, i32, i8*, ...) @sd_bus_error_setf(i32* %29, i32 %30, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  store i32 %31, i32* %4, align 4
  br label %64

32:                                               ; preds = %24
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @valid_user_group_name(i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 (i32*, i32, i8*, ...) @sd_bus_error_setf(i32* %37, i32 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  store i32 %40, i32* %4, align 4
  br label %64

41:                                               ; preds = %32
  %42 = load i32*, i32** %8, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @dynamic_user_lookup_name(i32* %42, i8* %43, i64* %10)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @ESRCH, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* @BUS_ERROR_NO_SUCH_DYNAMIC_USER, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 (i32*, i32, i8*, ...) @sd_bus_error_setf(i32* %50, i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  store i32 %53, i32* %4, align 4
  br label %64

54:                                               ; preds = %41
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %4, align 4
  br label %64

59:                                               ; preds = %54
  %60 = load i32*, i32** %5, align 8
  %61 = load i64, i64* %10, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @sd_bus_reply_method_return(i32* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %59, %57, %49, %36, %28, %22
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @sd_bus_message_read_basic(i32*, i8 signext, i8**) #1

declare dso_local i32 @MANAGER_IS_SYSTEM(i32*) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*, ...) #1

declare dso_local i32 @valid_user_group_name(i8*) #1

declare dso_local i32 @dynamic_user_lookup_name(i32*, i8*, i64*) #1

declare dso_local i32 @sd_bus_reply_method_return(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
