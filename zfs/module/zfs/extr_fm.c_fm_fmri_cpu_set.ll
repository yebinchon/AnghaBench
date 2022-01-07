; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_fm.c_fm_fmri_cpu_set.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_fm.c_fm_fmri_cpu_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@erpt_kstat_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@CPU_SCHEME_VERSION1 = common dso_local global i32 0, align 4
@FM_VERSION = common dso_local global i32 0, align 4
@FM_FMRI_SCHEME = common dso_local global i32 0, align 4
@FM_FMRI_SCHEME_CPU = common dso_local global i8* null, align 8
@FM_FMRI_AUTHORITY = common dso_local global i32 0, align 4
@FM_FMRI_CPU_ID = common dso_local global i32 0, align 4
@FM_FMRI_CPU_MASK = common dso_local global i32 0, align 4
@FM_FMRI_CPU_SERIAL_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fm_fmri_cpu_set(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  store i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erpt_kstat_data, i32 0, i32 0, i32 0, i32 0), i32** %13, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @CPU_SCHEME_VERSION1, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = load i32*, i32** %13, align 8
  %19 = call i32 @atomic_inc_64(i32* %18)
  br label %84

20:                                               ; preds = %6
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* @FM_VERSION, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @nvlist_add_uint8(i32* %21, i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32*, i32** %13, align 8
  %28 = call i32 @atomic_inc_64(i32* %27)
  br label %84

29:                                               ; preds = %20
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* @FM_FMRI_SCHEME, align 4
  %32 = load i8*, i8** @FM_FMRI_SCHEME_CPU, align 8
  %33 = call i64 @nvlist_add_string(i32* %30, i32 %31, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32*, i32** %13, align 8
  %37 = call i32 @atomic_inc_64(i32* %36)
  br label %84

38:                                               ; preds = %29
  %39 = load i32*, i32** %9, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* @FM_FMRI_AUTHORITY, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = call i64 @nvlist_add_nvlist(i32* %42, i32 %43, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32*, i32** %13, align 8
  %49 = call i32 @atomic_inc_64(i32* %48)
  br label %50

50:                                               ; preds = %47, %41, %38
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* @FM_FMRI_CPU_ID, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i64 @nvlist_add_uint32(i32* %51, i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32*, i32** %13, align 8
  %58 = call i32 @atomic_inc_64(i32* %57)
  br label %59

59:                                               ; preds = %56, %50
  %60 = load i32*, i32** %11, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* @FM_FMRI_CPU_MASK, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @nvlist_add_uint8(i32* %63, i32 %64, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32*, i32** %13, align 8
  %71 = call i32 @atomic_inc_64(i32* %70)
  br label %72

72:                                               ; preds = %69, %62, %59
  %73 = load i8*, i8** %12, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %72
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* @FM_FMRI_CPU_SERIAL_ID, align 4
  %78 = load i8*, i8** %12, align 8
  %79 = call i64 @nvlist_add_string(i32* %76, i32 %77, i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75, %72
  %82 = load i32*, i32** %13, align 8
  %83 = call i32 @atomic_inc_64(i32* %82)
  br label %84

84:                                               ; preds = %17, %26, %35, %81, %75
  ret void
}

declare dso_local i32 @atomic_inc_64(i32*) #1

declare dso_local i64 @nvlist_add_uint8(i32*, i32, i32) #1

declare dso_local i64 @nvlist_add_string(i32*, i32, i8*) #1

declare dso_local i64 @nvlist_add_nvlist(i32*, i32, i32*) #1

declare dso_local i64 @nvlist_add_uint32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
