; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_amatch.c_amatchAvlRecomputeHeight.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_amatch.c_amatchAvlRecomputeHeight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i16, i16, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i16 }
%struct.TYPE_5__ = type { i16 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @amatchAvlRecomputeHeight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amatchAvlRecomputeHeight(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i16, i16* %13, align 2
  %15 = sext i16 %14 to i32
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %9
  %18 = phi i32 [ %15, %9 ], [ 0, %16 ]
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %3, align 2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i16, i16* %28, align 2
  %30 = sext i16 %29 to i32
  br label %32

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31, %24
  %33 = phi i32 [ %30, %24 ], [ 0, %31 ]
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %4, align 2
  %35 = load i16, i16* %3, align 2
  %36 = sext i16 %35 to i32
  %37 = load i16, i16* %4, align 2
  %38 = sext i16 %37 to i32
  %39 = sub nsw i32 %36, %38
  %40 = trunc i32 %39 to i16
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i16 %40, i16* %42, align 8
  %43 = load i16, i16* %3, align 2
  %44 = sext i16 %43 to i32
  %45 = load i16, i16* %4, align 2
  %46 = sext i16 %45 to i32
  %47 = icmp sgt i32 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %32
  %49 = load i16, i16* %3, align 2
  %50 = sext i16 %49 to i32
  br label %54

51:                                               ; preds = %32
  %52 = load i16, i16* %4, align 2
  %53 = sext i16 %52 to i32
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi i32 [ %50, %48 ], [ %53, %51 ]
  %56 = add nsw i32 %55, 1
  %57 = trunc i32 %56 to i16
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  store i16 %57, i16* %59, align 2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
