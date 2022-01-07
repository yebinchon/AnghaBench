; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_variant_by_index.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_variant_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_9__*, i64, i32 }

@JSON_VARIANT_MAGIC_EMPTY_ARRAY = common dso_local global %struct.TYPE_9__* null, align 8
@JSON_VARIANT_MAGIC_EMPTY_OBJECT = common dso_local global %struct.TYPE_9__* null, align 8
@JSON_VARIANT_ARRAY = common dso_local global i32 0, align 4
@JSON_VARIANT_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"Element in non-array/non-object JSON variant requested by index, returning NULL.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @json_variant_by_index(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %7 = icmp ne %struct.TYPE_9__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %58

9:                                                ; preds = %2
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** @JSON_VARIANT_MAGIC_EMPTY_ARRAY, align 8
  %12 = icmp eq %struct.TYPE_9__* %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** @JSON_VARIANT_MAGIC_EMPTY_OBJECT, align 8
  %16 = icmp eq %struct.TYPE_9__* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %9
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %58

18:                                               ; preds = %13
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = call i32 @json_variant_is_regular(%struct.TYPE_9__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %56

23:                                               ; preds = %18
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @JSON_VARIANT_ARRAY, align 4
  %28 = load i32, i32* @JSON_VARIANT_OBJECT, align 4
  %29 = call i32 @IN_SET(i32 %26, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  br label %56

32:                                               ; preds = %23
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call %struct.TYPE_9__* @json_variant_by_index(%struct.TYPE_9__* %40, i64 %41)
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %3, align 8
  br label %58

43:                                               ; preds = %32
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp uge i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %58

50:                                               ; preds = %43
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 1
  %53 = load i64, i64* %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 %53
  %55 = call %struct.TYPE_9__* @json_variant_conservative_normalize(%struct.TYPE_9__* %54)
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %3, align 8
  br label %58

56:                                               ; preds = %31, %22
  %57 = call i32 @log_debug(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %58

58:                                               ; preds = %56, %50, %49, %37, %17, %8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %59
}

declare dso_local i32 @json_variant_is_regular(%struct.TYPE_9__*) #1

declare dso_local i32 @IN_SET(i32, i32, i32) #1

declare dso_local %struct.TYPE_9__* @json_variant_conservative_normalize(%struct.TYPE_9__*) #1

declare dso_local i32 @log_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
