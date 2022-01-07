; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-kstat.c_kstat_seq_start.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-kstat.c_kstat_seq_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.TYPE_4__ = type { i64, i64, i32, i64, i32, i32 (%struct.TYPE_4__*, i32)*, i32, i32, i32 }

@KS_MAGIC = common dso_local global i64 0, align 8
@KSTAT_TYPE_RAW = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@KSTAT_READ = common dso_local global i32 0, align 4
@KSTAT_FLAG_NO_HEADERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.seq_file*, i64*)* @kstat_seq_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @kstat_seq_start(%struct.seq_file* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %7, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @KS_MAGIC, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @mutex_enter(i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @KSTAT_TYPE_RAW, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %2
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @KM_SLEEP, align 4
  %38 = call i32 @vmem_alloc(i32 %36, i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %30, %2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 5
  %44 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %43, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %46 = load i32, i32* @KSTAT_READ, align 4
  %47 = call i32 %44(%struct.TYPE_4__* %45, i32 %46)
  %48 = call i32 (...) @gethrtime()
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @KSTAT_FLAG_NO_HEADERS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %41
  %58 = load i64, i64* %6, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %62 = call i64 @kstat_seq_show_headers(%struct.seq_file* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i8* null, i8** %3, align 8
  br label %76

65:                                               ; preds = %60, %57, %41
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp sge i64 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i8* null, i8** %3, align 8
  br label %76

72:                                               ; preds = %65
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %74 = load i64, i64* %6, align 8
  %75 = call i8* @kstat_seq_data_addr(%struct.TYPE_4__* %73, i64 %74)
  store i8* %75, i8** %3, align 8
  br label %76

76:                                               ; preds = %72, %71, %64
  %77 = load i8*, i8** %3, align 8
  ret i8* %77
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @mutex_enter(i32) #1

declare dso_local i32 @vmem_alloc(i32, i32) #1

declare dso_local i32 @gethrtime(...) #1

declare dso_local i64 @kstat_seq_show_headers(%struct.seq_file*) #1

declare dso_local i8* @kstat_seq_data_addr(%struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
