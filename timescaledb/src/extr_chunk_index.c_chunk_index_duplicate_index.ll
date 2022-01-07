; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk_index.c_chunk_index_duplicate_index.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk_index.c_chunk_index_duplicate_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@AccessShareLock = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32, i32)* @chunk_index_duplicate_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chunk_index_duplicate_index(i32 %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @AccessShareLock, align 4
  %17 = call i32 @relation_open(i32 %15, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @ts_chunk_index_get_by_indexrelid(i32* %18, i32 %19, %struct.TYPE_3__* %12)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @get_index_constraint(i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @OidIsValid(i32 %27)
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @chunk_relation_index_create(i32 %24, i32 %25, i32 %26, i32 %28, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @NoLock, align 4
  %33 = call i32 @relation_close(i32 %31, i32 %32)
  %34 = load i32, i32* %14, align 4
  ret i32 %34
}

declare dso_local i32 @relation_open(i32, i32) #1

declare dso_local i32 @ts_chunk_index_get_by_indexrelid(i32*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @get_index_constraint(i32) #1

declare dso_local i32 @chunk_relation_index_create(i32, i32, i32, i32, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @relation_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
