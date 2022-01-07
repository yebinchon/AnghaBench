; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_add_receipt.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_add_receipt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.Receipts*, %struct.Receipts* }
%struct.Receipts = type { %struct.Receipts*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, i8*, i8*)* @add_receipt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_receipt(%struct.TYPE_6__* %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.Receipts*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i64 @friend_not_valid(%struct.TYPE_6__* %11, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %64

16:                                               ; preds = %4
  %17 = call %struct.Receipts* @calloc(i32 1, i32 24)
  store %struct.Receipts* %17, %struct.Receipts** %10, align 8
  %18 = load %struct.Receipts*, %struct.Receipts** %10, align 8
  %19 = icmp ne %struct.Receipts* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32 -1, i32* %5, align 4
  br label %64

21:                                               ; preds = %16
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct.Receipts*, %struct.Receipts** %10, align 8
  %24 = getelementptr inbounds %struct.Receipts, %struct.Receipts* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load %struct.Receipts*, %struct.Receipts** %10, align 8
  %27 = getelementptr inbounds %struct.Receipts, %struct.Receipts* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load %struct.Receipts*, %struct.Receipts** %33, align 8
  %35 = icmp ne %struct.Receipts* %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %21
  %37 = load %struct.Receipts*, %struct.Receipts** %10, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store %struct.Receipts* %37, %struct.Receipts** %43, align 8
  br label %54

44:                                               ; preds = %21
  %45 = load %struct.Receipts*, %struct.Receipts** %10, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.Receipts*, %struct.Receipts** %51, align 8
  %53 = getelementptr inbounds %struct.Receipts, %struct.Receipts* %52, i32 0, i32 0
  store %struct.Receipts* %45, %struct.Receipts** %53, align 8
  br label %54

54:                                               ; preds = %44, %36
  %55 = load %struct.Receipts*, %struct.Receipts** %10, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store %struct.Receipts* %55, %struct.Receipts** %61, align 8
  %62 = load %struct.Receipts*, %struct.Receipts** %10, align 8
  %63 = getelementptr inbounds %struct.Receipts, %struct.Receipts* %62, i32 0, i32 0
  store %struct.Receipts* null, %struct.Receipts** %63, align 8
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %54, %20, %15
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i64 @friend_not_valid(%struct.TYPE_6__*, i64) #1

declare dso_local %struct.Receipts* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
