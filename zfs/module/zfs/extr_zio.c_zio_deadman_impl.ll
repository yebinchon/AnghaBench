; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zio_deadman_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zio_deadman_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_16__, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i8*, %struct.TYPE_18__, %struct.TYPE_14__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_14__ = type { i64 }

@zio_deadman_log_all = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [239 x i8] c"slow zio[%d]: zio=%px timestamp=%llu delta=%llu queued=%llu io=%llu path=%s last=%llu type=%d priority=%d flags=0x%x stage=0x%x pipeline=0x%x pipeline-trace=0x%x objset=%llu object=%llu level=%llu blkid=%llu offset=%llu size=%llu error=%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@FM_EREPORT_ZFS_DEADMAN = common dso_local global i32 0, align 4
@ZIO_FAILURE_MODE_CONTINUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32)* @zio_deadman_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zio_deadman_impl(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %7, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 16
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %8, align 8
  %16 = load i64, i64* @zio_deadman_log_all, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %20 = icmp ne %struct.TYPE_17__* %19, null
  br i1 %20, label %21, label %138

21:                                               ; preds = %18
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %138

28:                                               ; preds = %21, %2
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %30 = icmp ne %struct.TYPE_17__* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  br label %35

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi %struct.TYPE_18__* [ %33, %31 ], [ null, %34 ]
  store %struct.TYPE_18__* %36, %struct.TYPE_18__** %9, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 15
  store %struct.TYPE_16__* %38, %struct.TYPE_16__** %10, align 8
  %39 = call i64 (...) @gethrtime()
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  store i64 %43, i64* %11, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @spa_get_deadman_failmode(i32 %46)
  store i64 %47, i64* %12, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 14
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 13
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %61 = icmp ne %struct.TYPE_17__* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %35
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  br label %67

66:                                               ; preds = %35
  br label %67

67:                                               ; preds = %66, %62
  %68 = phi i8* [ %65, %62 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %66 ]
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %70 = icmp ne %struct.TYPE_18__* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  br label %76

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %71
  %77 = phi i32 [ %74, %71 ], [ 0, %75 ]
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 12
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 11
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 10
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 9
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @zfs_dbgmsg(i8* getelementptr inbounds ([239 x i8], [239 x i8]* @.str, i64 0, i64 0), i32 %48, %struct.TYPE_15__* %49, i64 %52, i64 %53, i32 %56, i32 %59, i8* %68, i32 %77, i32 %80, i32 %83, i32 %86, i32 %89, i32 %92, i32 %95, i32 %98, i32 %101, i32 %104, i32 %107, i32 %110, i32 %113, i32 %116)
  %118 = load i32, i32* @FM_EREPORT_ZFS_DEADMAN, align 4
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %125 = call i32 @zfs_ereport_post(i32 %118, i32 %121, %struct.TYPE_17__* %122, %struct.TYPE_16__* %123, %struct.TYPE_15__* %124, i32 0, i32 0)
  %126 = load i64, i64* %12, align 8
  %127 = load i64, i64* @ZIO_FAILURE_MODE_CONTINUE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %76
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 2
  %132 = call i64 @taskq_empty_ent(i32* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %136 = call i32 @zio_interrupt(%struct.TYPE_15__* %135)
  br label %137

137:                                              ; preds = %134, %129, %76
  br label %138

138:                                              ; preds = %137, %21, %18
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 1
  %141 = call i32 @mutex_enter(i32* %140)
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %143 = call %struct.TYPE_15__* @zio_walk_children(%struct.TYPE_15__* %142, i32** %7)
  store %struct.TYPE_15__* %143, %struct.TYPE_15__** %5, align 8
  br label %144

144:                                              ; preds = %153, %138
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %146 = icmp ne %struct.TYPE_15__* %145, null
  br i1 %146, label %147, label %155

147:                                              ; preds = %144
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %149 = call %struct.TYPE_15__* @zio_walk_children(%struct.TYPE_15__* %148, i32** %7)
  store %struct.TYPE_15__* %149, %struct.TYPE_15__** %6, align 8
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %151 = load i32, i32* %4, align 4
  %152 = add nsw i32 %151, 1
  call void @zio_deadman_impl(%struct.TYPE_15__* %150, i32 %152)
  br label %153

153:                                              ; preds = %147
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__* %154, %struct.TYPE_15__** %5, align 8
  br label %144

155:                                              ; preds = %144
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 1
  %158 = call i32 @mutex_exit(i32* %157)
  ret void
}

declare dso_local i64 @gethrtime(...) #1

declare dso_local i64 @spa_get_deadman_failmode(i32) #1

declare dso_local i32 @zfs_dbgmsg(i8*, i32, %struct.TYPE_15__*, i64, i64, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @zfs_ereport_post(i32, i32, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @taskq_empty_ent(i32*) #1

declare dso_local i32 @zio_interrupt(%struct.TYPE_15__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_15__* @zio_walk_children(%struct.TYPE_15__*, i32**) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
