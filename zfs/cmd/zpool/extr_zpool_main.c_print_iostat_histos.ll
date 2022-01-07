; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_print_iostat_histos.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_print_iostat_histos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i64 }
%struct.stat_array = type { i32 }

@vsx_type_to_nvlist = common dso_local global i8*** null, align 8
@histo_to_title = common dso_local global i32* null, align 8
@iostat_bottom_labels = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32*, double, i8*)* @print_iostat_histos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_iostat_histos(%struct.TYPE_5__* %0, i32* %1, i32* %2, double %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca double, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.stat_array*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store double %3, double* %9, align 8
  store i8* %4, i8** %10, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @IOS_HISTO_IDX(i32 %20)
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %14, align 4
  %23 = load i8***, i8**** @vsx_type_to_nvlist, align 8
  %24 = load i32, i32* %14, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8**, i8*** %23, i64 %25
  %27 = load i8**, i8*** %26, align 8
  store i8** %27, i8*** %16, align 8
  %28 = load i8**, i8*** %16, align 8
  %29 = call i32 @str_array_len(i8** %28)
  store i32 %29, i32* %17, align 4
  %30 = load i8**, i8*** %16, align 8
  %31 = load i32, i32* %17, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call %struct.stat_array* @calc_and_alloc_stats_ex(i8** %30, i32 %31, i32* %32, i32* %33)
  store %struct.stat_array* %34, %struct.stat_array** %15, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %5
  %40 = load %struct.stat_array*, %struct.stat_array** %15, align 8
  %41 = load i32, i32* %17, align 4
  %42 = call i32 @stat_histo_max(%struct.stat_array* %40, i32 %41)
  %43 = call i64 @log10(i32 %42)
  %44 = trunc i64 %43 to i32
  %45 = add i32 %44, 1
  %46 = call i32 @MAX(i32 5, i32 %45)
  store i32 %46, i32* %11, align 4
  br label %48

47:                                               ; preds = %5
  store i32 5, i32* %11, align 4
  br label %48

48:                                               ; preds = %47, %39
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** @histo_to_title, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @IOS_HISTO_IDX(i32 %55)
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @strlen(i32 %58)
  %60 = call i32 @MAX(i32 %51, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %11, align 4
  %63 = add i32 %62, 2
  %64 = load i32*, i32** @iostat_bottom_labels, align 8
  %65 = load i32, i32* %14, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @label_array_len(i32 %68)
  %70 = mul i32 %63, %69
  %71 = add i32 %61, %70
  store i32 %71, i32* %13, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %48
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %77)
  br label %84

79:                                               ; preds = %48
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @print_iostat_header_impl(%struct.TYPE_5__* %80, i32 %81, i8* %82)
  br label %84

84:                                               ; preds = %79, %76
  %85 = load %struct.stat_array*, %struct.stat_array** %15, align 8
  %86 = load i32, i32* %17, align 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load double, double* %9, align 8
  %91 = call i32 @print_iostat_histo(%struct.stat_array* %85, i32 %86, %struct.TYPE_5__* %87, i32 %88, i32 %89, double %90)
  %92 = load %struct.stat_array*, %struct.stat_array** %15, align 8
  %93 = load i32, i32* %17, align 4
  %94 = call i32 @free_calc_stats(%struct.stat_array* %92, i32 %93)
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %84
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @print_solid_separator(i32 %100)
  br label %102

102:                                              ; preds = %99, %84
  ret void
}

declare dso_local i64 @IOS_HISTO_IDX(i32) #1

declare dso_local i32 @str_array_len(i8**) #1

declare dso_local %struct.stat_array* @calc_and_alloc_stats_ex(i8**, i32, i32*, i32*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i64 @log10(i32) #1

declare dso_local i32 @stat_histo_max(%struct.stat_array*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @label_array_len(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @print_iostat_header_impl(%struct.TYPE_5__*, i32, i8*) #1

declare dso_local i32 @print_iostat_histo(%struct.stat_array*, i32, %struct.TYPE_5__*, i32, i32, double) #1

declare dso_local i32 @free_calc_stats(%struct.stat_array*, i32) #1

declare dso_local i32 @print_solid_separator(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
