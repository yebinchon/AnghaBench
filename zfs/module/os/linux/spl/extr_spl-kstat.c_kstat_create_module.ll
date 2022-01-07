; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-kstat.c_kstat_create_module.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-kstat.c_kstat_create_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, %struct.proc_dir_entry* }
%struct.proc_dir_entry = type { i32 }

@proc_spl_kstat = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@KSTAT_STRLEN = common dso_local global i64 0, align 8
@kstat_module_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i8*)* @kstat_create_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @kstat_create_module(i8* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.proc_dir_entry*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* @proc_spl_kstat, align 4
  %8 = call %struct.proc_dir_entry* @proc_mkdir(i8* %6, i32 %7)
  store %struct.proc_dir_entry* %8, %struct.proc_dir_entry** %5, align 8
  %9 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %10 = icmp eq %struct.proc_dir_entry* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %32

12:                                               ; preds = %1
  %13 = load i32, i32* @KM_SLEEP, align 4
  %14 = call %struct.TYPE_4__* @kmem_alloc(i32 24, i32 %13)
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %4, align 8
  %15 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  store %struct.proc_dir_entry* %15, %struct.proc_dir_entry** %17, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = load i64, i64* @KSTAT_STRLEN, align 8
  %23 = add nsw i64 %22, 1
  %24 = call i32 @strlcpy(i32 %20, i8* %21, i64 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i32 @list_add_tail(i32* %29, i32* @kstat_module_list)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %2, align 8
  br label %32

32:                                               ; preds = %12, %11
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %33
}

declare dso_local %struct.proc_dir_entry* @proc_mkdir(i8*, i32) #1

declare dso_local %struct.TYPE_4__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
