; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_destroy_snaps_nvl.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_destroy_snaps_nvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cannot destroy snapshots\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot destroy snapshot %s\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"snapshot is cloned\00", align 1
@EZFS_EXISTS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_destroy_snaps_nvl(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [1024 x i8], align 16
  %12 = alloca [1024 x i8], align 16
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @lzc_destroy_snaps(i32* %13, i32 %14, i32** %9)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @nvlist_free(i32* %19)
  store i32 0, i32* %4, align 4
  br label %72

21:                                               ; preds = %3
  %22 = load i32*, i32** %9, align 8
  %23 = call i64 @nvlist_empty(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %27 = load i32, i32* @TEXT_DOMAIN, align 4
  %28 = call i8* @dgettext(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %26, i32 1024, i8* %28)
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %33 = call i32 @zfs_standard_error(i32* %30, i32 %31, i8* %32)
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %25, %21
  %35 = load i32*, i32** %9, align 8
  %36 = call i32* @nvlist_next_nvpair(i32* %35, i32* null)
  store i32* %36, i32** %10, align 8
  br label %37

37:                                               ; preds = %64, %34
  %38 = load i32*, i32** %10, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %68

40:                                               ; preds = %37
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %42 = load i32, i32* @TEXT_DOMAIN, align 4
  %43 = call i8* @dgettext(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @nvpair_name(i32* %44)
  %46 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %41, i32 1024, i8* %43, i32 %45)
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @fnvpair_value_int32(i32* %47)
  switch i32 %48, label %58 [
    i32 128, label %49
  ]

49:                                               ; preds = %40
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* @TEXT_DOMAIN, align 4
  %52 = call i8* @dgettext(i32 %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %53 = call i32 @zfs_error_aux(i32* %50, i8* %52)
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* @EZFS_EXISTS, align 4
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %57 = call i32 @zfs_error(i32* %54, i32 %55, i8* %56)
  store i32 %57, i32* %8, align 4
  br label %63

58:                                               ; preds = %40
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* @errno, align 4
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %62 = call i32 @zfs_standard_error(i32* %59, i32 %60, i8* %61)
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %58, %49
  br label %64

64:                                               ; preds = %63
  %65 = load i32*, i32** %9, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = call i32* @nvlist_next_nvpair(i32* %65, i32* %66)
  store i32* %67, i32** %10, align 8
  br label %37

68:                                               ; preds = %37
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @nvlist_free(i32* %69)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %68, %18
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @lzc_destroy_snaps(i32*, i32, i32**) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i64 @nvlist_empty(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i8* @dgettext(i32, i8*) #1

declare dso_local i32 @zfs_standard_error(i32*, i32, i8*) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i32 @nvpair_name(i32*) #1

declare dso_local i32 @fnvpair_value_int32(i32*) #1

declare dso_local i32 @zfs_error_aux(i32*, i8*) #1

declare dso_local i32 @zfs_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
