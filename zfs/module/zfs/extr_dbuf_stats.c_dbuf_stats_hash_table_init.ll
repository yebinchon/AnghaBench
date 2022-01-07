; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dbuf_stats.c_dbuf_stats_hash_table_init.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dbuf_stats.c_dbuf_stats_hash_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32, i32* }

@dbuf_stats_hash_table = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@MUTEX_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"zfs\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"dbufs\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@KSTAT_TYPE_RAW = common dso_local global i32 0, align 4
@KSTAT_FLAG_VIRTUAL = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@dbuf_stats_hash_table_headers = common dso_local global i32 0, align 4
@dbuf_stats_hash_table_data = common dso_local global i32 0, align 4
@dbuf_stats_hash_table_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @dbuf_stats_hash_table_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbuf_stats_hash_table_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %2, align 8
  store %struct.TYPE_8__* @dbuf_stats_hash_table, %struct.TYPE_8__** %3, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i32, i32* @MUTEX_DEFAULT, align 4
  %8 = call i32 @mutex_init(i32* %6, i32* null, i32 %7, i32* null)
  %9 = load i32*, i32** %2, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  store i32* %9, i32** %11, align 8
  %12 = load i32, i32* @KSTAT_TYPE_RAW, align 4
  %13 = load i32, i32* @KSTAT_FLAG_VIRTUAL, align 4
  %14 = call %struct.TYPE_7__* @kstat_create(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %12, i32 0, i32 %13)
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %4, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %17, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %38

20:                                               ; preds = %1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  %25 = load i32, i32* @UINT32_MAX, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %30, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = load i32, i32* @dbuf_stats_hash_table_headers, align 4
  %33 = load i32, i32* @dbuf_stats_hash_table_data, align 4
  %34 = load i32, i32* @dbuf_stats_hash_table_addr, align 4
  %35 = call i32 @kstat_set_raw_ops(%struct.TYPE_7__* %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = call i32 @kstat_install(%struct.TYPE_7__* %36)
  br label %38

38:                                               ; preds = %20, %1
  ret void
}

declare dso_local i32 @mutex_init(i32*, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_7__* @kstat_create(i8*, i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @kstat_set_raw_ops(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @kstat_install(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
