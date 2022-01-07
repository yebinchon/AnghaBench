; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_send.c_dmu_adjust_send_estimate_for_indirects.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_send.c_dmu_adjust_send_estimate_for_indirects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@zfs_override_estimate_recordsize = common dso_local global i64 0, align 8
@DMU_OST_ZVOL = common dso_local global i64 0, align 8
@ZFS_PROP_VOLBLOCKSIZE = common dso_local global i32 0, align 4
@ZFS_PROP_RECORDSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i64, i32*)* @dmu_adjust_send_estimate_for_indirects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmu_adjust_send_estimate_for_indirects(i32* %0, i32 %1, i32 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @dmu_objset_from_ds(i32* %17, %struct.TYPE_5__** %16)
  %19 = call i32 @VERIFY0(i32 %18)
  %20 = load i64, i64* @zfs_override_estimate_recordsize, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i64, i64* @zfs_override_estimate_recordsize, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %14, align 4
  br label %44

25:                                               ; preds = %5
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DMU_OST_ZVOL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* @ZFS_PROP_VOLBLOCKSIZE, align 4
  %36 = call i32 @zfs_prop_to_name(i32 %35)
  %37 = call i32 @dsl_prop_get_int_ds(i32* %34, i32 %36, i32* %14)
  store i32 %37, i32* %12, align 4
  br label %43

38:                                               ; preds = %25
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* @ZFS_PROP_RECORDSIZE, align 4
  %41 = call i32 @zfs_prop_to_name(i32 %40)
  %42 = call i32 @dsl_prop_get_int_ds(i32* %39, i32 %41, i32* %14)
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %38, %33
  br label %44

44:                                               ; preds = %43, %22
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %6, align 4
  br label %77

49:                                               ; preds = %44
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %14, align 4
  %52 = sdiv i32 %50, %51
  store i32 %52, i32* %15, align 4
  %53 = load i64, i64* %10, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %9, align 4
  br label %59

57:                                               ; preds = %49
  %58 = load i32, i32* %8, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 4
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = sub i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 4
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = add i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32*, i32** %11, align 8
  store i32 %75, i32* %76, align 4
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %59, %47
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dmu_objset_from_ds(i32*, %struct.TYPE_5__**) #1

declare dso_local i32 @dsl_prop_get_int_ds(i32*, i32, i32*) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
