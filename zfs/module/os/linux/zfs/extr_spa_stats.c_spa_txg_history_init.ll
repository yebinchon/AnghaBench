; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_spa_stats.c_spa_txg_history_init.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_spa_stats.c_spa_txg_history_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }

@.str = private unnamed_addr constant [7 x i8] c"zfs/%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"txgs\00", align 1
@spa_txg_history_show = common dso_local global i32 0, align 4
@spa_txg_history_show_header = common dso_local global i32 0, align 4
@spa_txg_history_clear = common dso_local global i32 0, align 4
@spa_txg_history_t = common dso_local global i32 0, align 4
@sth_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @spa_txg_history_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spa_txg_history_init(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %3, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = call i32 @spa_name(%struct.TYPE_8__* %10)
  %12 = call i8* @kmem_asprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i8* %12, i8** %4, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %16, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* @spa_txg_history_show, align 4
  %21 = load i32, i32* @spa_txg_history_show_header, align 4
  %22 = load i32, i32* @spa_txg_history_clear, align 4
  %23 = load i32, i32* @spa_txg_history_t, align 4
  %24 = load i32, i32* @sth_node, align 4
  %25 = call i32 @offsetof(i32 %23, i32 %24)
  %26 = call i32 @procfs_list_install(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 420, %struct.TYPE_10__* %19, i32 %20, i32 %21, i32 %22, i32 %25)
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @kmem_strfree(i8* %27)
  ret void
}

declare dso_local i8* @kmem_asprintf(i8*, i32) #1

declare dso_local i32 @spa_name(%struct.TYPE_8__*) #1

declare dso_local i32 @procfs_list_install(i8*, i8*, i32, %struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @kmem_strfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
