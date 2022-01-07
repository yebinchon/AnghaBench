; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_fm.c_fm_fmri_hc_set_common.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_fm.c_fm_fmri_hc_set_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@FM_HC_SCHEME_VERSION = common dso_local global i32 0, align 4
@erpt_kstat_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@FM_VERSION = common dso_local global i32 0, align 4
@FM_FMRI_SCHEME = common dso_local global i32 0, align 4
@FM_FMRI_SCHEME_HC = common dso_local global i32 0, align 4
@FM_FMRI_AUTHORITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @fm_fmri_hc_set_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm_fmri_hc_set_common(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @FM_HC_SCHEME_VERSION, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = call i32 @atomic_inc_64(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erpt_kstat_data, i32 0, i32 0, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  br label %39

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @FM_VERSION, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @nvlist_add_uint8(i32* %14, i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @FM_FMRI_SCHEME, align 4
  %22 = load i32, i32* @FM_FMRI_SCHEME_HC, align 4
  %23 = call i64 @nvlist_add_string(i32* %20, i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19, %13
  %26 = call i32 @atomic_inc_64(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erpt_kstat_data, i32 0, i32 0, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  br label %39

27:                                               ; preds = %19
  %28 = load i32*, i32** %7, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @FM_FMRI_AUTHORITY, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = call i64 @nvlist_add_nvlist(i32* %31, i32 %32, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 @atomic_inc_64(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erpt_kstat_data, i32 0, i32 0, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  br label %39

38:                                               ; preds = %30, %27
  store i32 1, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %36, %25, %11
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @atomic_inc_64(i32*) #1

declare dso_local i64 @nvlist_add_uint8(i32*, i32, i32) #1

declare dso_local i64 @nvlist_add_string(i32*, i32, i32) #1

declare dso_local i64 @nvlist_add_nvlist(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
