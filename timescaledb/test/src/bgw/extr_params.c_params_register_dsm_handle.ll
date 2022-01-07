; ModuleID = '/home/carl/AnghaBench/timescaledb/test/src/bgw/extr_params.c_params_register_dsm_handle.c'
source_filename = "/home/carl/AnghaBench/timescaledb/test/src/bgw/extr_params.c_params_register_dsm_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@RowExclusiveLock = common dso_local global i32 0, align 4
@SnapshotSelf = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @params_register_dsm_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @params_register_dsm_handle(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %2, align 4
  %7 = call i32 (...) @get_dsm_handle_table_oid()
  %8 = load i32, i32* @RowExclusiveLock, align 4
  %9 = call i32 @heap_open(i32 %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SnapshotSelf, align 4
  %12 = call i32 @heap_beginscan(i32 %10, i32 %11, i32 0, i32* null)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @ForwardScanDirection, align 4
  %15 = call i32 @heap_getnext(i32 %13, i32 %14)
  %16 = call i32 @heap_copytuple(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @GETSTRUCT(i32 %17)
  %19 = inttoptr i64 %18 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %6, align 8
  %20 = load i32, i32* %2, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ts_catalog_update(i32 %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @heap_freetuple(i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @heap_endscan(i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @RowExclusiveLock, align 4
  %32 = call i32 @heap_close(i32 %30, i32 %31)
  ret void
}

declare dso_local i32 @heap_open(i32, i32) #1

declare dso_local i32 @get_dsm_handle_table_oid(...) #1

declare dso_local i32 @heap_beginscan(i32, i32, i32, i32*) #1

declare dso_local i32 @heap_copytuple(i32) #1

declare dso_local i32 @heap_getnext(i32, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ts_catalog_update(i32, i32) #1

declare dso_local i32 @heap_freetuple(i32) #1

declare dso_local i32 @heap_endscan(i32) #1

declare dso_local i32 @heap_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
