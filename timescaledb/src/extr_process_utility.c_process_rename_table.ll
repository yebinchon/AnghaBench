; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_process_utility.c_process_rename_table.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_process_utility.c_process_rename_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, %struct.TYPE_3__*)* @process_rename_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_rename_table(i32* %0, i32* %1, i32 %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %8, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32* @ts_hypertable_cache_get_entry(i32* %11, i32 %12)
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = icmp eq i32* null, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = call i32* @ts_chunk_get_by_relid(i32 %17, i32 0, i32 0)
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = icmp ne i32* null, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i32*, i32** %10, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ts_chunk_set_name(i32* %22, i32 %25)
  br label %27

27:                                               ; preds = %21, %16
  br label %37

28:                                               ; preds = %4
  %29 = load i32*, i32** %9, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ts_hypertable_set_name(i32* %29, i32 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @process_add_hypertable(i32* %34, i32* %35)
  br label %37

37:                                               ; preds = %28, %27
  ret void
}

declare dso_local i32* @ts_hypertable_cache_get_entry(i32*, i32) #1

declare dso_local i32* @ts_chunk_get_by_relid(i32, i32, i32) #1

declare dso_local i32 @ts_chunk_set_name(i32*, i32) #1

declare dso_local i32 @ts_hypertable_set_name(i32*, i32) #1

declare dso_local i32 @process_add_hypertable(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
