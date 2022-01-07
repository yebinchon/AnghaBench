; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_zap_stats.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_zap_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [37 x i8] c"\09microzap: %llu bytes, %llu entries\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"\09Fat ZAP stats:\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"\09\09Pointer table:\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\09\09\09%llu elements\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"\09\09\09zt_blk: %llu\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"\09\09\09zt_numblks: %llu\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"\09\09\09zt_shift: %llu\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"\09\09\09zt_blks_copied: %llu\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"\09\09\09zt_nextblk: %llu\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"\09\09ZAP entries: %llu\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"\09\09Leaf blocks: %llu\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"\09\09Total blocks: %llu\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"\09\09zap_block_type: 0x%llx\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"\09\09zap_magic: 0x%llx\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"\09\09zap_salt: 0x%llx\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"\09\09Leafs with 2^n pointers:\0A\00", align 1
@ZAP_HISTOGRAM_SIZE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [28 x i8] c"\09\09Blocks with n*5 entries:\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"\09\09Blocks n/10 full:\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"\09\09Entries with n chunks:\0A\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"\09\09Buckets with n entries:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @dump_zap_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_zap_stats(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @zap_get_stats(i32* %7, i32 %8, %struct.TYPE_3__* %6)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %105

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 1
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 17
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 11
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  br label %105

30:                                               ; preds = %13
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 16
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 15
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 14
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 13
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 12
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 11
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 10
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 9
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 8
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 7
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 %78)
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0))
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @ZAP_HISTOGRAM_SIZE, align 4
  %84 = call i32 @dump_histogram(i32 %82, i32 %83, i32 0)
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @ZAP_HISTOGRAM_SIZE, align 4
  %89 = call i32 @dump_histogram(i32 %87, i32 %88, i32 0)
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ZAP_HISTOGRAM_SIZE, align 4
  %94 = call i32 @dump_histogram(i32 %92, i32 %93, i32 0)
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0))
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @ZAP_HISTOGRAM_SIZE, align 4
  %99 = call i32 @dump_histogram(i32 %97, i32 %98, i32 0)
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0))
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @ZAP_HISTOGRAM_SIZE, align 4
  %104 = call i32 @dump_histogram(i32 %102, i32 %103, i32 0)
  br label %105

105:                                              ; preds = %30, %17, %12
  ret void
}

declare dso_local i32 @zap_get_stats(i32*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @dump_histogram(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
