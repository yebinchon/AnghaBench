; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/libzfs_input_check/extr_libzfs_input_check.c_test_channel_program.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/libzfs_input_check/extr_libzfs_input_check.c_test_channel_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"arg = ...\0Aargv = arg[\22argv\22]\0Areturn argv[1]\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Hello World!\00", align 1
@__const.test_channel_program.argv = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)], align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"program\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"argv\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"arg\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"instrlimit\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"memlimit\00", align 1
@ZFS_IOC_CHANNEL_PROGRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_channel_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_channel_program(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [1 x i8*], align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %8 = bitcast [1 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([1 x i8*]* @__const.test_channel_program.argv to i8*), i64 8, i1 false)
  %9 = call i32* (...) @fnvlist_alloc()
  store i32* %9, i32** %5, align 8
  %10 = call i32* (...) @fnvlist_alloc()
  store i32* %10, i32** %6, align 8
  %11 = call i32* (...) @fnvlist_alloc()
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @fnvlist_add_string(i32* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %13)
  %15 = load i32*, i32** %7, align 8
  %16 = getelementptr inbounds [1 x i8*], [1 x i8*]* %4, i64 0, i64 0
  %17 = call i32 @fnvlist_add_string_array(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %16, i32 1)
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @fnvlist_add_nvlist(i32* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %19)
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @B_TRUE, align 4
  %23 = call i32 @fnvlist_add_boolean_value(i32* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %22)
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @fnvlist_add_uint64(i32* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 1000000)
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @fnvlist_add_uint64(i32* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 8388608)
  %28 = load i32, i32* @ZFS_IOC_CHANNEL_PROGRAM, align 4
  %29 = load i8*, i8** %2, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @IOC_INPUT_TEST(i32 %28, i8* %29, i32* %30, i32* %31, i32 0)
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @nvlist_free(i32* %33)
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @nvlist_free(i32* %35)
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @nvlist_free(i32* %37)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @fnvlist_alloc(...) #2

declare dso_local i32 @fnvlist_add_string(i32*, i8*, i8*) #2

declare dso_local i32 @fnvlist_add_string_array(i32*, i8*, i8**, i32) #2

declare dso_local i32 @fnvlist_add_nvlist(i32*, i8*, i32*) #2

declare dso_local i32 @fnvlist_add_boolean_value(i32*, i8*, i32) #2

declare dso_local i32 @fnvlist_add_uint64(i32*, i8*, i32) #2

declare dso_local i32 @IOC_INPUT_TEST(i32, i8*, i32*, i32*, i32) #2

declare dso_local i32 @nvlist_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
