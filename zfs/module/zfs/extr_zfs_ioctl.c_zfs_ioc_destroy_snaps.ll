; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_destroy_snaps.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_destroy_snaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"snaps\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"defer\00", align 1
@EXDEV = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @zfs_ioc_destroy_snaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_destroy_snaps(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32* @fnvlist_lookup_nvlist(i32* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @nvlist_exists(i32* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %17, i32* %11, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strlen(i8* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = call i32* @nvlist_next_nvpair(i32* %20, i32* null)
  store i32* %21, i32** %10, align 8
  br label %22

22:                                               ; preds = %69, %3
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %73

25:                                               ; preds = %22
  %26 = load i32*, i32** %10, align 8
  %27 = call i8* @nvpair_name(i32* %26)
  store i8* %27, i8** %13, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @strncmp(i8* %28, i8* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %25
  %34 = load i8*, i8** %13, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 47
  br i1 %40, label %41, label %52

41:                                               ; preds = %33
  %42 = load i8*, i8** %13, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 64
  br i1 %48, label %49, label %52

49:                                               ; preds = %41, %25
  %50 = load i32, i32* @EXDEV, align 4
  %51 = call i32 @SET_ERROR(i32 %50)
  store i32 %51, i32* %4, align 4
  br label %78

52:                                               ; preds = %41, %33
  %53 = load i32*, i32** %10, align 8
  %54 = call i8* @nvpair_name(i32* %53)
  %55 = call i32 @zfs_unmount_snap(i8* %54)
  %56 = load i8*, i8** %13, align 8
  %57 = load i32, i32* @FTAG, align 4
  %58 = call i64 @spa_open(i8* %56, i32** %12, i32 %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %52
  %61 = load i32*, i32** %12, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = load i32, i32* @B_TRUE, align 4
  %64 = call i32 @zvol_remove_minors(i32* %61, i8* %62, i32 %63)
  %65 = load i32*, i32** %12, align 8
  %66 = load i32, i32* @FTAG, align 4
  %67 = call i32 @spa_close(i32* %65, i32 %66)
  br label %68

68:                                               ; preds = %60, %52
  br label %69

69:                                               ; preds = %68
  %70 = load i32*, i32** %9, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = call i32* @nvlist_next_nvpair(i32* %70, i32* %71)
  store i32* %72, i32** %10, align 8
  br label %22

73:                                               ; preds = %22
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @dsl_destroy_snapshots_nvl(i32* %74, i32 %75, i32* %76)
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %73, %49
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32* @fnvlist_lookup_nvlist(i32*, i8*) #1

declare dso_local i32 @nvlist_exists(i32*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zfs_unmount_snap(i8*) #1

declare dso_local i64 @spa_open(i8*, i32**, i32) #1

declare dso_local i32 @zvol_remove_minors(i32*, i8*, i32) #1

declare dso_local i32 @spa_close(i32*, i32) #1

declare dso_local i32 @dsl_destroy_snapshots_nvl(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
