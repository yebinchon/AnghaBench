; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_spa_stats.c_spa_mmp_history_show.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_spa_stats.c_spa_mmp_history_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.TYPE_2__ = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@__const.spa_mmp_history_show.skip_fmt = private unnamed_addr constant [64 x i8] c"%-10llu %-10llu %10llu %#6llx %10lld %12llu %-24llu %-10lld %s\0A\00", align 16
@__const.spa_mmp_history_show.write_fmt = private unnamed_addr constant [63 x i8] c"%-10llu %-10llu %10llu %6lld %10lld %12llu %-24llu %-10lld %s\0A\00", align 16
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @spa_mmp_history_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_mmp_history_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca [63 x i8], align 16
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %5, align 8
  %10 = bitcast [64 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 getelementptr inbounds ([64 x i8], [64 x i8]* @__const.spa_mmp_history_show.skip_fmt, i32 0, i32 0), i64 64, i1 false)
  %11 = bitcast [63 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 getelementptr inbounds ([63 x i8], [63 x i8]* @__const.spa_mmp_history_show.write_fmt, i32 0, i32 0), i64 63, i1 false)
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 9
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  br label %21

19:                                               ; preds = %2
  %20 = getelementptr inbounds [63 x i8], [63 x i8]* %7, i64 0, i64 0
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i8* [ %18, %17 ], [ %20, %19 ]
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 8
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %21
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  br label %64

63:                                               ; preds = %21
  br label %64

64:                                               ; preds = %63, %59
  %65 = phi i8* [ %62, %59 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %63 ]
  %66 = call i32 @seq_printf(%struct.seq_file* %12, i8* %22, i32 %26, i32 %30, i32 %34, i32 %38, i32 %42, i32 %46, i32 %50, i32 %54, i8* %65)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
