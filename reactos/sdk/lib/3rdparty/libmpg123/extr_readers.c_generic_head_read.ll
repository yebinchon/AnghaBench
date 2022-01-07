; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_readers.c_generic_head_read.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_readers.c_generic_head_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i8*, i32)* }

@READER_MORE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64*)* @generic_head_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_head_read(%struct.TYPE_6__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca [4 x i8], align 1
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32 (%struct.TYPE_6__*, i8*, i32)*, i32 (%struct.TYPE_6__*, i8*, i32)** %11, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %15 = call i32 %12(%struct.TYPE_6__* %13, i8* %14, i32 4)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @READER_MORE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %47

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 4
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %3, align 4
  br label %47

26:                                               ; preds = %21
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i64
  %30 = shl i64 %29, 24
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i64
  %34 = shl i64 %33, 16
  %35 = or i64 %30, %34
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i64
  %39 = shl i64 %38, 8
  %40 = or i64 %35, %39
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 3
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i64
  %44 = or i64 %40, %43
  %45 = load i64*, i64** %5, align 8
  store i64 %44, i64* %45, align 8
  %46 = load i32, i32* @TRUE, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %26, %24, %19
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
