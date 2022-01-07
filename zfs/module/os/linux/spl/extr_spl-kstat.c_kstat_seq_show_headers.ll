; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-kstat.c_kstat_seq_show_headers.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-kstat.c_kstat_seq_show_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.TYPE_5__ = type { i64, i32, i32, i32, %struct.TYPE_4__, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (i32, i32)* }

@KS_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"%d %d 0x%02x %d %d %lld %lld\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"raw data\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%-31s %-4s %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"%-8s %-8s %-8s %-8s %-8s\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"soft\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"watchdog\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"spurious\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"multsvc\00", align 1
@.str.12 = private unnamed_addr constant [61 x i8] c"%-8s %-8s %-8s %-8s %-8s %-8s %-8s %-8s %-8s %-8s %-8s %-8s\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"nread\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"nwritten\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"reads\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"writes\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"wtime\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"wlentime\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"wupdate\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"rtime\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"rlentime\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"rupdate\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"wcnt\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"rcnt\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"%-31s %-8s %-8s %-8s %-8s %-8s %-8s\0A\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"events\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"elapsed\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"Undefined kstat type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*)* @kstat_seq_show_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kstat_seq_show_headers(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %5 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %6 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @KS_MAGIC, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i32 %25, i32 %28, i32 %32, i32 %35, i32 %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %96 [
    i32 129, label %43
    i32 130, label %84
    i32 132, label %87
    i32 131, label %90
    i32 128, label %93
  ]

43:                                               ; preds = %1
  br label %44

44:                                               ; preds = %69, %43
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (i32, i32)*, i32 (i32, i32)** %47, align 8
  %49 = icmp ne i32 (i32, i32)* %48, null
  br i1 %49, label %50, label %80

50:                                               ; preds = %44
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32 (i32, i32)*, i32 (i32, i32)** %53, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 %54(i32 %57, i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %50
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = call i32 @kstat_resize_raw(%struct.TYPE_5__* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  br label %44

70:                                               ; preds = %65, %50
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %70
  %74 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @seq_puts(%struct.seq_file* %74, i32 %77)
  br label %79

79:                                               ; preds = %73, %70
  br label %83

80:                                               ; preds = %44
  %81 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %82 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %79
  br label %101

84:                                               ; preds = %1
  %85 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %86 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %85, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %101

87:                                               ; preds = %1
  %88 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %89 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  br label %101

90:                                               ; preds = %1
  %91 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %92 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %91, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  br label %101

93:                                               ; preds = %1
  %94 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %95 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %94, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  br label %101

96:                                               ; preds = %1
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @PANIC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %96, %93, %90, %87, %84, %83
  %102 = load i32, i32* %4, align 4
  %103 = sub nsw i32 0, %102
  ret i32 %103
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @kstat_resize_raw(%struct.TYPE_5__*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i32) #1

declare dso_local i32 @PANIC(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
