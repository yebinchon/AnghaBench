; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_create.c_get_default_algorithm_id.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_create.c_get_default_algorithm_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }

@COMPRESSION_ALGORITHM_DELTADELTA = common dso_local global i32 0, align 4
@COMPRESSION_ALGORITHM_GORILLA = common dso_local global i32 0, align 4
@COMPRESSION_ALGORITHM_ARRAY = common dso_local global i32 0, align 4
@COMPRESSION_ALGORITHM_DICTIONARY = common dso_local global i32 0, align 4
@TYPECACHE_EQ_OPR_FINFO = common dso_local global i32 0, align 4
@TYPECACHE_HASH_PROC_FINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_default_algorithm_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_default_algorithm_id(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %14 [
    i32 134, label %6
    i32 135, label %6
    i32 133, label %6
    i32 132, label %6
    i32 138, label %6
    i32 129, label %6
    i32 128, label %6
    i32 137, label %8
    i32 136, label %8
    i32 131, label %10
    i32 130, label %12
    i32 139, label %12
  ]

6:                                                ; preds = %1, %1, %1, %1, %1, %1, %1
  %7 = load i32, i32* @COMPRESSION_ALGORITHM_DELTADELTA, align 4
  store i32 %7, i32* %2, align 4
  br label %35

8:                                                ; preds = %1, %1
  %9 = load i32, i32* @COMPRESSION_ALGORITHM_GORILLA, align 4
  store i32 %9, i32* %2, align 4
  br label %35

10:                                               ; preds = %1
  %11 = load i32, i32* @COMPRESSION_ALGORITHM_ARRAY, align 4
  store i32 %11, i32* %2, align 4
  br label %35

12:                                               ; preds = %1, %1
  %13 = load i32, i32* @COMPRESSION_ALGORITHM_DICTIONARY, align 4
  store i32 %13, i32* %2, align 4
  br label %35

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @TYPECACHE_EQ_OPR_FINFO, align 4
  %17 = load i32, i32* @TYPECACHE_HASH_PROC_FINFO, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.TYPE_7__* @lookup_type_cache(i32 %15, i32 %18)
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %4, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %14
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %25, %14
  %32 = load i32, i32* @COMPRESSION_ALGORITHM_ARRAY, align 4
  store i32 %32, i32* %2, align 4
  br label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @COMPRESSION_ALGORITHM_DICTIONARY, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %31, %12, %10, %8, %6
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.TYPE_7__* @lookup_type_cache(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
