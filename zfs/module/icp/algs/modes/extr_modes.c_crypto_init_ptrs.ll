; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/algs/modes/extr_modes.c_crypto_init_ptrs.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/algs/modes/extr_modes.c_crypto_init_ptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crypto_init_ptrs(%struct.TYPE_7__* %0, i8** %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %61 [
    i32 129, label %13
    i32 128, label %18
  ]

13:                                               ; preds = %3
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %6, align 8
  store i32 %16, i32* %17, align 4
  br label %61

18:                                               ; preds = %3
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %8, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  store i64 0, i64* %9, align 8
  br label %25

25:                                               ; preds = %44, %18
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %32, %39
  br label %41

41:                                               ; preds = %31, %25
  %42 = phi i1 [ false, %25 ], [ %40, %31 ]
  br i1 %42, label %43, label %55

43:                                               ; preds = %41
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i64, i64* %9, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %48
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %25

55:                                               ; preds = %41
  %56 = load i32, i32* %7, align 4
  %57 = load i32*, i32** %6, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i64, i64* %9, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = load i8**, i8*** %5, align 8
  store i8* %59, i8** %60, align 8
  br label %61

61:                                               ; preds = %3, %55, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
