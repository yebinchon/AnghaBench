; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/libzfs_input_check/extr_libzfs_input_check.c_test_hold.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/libzfs_input_check/extr_libzfs_input_check.c_test_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"libzfs_check_hold\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"holds\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"cleanup_fd\00", align 1
@zfs_fd = common dso_local global i32 0, align 4
@ZFS_IOC_HOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @test_hold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_hold(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = call i32* (...) @fnvlist_alloc()
  store i32* %8, i32** %5, align 8
  %9 = call i32* (...) @fnvlist_alloc()
  store i32* %9, i32** %6, align 8
  %10 = call i32* (...) @fnvlist_alloc()
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @fnvlist_add_string(i32* %11, i8* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @fnvlist_add_nvlist(i32* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %15)
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @zfs_fd, align 4
  %19 = call i32 @fnvlist_add_int32(i32* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @ZFS_IOC_HOLD, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @IOC_INPUT_TEST(i32 %20, i8* %21, i32* %22, i32* %23, i32 0)
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @nvlist_free(i32* %25)
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @nvlist_free(i32* %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @nvlist_free(i32* %29)
  ret void
}

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @fnvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @fnvlist_add_nvlist(i32*, i8*, i32*) #1

declare dso_local i32 @fnvlist_add_int32(i32*, i8*, i32) #1

declare dso_local i32 @IOC_INPUT_TEST(i32, i8*, i32*, i32*, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
