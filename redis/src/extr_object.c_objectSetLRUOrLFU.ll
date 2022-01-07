; ModuleID = '/home/carl/AnghaBench/redis/src/extr_object.c_objectSetLRUOrLFU.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_object.c_objectSetLRUOrLFU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@server = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@MAXMEMORY_FLAG_LFU = common dso_local global i32 0, align 4
@LRU_CLOCK_RESOLUTION = common dso_local global i64 0, align 8
@LRU_CLOCK_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @objectSetLRUOrLFU(%struct.TYPE_4__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 4
  %12 = load i32, i32* @MAXMEMORY_FLAG_LFU, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %4
  %16 = load i64, i64* %7, align 8
  %17 = icmp sge i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load i64, i64* %7, align 8
  %20 = icmp sle i64 %19, 255
  %21 = zext i1 %20 to i32
  %22 = call i32 @serverAssert(i32 %21)
  %23 = call i32 (...) @LFUGetTimeInMinutes()
  %24 = shl i32 %23, 8
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %7, align 8
  %27 = or i64 %25, %26
  %28 = trunc i64 %27 to i32
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  store i32 1, i32* %5, align 4
  br label %61

31:                                               ; preds = %15
  br label %60

32:                                               ; preds = %4
  %33 = load i64, i64* %8, align 8
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %32
  %36 = load i64, i64* %8, align 8
  %37 = mul nsw i64 %36, 1000
  %38 = load i64, i64* @LRU_CLOCK_RESOLUTION, align 8
  %39 = sdiv i64 %37, %38
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %8, align 8
  %42 = sub nsw i64 %40, %41
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %35
  %46 = load i64, i64* %9, align 8
  %47 = load i32, i32* @LRU_CLOCK_MAX, align 4
  %48 = sdiv i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %46, %49
  %51 = load i32, i32* @LRU_CLOCK_MAX, align 4
  %52 = sext i32 %51 to i64
  %53 = srem i64 %50, %52
  store i64 %53, i64* %10, align 8
  br label %54

54:                                               ; preds = %45, %35
  %55 = load i64, i64* %10, align 8
  %56 = trunc i64 %55 to i32
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  store i32 1, i32* %5, align 4
  br label %61

59:                                               ; preds = %32
  br label %60

60:                                               ; preds = %59, %31
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %54, %18
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32 @LFUGetTimeInMinutes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
