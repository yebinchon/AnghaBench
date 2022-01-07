; ModuleID = '/home/carl/AnghaBench/zfs/lib/libuutil/extr_uu_avl.c_uu_avl_lockup.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libuutil/extr_uu_avl.c_uu_avl_lockup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.TYPE_3__* }

@uu_apool_list_lock = common dso_local global i32 0, align 4
@uu_null_apool = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uu_avl_lockup() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = call i32 @pthread_mutex_lock(i32* @uu_apool_list_lock)
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uu_null_apool, i32 0, i32 1), align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %1, align 8
  br label %4

4:                                                ; preds = %11, %0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %6 = icmp ne %struct.TYPE_3__* %5, @uu_null_apool
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i32 @pthread_mutex_lock(i32* %9)
  br label %11

11:                                               ; preds = %7
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %1, align 8
  br label %4

15:                                               ; preds = %4
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
