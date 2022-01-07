; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_process_utility.c_process_rename_constraint.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_process_utility.c_process_rename_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@rename_hypertable_constraint = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"renaming constraints on chunks is not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, %struct.TYPE_4__*)* @process_rename_constraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_rename_constraint(i32* %0, i32* %1, i32 %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %8, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32* @ts_hypertable_cache_get_entry(i32* %11, i32 %12)
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = icmp ne i32* null, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @relation_not_only(i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @process_add_hypertable(i32* %21, i32* %22)
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* @rename_hypertable_constraint, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %27 = call i32 @foreach_chunk(i32* %24, i32 %25, %struct.TYPE_4__* %26)
  br label %40

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = call i32* @ts_chunk_get_by_relid(i32 %29, i32 0, i32 0)
  store i32* %30, i32** %10, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = icmp ne i32* null, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* @ERROR, align 4
  %35 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %36 = call i32 @errcode(i32 %35)
  %37 = call i32 @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %38 = call i32 @ereport(i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %33, %28
  br label %40

40:                                               ; preds = %39, %16
  ret void
}

declare dso_local i32* @ts_hypertable_cache_get_entry(i32*, i32) #1

declare dso_local i32 @relation_not_only(i32) #1

declare dso_local i32 @process_add_hypertable(i32*, i32*) #1

declare dso_local i32 @foreach_chunk(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32* @ts_chunk_get_by_relid(i32, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
