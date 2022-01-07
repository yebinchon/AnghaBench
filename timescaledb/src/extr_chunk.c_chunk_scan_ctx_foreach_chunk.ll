; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_chunk_scan_ctx_foreach_chunk.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_chunk_scan_ctx_foreach_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32 (%struct.TYPE_7__*, i32)*, i32)* @chunk_scan_ctx_foreach_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chunk_scan_ctx_foreach_chunk(%struct.TYPE_7__* %0, i32 (%struct.TYPE_7__*, i32)* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32 (%struct.TYPE_7__*, i32)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 (%struct.TYPE_7__*, i32)* %1, i32 (%struct.TYPE_7__*, i32)** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @hash_seq_init(i32* %8, i32 %13)
  %15 = call %struct.TYPE_8__* @hash_seq_search(i32* %8)
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %9, align 8
  br label %16

16:                                               ; preds = %46, %3
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  br i1 %18, label %19, label %48

19:                                               ; preds = %16
  %20 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %6, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 %20(%struct.TYPE_7__* %21, i32 %24)
  switch i32 %25, label %45 [
    i32 130, label %26
    i32 128, label %31
    i32 129, label %44
  ]

26:                                               ; preds = %19
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  %29 = call i32 @hash_seq_term(i32* %8)
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %4, align 4
  br label %50

31:                                               ; preds = %19
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = call i32 @hash_seq_term(i32* %8)
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %50

43:                                               ; preds = %36, %31
  br label %45

44:                                               ; preds = %19
  br label %45

45:                                               ; preds = %19, %44, %43
  br label %46

46:                                               ; preds = %45
  %47 = call %struct.TYPE_8__* @hash_seq_search(i32* %8)
  store %struct.TYPE_8__* %47, %struct.TYPE_8__** %9, align 8
  br label %16

48:                                               ; preds = %16
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %40, %26
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @hash_seq_init(i32*, i32) #1

declare dso_local %struct.TYPE_8__* @hash_seq_search(i32*) #1

declare dso_local i32 @hash_seq_term(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
