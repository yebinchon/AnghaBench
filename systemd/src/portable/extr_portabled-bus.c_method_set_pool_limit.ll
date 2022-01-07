; ModuleID = '/home/carl/AnghaBench/systemd/src/portable/extr_portabled-bus.c_method_set_pool_limit.c'
source_filename = "/home/carl/AnghaBench/systemd/src/portable/extr_portabled-bus.c_method_set_pool_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"t\00", align 1
@SD_BUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"New limit out of range\00", align 1
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"org.freedesktop.portable1.manage-images\00", align 1
@UID_INVALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"/var/lib/portables\00", align 1
@ENOTTY = common dso_local global i32 0, align 4
@SD_BUS_ERROR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Quota is only supported on btrfs.\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Failed to adjust quota limit: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @method_set_pool_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_set_pool_limit(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @assert(i32* %13)
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @sd_bus_message_read(i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %68

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @FILE_SIZE_VALID_OR_INFINITY(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %28 = call i32 @sd_bus_error_setf(i32* %26, i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 %28, i32* %4, align 4
  br label %68

29:                                               ; preds = %21
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %32 = load i32, i32* @UID_INVALID, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @bus_verify_polkit_async(i32* %30, i32 %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 0, i32 %32, i32* %34, i32* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %68

41:                                               ; preds = %29
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 1, i32* %4, align 4
  br label %68

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @btrfs_qgroup_set_limit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @btrfs_subvol_set_subtree_quota_limit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @ENOTTY, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* @SD_BUS_ERROR_NOT_SUPPORTED, align 4
  %57 = call i32 @sd_bus_error_setf(i32* %55, i32 %56, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  store i32 %57, i32* %4, align 4
  br label %68

58:                                               ; preds = %45
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @sd_bus_error_set_errnof(i32* %62, i32 %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  store i32 %64, i32* %4, align 4
  br label %68

65:                                               ; preds = %58
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @sd_bus_reply_method_return(i32* %66, i32* null)
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %65, %61, %54, %44, %39, %25, %19
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i32*) #1

declare dso_local i32 @FILE_SIZE_VALID_OR_INFINITY(i32) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*) #1

declare dso_local i32 @bus_verify_polkit_async(i32*, i32, i8*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @btrfs_qgroup_set_limit(i8*, i32, i32) #1

declare dso_local i32 @btrfs_subvol_set_subtree_quota_limit(i8*, i32, i32) #1

declare dso_local i32 @sd_bus_error_set_errnof(i32*, i32, i8*) #1

declare dso_local i32 @sd_bus_reply_method_return(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
