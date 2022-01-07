; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_print_error_log.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_print_error_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"errors: Permanent errors have been detected in the following files:\0A\0A\00", align 1
@ZPOOL_ERR_DATASET = common dso_local global i32 0, align 4
@ZPOOL_ERR_OBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"%7s %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @print_error_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_error_log(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %10 = load i32, i32* @MAXPATHLEN, align 4
  %11 = mul nsw i32 %10, 2
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %6, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i64 @zpool_get_errlog(i32* %13, i32** %3)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %57

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* %6, align 8
  %20 = call i8* @safe_malloc(i64 %19)
  store i8* %20, i8** %5, align 8
  store i32* null, i32** %4, align 8
  br label %21

21:                                               ; preds = %26, %17
  %22 = load i32*, i32** %3, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32* @nvlist_next_nvpair(i32* %22, i32* %23)
  store i32* %24, i32** %4, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %52

26:                                               ; preds = %21
  %27 = load i32*, i32** %4, align 8
  %28 = call i64 @nvpair_value_nvlist(i32* %27, i32** %7)
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @verify(i32 %30)
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* @ZPOOL_ERR_DATASET, align 4
  %34 = call i64 @nvlist_lookup_uint64(i32* %32, i32 %33, i32* %8)
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @verify(i32 %36)
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* @ZPOOL_ERR_OBJECT, align 4
  %40 = call i64 @nvlist_lookup_uint64(i32* %38, i32 %39, i32* %9)
  %41 = icmp eq i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @verify(i32 %42)
  %44 = load i32*, i32** %2, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @zpool_obj_to_path(i32* %44, i32 %45, i32 %46, i8* %47, i64 %48)
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  br label %21

52:                                               ; preds = %21
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @free(i8* %53)
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @nvlist_free(i32* %55)
  br label %57

57:                                               ; preds = %52, %16
  ret void
}

declare dso_local i64 @zpool_get_errlog(i32*, i32**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @safe_malloc(i64) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvpair_value_nvlist(i32*, i32**) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i32*) #1

declare dso_local i32 @zpool_obj_to_path(i32*, i32, i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
