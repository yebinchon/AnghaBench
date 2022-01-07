; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk_adaptive.c_chunk_get_minmax.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk_adaptive.c_chunk_get_minmax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AccessShareLock = common dso_local global i32 0, align 4
@MINMAX_NO_INDEX = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"no index on \22%s\22 found for adaptive chunking on chunk \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"Adaptive chunking works best with an index on the dimension being adapted.\00", align 1
@MINMAX_FOUND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @chunk_get_minmax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chunk_get_minmax(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @AccessShareLock, align 4
  %14 = call i32 @heap_open(i32 %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @get_attname_compat(i32 %15, i32 %16, i32 0)
  %18 = call i32 @namestrcpy(i32* %10, i32 %17)
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = call i64 @relation_minmax_indexscan(i32 %19, i32 %20, i32* %10, i32 %21, i32* %22)
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* @MINMAX_NO_INDEX, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %4
  %28 = load i32, i32* @WARNING, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @NameStr(i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @get_rel_name(i32 %31)
  %33 = call i32 @errmsg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %32)
  %34 = call i32 @errdetail(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  %35 = call i32 @ereport(i32 %28, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = call i64 @minmax_heapscan(i32 %36, i32 %37, i32 %38, i32* %39)
  store i64 %40, i64* %11, align 8
  br label %41

41:                                               ; preds = %27, %4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @AccessShareLock, align 4
  %44 = call i32 @heap_close(i32 %42, i32 %43)
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* @MINMAX_FOUND, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  ret i32 %48
}

declare dso_local i32 @heap_open(i32, i32) #1

declare dso_local i32 @namestrcpy(i32*, i32) #1

declare dso_local i32 @get_attname_compat(i32, i32, i32) #1

declare dso_local i64 @relation_minmax_indexscan(i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @get_rel_name(i32) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i64 @minmax_heapscan(i32, i32, i32, i32*) #1

declare dso_local i32 @heap_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
