; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_mod.c_zfs_slm_deliver_event.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_mod.c_zfs_slm_deliver_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_FALSE = common dso_local global i64 0, align 8
@EC_DEV_ADD = common dso_local global i32 0, align 4
@ESC_DISK = common dso_local global i32 0, align 4
@ESC_LOFI = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@EC_ZFS = common dso_local global i32 0, align 4
@ESC_ZFS_VDEV_CHECK = common dso_local global i32 0, align 4
@EC_DEV_STATUS = common dso_local global i32 0, align 4
@ESC_DEV_DLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*)* @zfs_slm_deliver_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_slm_deliver_event(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i64, i64* @B_FALSE, align 8
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* @B_FALSE, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* @B_FALSE, align 8
  store i64 %14, i64* %11, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @EC_DEV_ADD, align 4
  %17 = call i64 @strcmp(i8* %15, i32 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @ESC_DISK, align 4
  %22 = call i64 @strcmp(i8* %20, i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i64, i64* @B_FALSE, align 8
  store i64 %25, i64* %9, align 8
  br label %35

26:                                               ; preds = %19
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* @ESC_LOFI, align 4
  %29 = call i64 @strcmp(i8* %27, i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i64, i64* @B_TRUE, align 8
  store i64 %32, i64* %9, align 8
  br label %34

33:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %83

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %34, %24
  %36 = load i64, i64* @B_FALSE, align 8
  store i64 %36, i64* %10, align 8
  br label %64

37:                                               ; preds = %3
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* @EC_ZFS, align 4
  %40 = call i64 @strcmp(i8* %38, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* @ESC_ZFS_VDEV_CHECK, align 4
  %45 = call i64 @strcmp(i8* %43, i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i64, i64* @B_TRUE, align 8
  store i64 %48, i64* %10, align 8
  br label %63

49:                                               ; preds = %42, %37
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* @EC_DEV_STATUS, align 4
  %52 = call i64 @strcmp(i8* %50, i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* @ESC_DEV_DLE, align 4
  %57 = call i64 @strcmp(i8* %55, i32 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i64, i64* @B_TRUE, align 8
  store i64 %60, i64* %11, align 8
  br label %62

61:                                               ; preds = %54, %49
  store i32 0, i32* %4, align 4
  br label %83

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %62, %47
  br label %64

64:                                               ; preds = %63, %35
  %65 = load i64, i64* %11, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @zfs_deliver_dle(i32* %68)
  store i32 %69, i32* %8, align 4
  br label %81

70:                                               ; preds = %64
  %71 = load i64, i64* %10, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @zfs_deliver_check(i32* %74)
  store i32 %75, i32* %8, align 4
  br label %80

76:                                               ; preds = %70
  %77 = load i32*, i32** %7, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @zfs_deliver_add(i32* %77, i64 %78)
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %76, %73
  br label %81

81:                                               ; preds = %80, %67
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %61, %33
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @zfs_deliver_dle(i32*) #1

declare dso_local i32 @zfs_deliver_check(i32*) #1

declare dso_local i32 @zfs_deliver_add(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
