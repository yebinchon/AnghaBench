; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dbuf.c_dmu_buf_will_dirty_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dbuf.c_dmu_buf_will_dirty_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_13__ = type { i32 }

@DB_CACHED = common dso_local global i64 0, align 8
@DB_RF_HAVESTRUCT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_14__*)* @dmu_buf_will_dirty_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmu_buf_will_dirty_impl(i32* %0, i32 %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %7, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 3
  %19 = call i32 @zfs_refcount_is_zero(i32* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = call i32 @mutex_enter(i32* %25)
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  store %struct.TYPE_16__* %29, %struct.TYPE_16__** %8, align 8
  br label %30

30:                                               ; preds = %64, %3
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %32 = icmp ne %struct.TYPE_16__* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %36, %39
  br label %41

41:                                               ; preds = %33, %30
  %42 = phi i1 [ false, %30 ], [ %40, %33 ]
  br i1 %42, label %43, label %68

43:                                               ; preds = %41
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %43
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DB_CACHED, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %59 = call i32 @dbuf_redirty(%struct.TYPE_16__* %58)
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  %62 = call i32 @mutex_exit(i32* %61)
  br label %92

63:                                               ; preds = %51, %43
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  store %struct.TYPE_16__* %67, %struct.TYPE_16__** %8, align 8
  br label %30

68:                                               ; preds = %41
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = call i32 @mutex_exit(i32* %70)
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %73 = call i32 @DB_DNODE_ENTER(%struct.TYPE_15__* %72)
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %75 = call %struct.TYPE_13__* @DB_DNODE(%struct.TYPE_15__* %74)
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = call i64 @RW_WRITE_HELD(i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %68
  %80 = load i32, i32* @DB_RF_HAVESTRUCT, align 4
  %81 = load i32, i32* %5, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %79, %68
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %85 = call i32 @DB_DNODE_EXIT(%struct.TYPE_15__* %84)
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @dbuf_read(%struct.TYPE_15__* %86, i32* null, i32 %87)
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %91 = call i32 @dbuf_dirty(%struct.TYPE_15__* %89, %struct.TYPE_14__* %90)
  br label %92

92:                                               ; preds = %83, %57
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @zfs_refcount_is_zero(i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @dbuf_redirty(%struct.TYPE_16__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @DB_DNODE_ENTER(%struct.TYPE_15__*) #1

declare dso_local i64 @RW_WRITE_HELD(i32*) #1

declare dso_local %struct.TYPE_13__* @DB_DNODE(%struct.TYPE_15__*) #1

declare dso_local i32 @DB_DNODE_EXIT(%struct.TYPE_15__*) #1

declare dso_local i32 @dbuf_read(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @dbuf_dirty(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
