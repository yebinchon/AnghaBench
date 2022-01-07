; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_channel_program.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_channel_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZCP_ARG_PROGRAM = common dso_local global i32 0, align 4
@ZCP_ARG_SYNC = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ZCP_ARG_INSTRLIMIT = common dso_local global i32 0, align 4
@ZCP_DEFAULT_INSTRLIMIT = common dso_local global i64 0, align 8
@ZCP_ARG_MEMLIMIT = common dso_local global i32 0, align 4
@ZCP_DEFAULT_MEMLIMIT = common dso_local global i64 0, align 8
@ZCP_ARG_ARGLIST = common dso_local global i32 0, align 4
@zfs_lua_max_instrlimit = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@zfs_lua_max_memlimit = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @zfs_ioc_channel_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_channel_program(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %12, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* @ZCP_ARG_PROGRAM, align 4
  %15 = call i8* @fnvlist_lookup_string(i32* %13, i32 %14)
  store i8* %15, i8** %8, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* @ZCP_ARG_SYNC, align 4
  %18 = call i64 @nvlist_lookup_boolean_value(i32* %16, i32 %17, i32* %11)
  %19 = icmp ne i64 0, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @B_TRUE, align 4
  store i32 %21, i32* %11, align 4
  br label %22

22:                                               ; preds = %20, %3
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* @ZCP_ARG_INSTRLIMIT, align 4
  %25 = call i64 @nvlist_lookup_uint64(i32* %23, i32 %24, i64* %9)
  %26 = icmp ne i64 0, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i64, i64* @ZCP_DEFAULT_INSTRLIMIT, align 8
  store i64 %28, i64* %9, align 8
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @ZCP_ARG_MEMLIMIT, align 4
  %32 = call i64 @nvlist_lookup_uint64(i32* %30, i32 %31, i64* %10)
  %33 = icmp ne i64 0, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i64, i64* @ZCP_DEFAULT_MEMLIMIT, align 8
  store i64 %35, i64* %10, align 8
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* @ZCP_ARG_ARGLIST, align 4
  %39 = call i32* @fnvlist_lookup_nvpair(i32* %37, i32 %38)
  store i32* %39, i32** %12, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @zfs_lua_max_instrlimit, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42, %36
  %47 = load i32, i32* @EINVAL, align 4
  %48 = call i32 @SET_ERROR(i32 %47)
  store i32 %48, i32* %4, align 4
  br label %68

49:                                               ; preds = %42
  %50 = load i64, i64* %10, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* @zfs_lua_max_memlimit, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52, %49
  %57 = load i32, i32* @EINVAL, align 4
  %58 = call i32 @SET_ERROR(i32 %57)
  store i32 %58, i32* %4, align 4
  br label %68

59:                                               ; preds = %52
  %60 = load i8*, i8** %5, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @zcp_eval(i8* %60, i8* %61, i32 %62, i64 %63, i64 %64, i32* %65, i32* %66)
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %59, %56, %46
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i8* @fnvlist_lookup_string(i32*, i32) #1

declare dso_local i64 @nvlist_lookup_boolean_value(i32*, i32, i32*) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32* @fnvlist_lookup_nvpair(i32*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zcp_eval(i8*, i8*, i32, i64, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
