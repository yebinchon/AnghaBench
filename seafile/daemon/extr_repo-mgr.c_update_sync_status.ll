; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_update_sync_status.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_update_sync_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cache_entry = type { i32, i32 }

@seaf = common dso_local global %struct.TYPE_2__* null, align 8
@SYNC_STATUS_SYNCED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_entry*, i8*)* @update_sync_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_sync_status(%struct.cache_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.cache_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.cache_entry* %0, %struct.cache_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  store i8* %6, i8** %5, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @seaf, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %12 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %15 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SYNC_STATUS_SYNCED, align 4
  %18 = call i32 @seaf_sync_manager_update_active_path(i32 %9, i8* %10, i32 %13, i32 %16, i32 %17)
  ret void
}

declare dso_local i32 @seaf_sync_manager_update_active_path(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
