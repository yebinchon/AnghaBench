; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_mmp.c_mmp_thread_start.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_mmp.c_mmp_thread_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }

@mmp_thread = common dso_local global i32 0, align 4
@p0 = common dso_local global i32 0, align 4
@TS_RUN = common dso_local global i32 0, align 4
@defclsyspri = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"MMP thread started pool '%s' gethrtime %llu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmp_thread_start(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = call i64 @spa_writeable(%struct.TYPE_7__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = call i32 @mutex_enter(i32* %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %9
  %18 = load i32, i32* @mmp_thread, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = load i32, i32* @TS_RUN, align 4
  %21 = load i32, i32* @defclsyspri, align 4
  %22 = call i64 @thread_create(i32* null, i32 0, i32 %18, %struct.TYPE_7__* %19, i32 0, i32* @p0, i32 %20, i32 %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = call i32 @spa_name(%struct.TYPE_7__* %25)
  %27 = call i32 (...) @gethrtime()
  %28 = call i32 @zfs_dbgmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %17, %9
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = call i32 @mutex_exit(i32* %31)
  br label %33

33:                                               ; preds = %29, %1
  ret void
}

declare dso_local i64 @spa_writeable(%struct.TYPE_7__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @thread_create(i32*, i32, i32, %struct.TYPE_7__*, i32, i32*, i32, i32) #1

declare dso_local i32 @zfs_dbgmsg(i8*, i32, i32) #1

declare dso_local i32 @spa_name(%struct.TYPE_7__*) #1

declare dso_local i32 @gethrtime(...) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
