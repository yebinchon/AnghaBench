; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_do_receipts.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_do_receipts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32, i32 (%struct.TYPE_8__*, i64, i32, i32)* }
%struct.TYPE_7__ = type { i32*, %struct.Receipts* }
%struct.Receipts = type { i32, i32, %struct.Receipts* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i64)* @do_receipts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_receipts(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.Receipts*, align 8
  %7 = alloca %struct.Receipts*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @friend_not_valid(%struct.TYPE_8__* %8, i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %82

13:                                               ; preds = %2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load %struct.Receipts*, %struct.Receipts** %19, align 8
  store %struct.Receipts* %20, %struct.Receipts** %6, align 8
  br label %21

21:                                               ; preds = %54, %13
  %22 = load %struct.Receipts*, %struct.Receipts** %6, align 8
  %23 = icmp ne %struct.Receipts* %22, null
  br i1 %23, label %24, label %65

24:                                               ; preds = %21
  %25 = load %struct.Receipts*, %struct.Receipts** %6, align 8
  %26 = getelementptr inbounds %struct.Receipts, %struct.Receipts* %25, i32 0, i32 2
  %27 = load %struct.Receipts*, %struct.Receipts** %26, align 8
  store %struct.Receipts* %27, %struct.Receipts** %7, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.Receipts*, %struct.Receipts** %6, align 8
  %31 = getelementptr inbounds %struct.Receipts, %struct.Receipts* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @friend_received_packet(%struct.TYPE_8__* %28, i64 %29, i32 %32)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %65

36:                                               ; preds = %24
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i32 (%struct.TYPE_8__*, i64, i32, i32)*, i32 (%struct.TYPE_8__*, i64, i32, i32)** %38, align 8
  %40 = icmp ne i32 (%struct.TYPE_8__*, i64, i32, i32)* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load i32 (%struct.TYPE_8__*, i64, i32, i32)*, i32 (%struct.TYPE_8__*, i64, i32, i32)** %43, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.Receipts*, %struct.Receipts** %6, align 8
  %48 = getelementptr inbounds %struct.Receipts, %struct.Receipts* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 %44(%struct.TYPE_8__* %45, i64 %46, i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %41, %36
  %55 = load %struct.Receipts*, %struct.Receipts** %6, align 8
  %56 = call i32 @free(%struct.Receipts* %55)
  %57 = load %struct.Receipts*, %struct.Receipts** %7, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  store %struct.Receipts* %57, %struct.Receipts** %63, align 8
  %64 = load %struct.Receipts*, %struct.Receipts** %7, align 8
  store %struct.Receipts* %64, %struct.Receipts** %6, align 8
  br label %21

65:                                               ; preds = %35, %21
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = load i64, i64* %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load %struct.Receipts*, %struct.Receipts** %71, align 8
  %73 = icmp ne %struct.Receipts* %72, null
  br i1 %73, label %81, label %74

74:                                               ; preds = %65
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = load i64, i64* %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  store i32* null, i32** %80, align 8
  br label %81

81:                                               ; preds = %74, %65
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %12
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @friend_not_valid(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @friend_received_packet(%struct.TYPE_8__*, i64, i32) #1

declare dso_local i32 @free(%struct.Receipts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
