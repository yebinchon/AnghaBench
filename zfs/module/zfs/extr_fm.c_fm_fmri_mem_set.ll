; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_fm.c_fm_fmri_mem_set.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_fm.c_fm_fmri_mem_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MEM_SCHEME_VERSION0 = common dso_local global i32 0, align 4
@erpt_kstat_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@FM_VERSION = common dso_local global i32 0, align 4
@FM_FMRI_SCHEME = common dso_local global i32 0, align 4
@FM_FMRI_SCHEME_MEM = common dso_local global i8* null, align 8
@FM_FMRI_AUTHORITY = common dso_local global i32 0, align 4
@FM_FMRI_MEM_UNUM = common dso_local global i32 0, align 4
@FM_FMRI_MEM_SERIAL_ID = common dso_local global i32 0, align 4
@FM_FMRI_MEM_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fm_fmri_mem_set(i32* %0, i32 %1, i32* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @MEM_SCHEME_VERSION0, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %6
  %17 = call i32 @atomic_inc_64(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erpt_kstat_data, i32 0, i32 0, i32 0, i32 0))
  br label %84

18:                                               ; preds = %6
  %19 = load i8*, i8** %11, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = load i64, i64* %12, align 8
  %23 = icmp ne i64 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 @atomic_inc_64(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erpt_kstat_data, i32 0, i32 0, i32 0, i32 0))
  br label %84

26:                                               ; preds = %21, %18
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* @FM_VERSION, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @nvlist_add_uint8(i32* %27, i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 @atomic_inc_64(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erpt_kstat_data, i32 0, i32 0, i32 0, i32 0))
  br label %84

34:                                               ; preds = %26
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* @FM_FMRI_SCHEME, align 4
  %37 = load i8*, i8** @FM_FMRI_SCHEME_MEM, align 8
  %38 = call i64 @nvlist_add_string(i32* %35, i32 %36, i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 @atomic_inc_64(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erpt_kstat_data, i32 0, i32 0, i32 0, i32 0))
  br label %84

42:                                               ; preds = %34
  %43 = load i32*, i32** %9, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* @FM_FMRI_AUTHORITY, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = call i64 @nvlist_add_nvlist(i32* %46, i32 %47, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = call i32 @atomic_inc_64(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erpt_kstat_data, i32 0, i32 0, i32 0, i32 0))
  br label %53

53:                                               ; preds = %51, %45
  br label %54

54:                                               ; preds = %53, %42
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* @FM_FMRI_MEM_UNUM, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = call i64 @nvlist_add_string(i32* %55, i32 %56, i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = call i32 @atomic_inc_64(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erpt_kstat_data, i32 0, i32 0, i32 0, i32 0))
  br label %62

62:                                               ; preds = %60, %54
  %63 = load i8*, i8** %11, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %84

65:                                               ; preds = %62
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* @FM_FMRI_MEM_SERIAL_ID, align 4
  %68 = call i64 @nvlist_add_string_array(i32* %66, i32 %67, i8** %11, i32 1)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = call i32 @atomic_inc_64(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erpt_kstat_data, i32 0, i32 0, i32 0, i32 0))
  br label %72

72:                                               ; preds = %70, %65
  %73 = load i64, i64* %12, align 8
  %74 = icmp ne i64 %73, -1
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* @FM_FMRI_MEM_OFFSET, align 4
  %78 = load i64, i64* %12, align 8
  %79 = call i64 @nvlist_add_uint64(i32* %76, i32 %77, i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = call i32 @atomic_inc_64(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erpt_kstat_data, i32 0, i32 0, i32 0, i32 0))
  br label %83

83:                                               ; preds = %81, %75, %72
  br label %84

84:                                               ; preds = %16, %24, %32, %40, %83, %62
  ret void
}

declare dso_local i32 @atomic_inc_64(i32*) #1

declare dso_local i64 @nvlist_add_uint8(i32*, i32, i32) #1

declare dso_local i64 @nvlist_add_string(i32*, i32, i8*) #1

declare dso_local i64 @nvlist_add_nvlist(i32*, i32, i32*) #1

declare dso_local i64 @nvlist_add_string_array(i32*, i32, i8**, i32) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
