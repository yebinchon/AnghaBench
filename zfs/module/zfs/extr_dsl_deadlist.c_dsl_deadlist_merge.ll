; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_deadlist.c_dsl_deadlist_merge.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_deadlist.c_dsl_deadlist_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i64 }

@DMU_OT_BPOBJ = common dso_local global i64 0, align 8
@dsl_deadlist_insert_cb = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_deadlist_merge(%struct.TYPE_14__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @dmu_object_info(i32 %16, i32 %17, %struct.TYPE_15__* %11)
  %19 = call i32 @VERIFY0(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DMU_OT_BPOBJ, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %3
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @bpobj_open(i32* %12, i32 %27, i32 %28)
  %30 = call i32 @VERIFY0(i32 %29)
  %31 = load i32, i32* @dsl_deadlist_insert_cb, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @bpobj_iterate(i32* %12, i32 %31, %struct.TYPE_14__* %32, i32* %33)
  %35 = call i32 @VERIFY0(i32 %34)
  %36 = call i32 @bpobj_close(i32* %12)
  br label %92

37:                                               ; preds = %3
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = call i32 @mutex_enter(i32* %39)
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @zap_cursor_init(i32* %7, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %67, %37
  %47 = call i64 @zap_cursor_retrieve(i32* %7, %struct.TYPE_13__* %8)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @zfs_strtonum(i32 %51, i32* null)
  store i32 %52, i32* %13, align 4
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @dsl_deadlist_insert_bpobj(%struct.TYPE_14__* %53, i32 %55, i32 %56, i32* %57)
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @zap_remove_int(i32 %61, i32 %62, i32 %63, i32* %64)
  %66 = call i32 @VERIFY0(i32 %65)
  br label %67

67:                                               ; preds = %49
  %68 = call i32 @zap_cursor_advance(i32* %7)
  br label %46

69:                                               ; preds = %46
  %70 = call i32 @zap_cursor_fini(i32* %7)
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @FTAG, align 4
  %76 = call i32 @dmu_bonus_hold(i32 %73, i32 %74, i32 %75, %struct.TYPE_16__** %9)
  %77 = call i32 @VERIFY0(i32 %76)
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %10, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @dmu_buf_will_dirty(%struct.TYPE_16__* %81, i32* %82)
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @bzero(i32* %84, i32 4)
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %87 = load i32, i32* @FTAG, align 4
  %88 = call i32 @dmu_buf_rele(%struct.TYPE_16__* %86, i32 %87)
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = call i32 @mutex_exit(i32* %90)
  br label %92

92:                                               ; preds = %69, %24
  ret void
}

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dmu_object_info(i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @bpobj_open(i32*, i32, i32) #1

declare dso_local i32 @bpobj_iterate(i32*, i32, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @bpobj_close(i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @zap_cursor_init(i32*, i32, i32) #1

declare dso_local i64 @zap_cursor_retrieve(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @zfs_strtonum(i32, i32*) #1

declare dso_local i32 @dsl_deadlist_insert_bpobj(%struct.TYPE_14__*, i32, i32, i32*) #1

declare dso_local i32 @zap_remove_int(i32, i32, i32, i32*) #1

declare dso_local i32 @zap_cursor_advance(i32*) #1

declare dso_local i32 @zap_cursor_fini(i32*) #1

declare dso_local i32 @dmu_bonus_hold(i32, i32, i32, %struct.TYPE_16__**) #1

declare dso_local i32 @dmu_buf_will_dirty(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @dmu_buf_rele(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
