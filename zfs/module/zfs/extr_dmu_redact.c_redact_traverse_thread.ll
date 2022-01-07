; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_redact.c_redact_traverse_thread.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_redact.c_redact_traverse_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redact_thread_arg = type { i32, i32, i32, i8*, i32, i32, i32 }
%struct.redact_record = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@TRAVERSE_PRE = common dso_local global i32 0, align 4
@TRAVERSE_PREFETCH_METADATA = common dso_local global i32 0, align 4
@redact_cb = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@DMU_OST_ZFS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @redact_traverse_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redact_traverse_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.redact_thread_arg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.redact_record*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.redact_thread_arg*
  store %struct.redact_thread_arg* %8, %struct.redact_thread_arg** %3, align 8
  %9 = load %struct.redact_thread_arg*, %struct.redact_thread_arg** %3, align 8
  %10 = getelementptr inbounds %struct.redact_thread_arg, %struct.redact_thread_arg* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @dmu_objset_from_ds(i32 %11, %struct.TYPE_6__** %6)
  %13 = call i32 @VERIFY0(i32 %12)
  %14 = call i8* (...) @objlist_create()
  %15 = load %struct.redact_thread_arg*, %struct.redact_thread_arg** %3, align 8
  %16 = getelementptr inbounds %struct.redact_thread_arg, %struct.redact_thread_arg* %15, i32 0, i32 3
  store i8* %14, i8** %16, align 8
  %17 = load %struct.redact_thread_arg*, %struct.redact_thread_arg** %3, align 8
  %18 = getelementptr inbounds %struct.redact_thread_arg, %struct.redact_thread_arg* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.redact_thread_arg*, %struct.redact_thread_arg** %3, align 8
  %21 = getelementptr inbounds %struct.redact_thread_arg, %struct.redact_thread_arg* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.redact_thread_arg*, %struct.redact_thread_arg** %3, align 8
  %24 = getelementptr inbounds %struct.redact_thread_arg, %struct.redact_thread_arg* %23, i32 0, i32 4
  %25 = load i32, i32* @TRAVERSE_PRE, align 4
  %26 = load i32, i32* @TRAVERSE_PREFETCH_METADATA, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @redact_cb, align 4
  %29 = load %struct.redact_thread_arg*, %struct.redact_thread_arg** %3, align 8
  %30 = call i32 @traverse_dataset_resume(i32 %19, i32 %22, i32* %24, i32 %27, i32 %28, %struct.redact_thread_arg* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @EINTR, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.redact_thread_arg*, %struct.redact_thread_arg** %3, align 8
  %37 = getelementptr inbounds %struct.redact_thread_arg, %struct.redact_thread_arg* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %34, %1
  %39 = load %struct.redact_thread_arg*, %struct.redact_thread_arg** %3, align 8
  %40 = getelementptr inbounds %struct.redact_thread_arg, %struct.redact_thread_arg* %39, i32 0, i32 3
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @objlist_destroy(i8* %41)
  %43 = load i32, i32* @KM_SLEEP, align 4
  %44 = call %struct.redact_record* @kmem_zalloc(i32 4, i32 %43)
  store %struct.redact_record* %44, %struct.redact_record** %5, align 8
  %45 = load i32, i32* @B_TRUE, align 4
  %46 = load %struct.redact_record*, %struct.redact_record** %5, align 8
  %47 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.redact_thread_arg*, %struct.redact_thread_arg** %3, align 8
  %49 = getelementptr inbounds %struct.redact_thread_arg, %struct.redact_thread_arg* %48, i32 0, i32 2
  %50 = load %struct.redact_thread_arg*, %struct.redact_thread_arg** %3, align 8
  %51 = getelementptr inbounds %struct.redact_thread_arg, %struct.redact_thread_arg* %50, i32 0, i32 1
  %52 = load %struct.redact_record*, %struct.redact_record** %5, align 8
  %53 = call i32 @record_merge_enqueue(i32* %49, i32* %51, %struct.redact_record* %52)
  %54 = call i32 (...) @thread_exit()
  ret void
}

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dmu_objset_from_ds(i32, %struct.TYPE_6__**) #1

declare dso_local i8* @objlist_create(...) #1

declare dso_local i32 @traverse_dataset_resume(i32, i32, i32*, i32, i32, %struct.redact_thread_arg*) #1

declare dso_local i32 @objlist_destroy(i8*) #1

declare dso_local %struct.redact_record* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @record_merge_enqueue(i32*, i32*, %struct.redact_record*) #1

declare dso_local i32 @thread_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
