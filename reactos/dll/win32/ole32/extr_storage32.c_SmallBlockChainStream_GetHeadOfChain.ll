; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_SmallBlockChainStream_GetHeadOfChain.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_SmallBlockChainStream_GetHeadOfChain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64*, i64, i32 }
%struct.TYPE_6__ = type { i64 }

@BLOCK_FIRST_SPECIAL = common dso_local global i64 0, align 8
@BLOCK_END_OF_CHAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*)* @SmallBlockChainStream_GetHeadOfChain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @SmallBlockChainStream_GetHeadOfChain(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = icmp ne i64* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %2, align 8
  br label %42

15:                                               ; preds = %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %15
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @StorageImpl_ReadDirEntry(i32 %23, i64 %26, %struct.TYPE_6__* %4)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @SUCCEEDED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @BLOCK_FIRST_SPECIAL, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %2, align 8
  br label %42

39:                                               ; preds = %31, %20
  br label %40

40:                                               ; preds = %39, %15
  %41 = load i64, i64* @BLOCK_END_OF_CHAIN, align 8
  store i64 %41, i64* %2, align 8
  br label %42

42:                                               ; preds = %40, %36, %10
  %43 = load i64, i64* %2, align 8
  ret i64 %43
}

declare dso_local i32 @StorageImpl_ReadDirEntry(i32, i64, %struct.TYPE_6__*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
