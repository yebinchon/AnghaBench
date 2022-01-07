; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_fm.c_fm_fmri_dev_set.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_fm.c_fm_fmri_dev_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@DEV_SCHEME_VERSION0 = common dso_local global i32 0, align 4
@erpt_kstat_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@FM_VERSION = common dso_local global i32 0, align 4
@FM_FMRI_SCHEME = common dso_local global i32 0, align 4
@FM_FMRI_SCHEME_DEV = common dso_local global i8* null, align 8
@FM_FMRI_AUTHORITY = common dso_local global i32 0, align 4
@FM_FMRI_DEV_PATH = common dso_local global i32 0, align 4
@FM_FMRI_DEV_ID = common dso_local global i32 0, align 4
@FM_FMRI_DEV_TGTPTLUN0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fm_fmri_dev_set(i32* %0, i32 %1, i32* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @DEV_SCHEME_VERSION0, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = call i32 @atomic_inc_64(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erpt_kstat_data, i32 0, i32 0, i32 0, i32 0))
  br label %72

19:                                               ; preds = %6
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* @FM_VERSION, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @nvlist_add_uint8(i32* %20, i32 %21, i32 %22)
  %24 = load i32, i32* %13, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %13, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* @FM_FMRI_SCHEME, align 4
  %28 = load i8*, i8** @FM_FMRI_SCHEME_DEV, align 8
  %29 = call i32 @nvlist_add_string(i32* %26, i32 %27, i8* %28)
  %30 = load i32, i32* %13, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %13, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %19
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* @FM_FMRI_AUTHORITY, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @nvlist_add_nvlist(i32* %35, i32 %36, i32* %37)
  %39 = load i32, i32* %13, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %34, %19
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* @FM_FMRI_DEV_PATH, align 4
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @nvlist_add_string(i32* %42, i32 %43, i8* %44)
  %46 = load i32, i32* %13, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %13, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %41
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* @FM_FMRI_DEV_ID, align 4
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 @nvlist_add_string(i32* %51, i32 %52, i8* %53)
  %55 = load i32, i32* %13, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %50, %41
  %58 = load i8*, i8** %12, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* @FM_FMRI_DEV_TGTPTLUN0, align 4
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 @nvlist_add_string(i32* %61, i32 %62, i8* %63)
  %65 = load i32, i32* %13, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %60, %57
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 @atomic_inc_64(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erpt_kstat_data, i32 0, i32 0, i32 0, i32 0))
  br label %72

72:                                               ; preds = %17, %70, %67
  ret void
}

declare dso_local i32 @atomic_inc_64(i32*) #1

declare dso_local i32 @nvlist_add_uint8(i32*, i32, i32) #1

declare dso_local i32 @nvlist_add_string(i32*, i32, i8*) #1

declare dso_local i32 @nvlist_add_nvlist(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
