; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-kstat.c_kstat_seq_show.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-kstat.c_kstat_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.TYPE_5__ = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32, i32, i8*)* }

@KS_MAGIC = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Undefined kstat type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @kstat_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kstat_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @KS_MAGIC, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %95 [
    i32 129, label %21
    i32 130, label %75
    i32 132, label %80
    i32 131, label %85
    i32 128, label %90
  ]

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %48, %21
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 7
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %25, align 8
  %27 = icmp ne i32 (i32, i32, i8*)* %26, null
  br i1 %27, label %28, label %59

28:                                               ; preds = %22
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 7
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %31, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 %32(i32 %35, i32 %38, i8* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %28
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = call i32 @kstat_resize_raw(%struct.TYPE_5__* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %22

49:                                               ; preds = %44, %28
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @seq_puts(%struct.seq_file* %53, i32 %56)
  br label %58

58:                                               ; preds = %52, %49
  br label %74

59:                                               ; preds = %22
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 1
  %64 = zext i1 %63 to i32
  %65 = call i32 @ASSERT(i32 %64)
  %66 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @kstat_seq_show_raw(%struct.seq_file* %66, i32 %69, i32 %72)
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %59, %58
  br label %100

75:                                               ; preds = %2
  %76 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = bitcast i8* %77 to i32*
  %79 = call i32 @kstat_seq_show_named(%struct.seq_file* %76, i32* %78)
  store i32 %79, i32* %6, align 4
  br label %100

80:                                               ; preds = %2
  %81 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %82 = load i8*, i8** %4, align 8
  %83 = bitcast i8* %82 to i32*
  %84 = call i32 @kstat_seq_show_intr(%struct.seq_file* %81, i32* %83)
  store i32 %84, i32* %6, align 4
  br label %100

85:                                               ; preds = %2
  %86 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %87 = load i8*, i8** %4, align 8
  %88 = bitcast i8* %87 to i32*
  %89 = call i32 @kstat_seq_show_io(%struct.seq_file* %86, i32* %88)
  store i32 %89, i32* %6, align 4
  br label %100

90:                                               ; preds = %2
  %91 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %92 = load i8*, i8** %4, align 8
  %93 = bitcast i8* %92 to i32*
  %94 = call i32 @kstat_seq_show_timer(%struct.seq_file* %91, i32* %93)
  store i32 %94, i32* %6, align 4
  br label %100

95:                                               ; preds = %2
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @PANIC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %95, %90, %85, %80, %75, %74
  %101 = load i32, i32* %6, align 4
  %102 = sub nsw i32 0, %101
  ret i32 %102
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @kstat_resize_raw(%struct.TYPE_5__*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i32) #1

declare dso_local i32 @kstat_seq_show_raw(%struct.seq_file*, i32, i32) #1

declare dso_local i32 @kstat_seq_show_named(%struct.seq_file*, i32*) #1

declare dso_local i32 @kstat_seq_show_intr(%struct.seq_file*, i32*) #1

declare dso_local i32 @kstat_seq_show_io(%struct.seq_file*, i32*) #1

declare dso_local i32 @kstat_seq_show_timer(%struct.seq_file*, i32*) #1

declare dso_local i32 @PANIC(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
