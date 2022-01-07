; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_dsl_prop_set_uint64.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_dsl_prop_set_uint64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ZPROP_SRC_NONE = common dso_local global i32 0, align 4
@ZPROP_SRC_LOCAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@UMEM_NOFAIL = common dso_local global i32 0, align 4
@ztest_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s %s = %llu at '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%s %s = %s at '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64, i64)* @ztest_dsl_prop_set_uint64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ztest_dsl_prop_set_uint64(i8* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i8* @zfs_prop_to_name(i32 %16)
  store i8* %17, i8** %10, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @ZPROP_SRC_NONE, align 4
  br label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @ZPROP_SRC_LOCAL, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @dsl_prop_set_int(i8* %18, i8* %19, i32 %27, i64 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* @ENOSPC, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32, i32* @FTAG, align 4
  %35 = call i32 @ztest_record_enospc(i32 %34)
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %5, align 4
  br label %74

37:                                               ; preds = %26
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @ASSERT0(i32 %38)
  %40 = load i32, i32* @MAXPATHLEN, align 4
  %41 = load i32, i32* @UMEM_NOFAIL, align 4
  %42 = call i8* @umem_alloc(i32 %40, i32 %41)
  store i8* %42, i8** %12, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = call i32 @dsl_prop_get_integer(i8* %43, i8* %44, i64* %13, i8* %45)
  %47 = call i32 @VERIFY0(i32 %46)
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ztest_opts, i32 0, i32 0), align 4
  %49 = icmp sge i32 %48, 6
  br i1 %49, label %50, label %69

50:                                               ; preds = %37
  %51 = load i32, i32* %7, align 4
  %52 = load i64, i64* %13, align 8
  %53 = call i32 @zfs_prop_index_to_string(i32 %51, i64 %52, i8** %11)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load i8*, i8** %6, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %57, i8* %58, i64 %59, i8* %60)
  br label %68

62:                                               ; preds = %50
  %63 = load i8*, i8** %6, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %63, i8* %64, i8* %65, i8* %66)
  br label %68

68:                                               ; preds = %62, %56
  br label %69

69:                                               ; preds = %68, %37
  %70 = load i8*, i8** %12, align 8
  %71 = load i32, i32* @MAXPATHLEN, align 4
  %72 = call i32 @umem_free(i8* %70, i32 %71)
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %69, %33
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i8* @zfs_prop_to_name(i32) #1

declare dso_local i32 @dsl_prop_set_int(i8*, i8*, i32, i64) #1

declare dso_local i32 @ztest_record_enospc(i32) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i8* @umem_alloc(i32, i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_prop_get_integer(i8*, i8*, i64*, i8*) #1

declare dso_local i32 @zfs_prop_index_to_string(i32, i64, i8**) #1

declare dso_local i32 @printf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @umem_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
