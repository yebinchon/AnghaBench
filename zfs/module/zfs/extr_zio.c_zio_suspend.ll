; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zio_suspend.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zio_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, i64, i64 }

@ZIO_FAILURE_MODE_PANIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [116 x i8] c"Pool '%s' has encountered an uncorrectable I/O failure and the failure mode property for this pool is set to panic.\00", align 1
@CE_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [80 x i8] c"Pool '%s' has encountered an uncorrectable I/O failure and has been suspended.\0A\00", align 1
@FM_EREPORT_ZFS_IO_FAILURE = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@ZIO_FLAG_SPECULATIVE = common dso_local global i32 0, align 4
@ZIO_FLAG_GODFATHER = common dso_local global i32 0, align 4
@ZIO_CHILD_LOGICAL = common dso_local global i64 0, align 8
@ZIO_STAGE_DONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zio_suspend(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %8 = call i64 @spa_get_failmode(%struct.TYPE_14__* %7)
  %9 = load i64, i64* @ZIO_FAILURE_MODE_PANIC, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = call i32 @spa_name(%struct.TYPE_14__* %12)
  %14 = call i32 @fm_panic(i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %11, %3
  %16 = load i32, i32* @CE_WARN, align 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = call i32 @spa_name(%struct.TYPE_14__* %17)
  %19 = call i32 @cmn_err(i32 %16, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @FM_EREPORT_ZFS_IO_FAILURE, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = call i32 @zfs_ereport_post(i32 %20, %struct.TYPE_14__* %21, i32* null, i32* null, i32* null, i32 0, i32 0)
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = call i32 @mutex_enter(i32* %24)
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = icmp eq %struct.TYPE_13__* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %15
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %32 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %33 = load i32, i32* @ZIO_FLAG_SPECULATIVE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @ZIO_FLAG_GODFATHER, align 4
  %36 = or i32 %34, %35
  %37 = call %struct.TYPE_13__* @zio_root(%struct.TYPE_14__* %31, i32* null, i32* null, i32 %36)
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %39, align 8
  br label %40

40:                                               ; preds = %30, %15
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %45 = icmp ne %struct.TYPE_13__* %44, null
  br i1 %45, label %46, label %87

46:                                               ; preds = %40
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ZIO_FLAG_GODFATHER, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @ASSERT(i32 %54)
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = icmp ne %struct.TYPE_13__* %56, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @ASSERT(i32 %61)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ZIO_CHILD_LOGICAL, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @ASSERT(i32 %68)
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = call i32* @zio_unique_parent(%struct.TYPE_13__* %70)
  %72 = icmp eq i32* %71, null
  %73 = zext i1 %72 to i32
  %74 = call i32 @ASSERT(i32 %73)
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @ZIO_STAGE_DONE, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @ASSERT(i32 %80)
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %86 = call i32 @zio_add_child(%struct.TYPE_13__* %84, %struct.TYPE_13__* %85)
  br label %87

87:                                               ; preds = %46, %40
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = call i32 @mutex_exit(i32* %89)
  ret void
}

declare dso_local i64 @spa_get_failmode(%struct.TYPE_14__*) #1

declare dso_local i32 @fm_panic(i8*, i32) #1

declare dso_local i32 @spa_name(%struct.TYPE_14__*) #1

declare dso_local i32 @cmn_err(i32, i8*, i32) #1

declare dso_local i32 @zfs_ereport_post(i32, %struct.TYPE_14__*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_13__* @zio_root(%struct.TYPE_14__*, i32*, i32*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @zio_unique_parent(%struct.TYPE_13__*) #1

declare dso_local i32 @zio_add_child(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
