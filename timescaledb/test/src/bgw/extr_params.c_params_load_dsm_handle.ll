; ModuleID = '/home/carl/AnghaBench/timescaledb/test/src/bgw/extr_params.c_params_load_dsm_handle.c'
source_filename = "/home/carl/AnghaBench/timescaledb/test/src/bgw/extr_params.c_params_load_dsm_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@RowExclusiveLock = common dso_local global i32 0, align 4
@SnapshotSelf = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @params_load_dsm_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @params_load_dsm_handle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32, align 4
  %6 = call i32 (...) @get_dsm_handle_table_oid()
  %7 = load i32, i32* @RowExclusiveLock, align 4
  %8 = call i32 @heap_open(i32 %6, i32 %7)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @SnapshotSelf, align 4
  %11 = call i32 @heap_beginscan(i32 %9, i32 %10, i32 0, i32* null)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @ForwardScanDirection, align 4
  %14 = call i32* @heap_getnext(i32 %12, i32 %13)
  store i32* %14, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32* @heap_copytuple(i32* %19)
  store i32* %20, i32** %3, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @GETSTRUCT(i32* %21)
  %23 = inttoptr i64 %22 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %4, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @heap_freetuple(i32* %27)
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @heap_endscan(i32 %29)
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* @RowExclusiveLock, align 4
  %33 = call i32 @heap_close(i32 %31, i32 %32)
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @heap_open(i32, i32) #1

declare dso_local i32 @get_dsm_handle_table_oid(...) #1

declare dso_local i32 @heap_beginscan(i32, i32, i32, i32*) #1

declare dso_local i32* @heap_getnext(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @heap_copytuple(i32*) #1

declare dso_local i64 @GETSTRUCT(i32*) #1

declare dso_local i32 @heap_freetuple(i32*) #1

declare dso_local i32 @heap_endscan(i32) #1

declare dso_local i32 @heap_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
