; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_variant_elements.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_variant_elements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_6__*, i64, i32 }

@JSON_VARIANT_MAGIC_EMPTY_ARRAY = common dso_local global %struct.TYPE_6__* null, align 8
@JSON_VARIANT_MAGIC_EMPTY_OBJECT = common dso_local global %struct.TYPE_6__* null, align 8
@JSON_VARIANT_ARRAY = common dso_local global i32 0, align 4
@JSON_VARIANT_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"Number of elements in non-array/non-object JSON variant requested, returning 0.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @json_variant_elements(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %5 = icmp ne %struct.TYPE_6__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %46

7:                                                ; preds = %1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @JSON_VARIANT_MAGIC_EMPTY_ARRAY, align 8
  %10 = icmp eq %struct.TYPE_6__* %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @JSON_VARIANT_MAGIC_EMPTY_OBJECT, align 8
  %14 = icmp eq %struct.TYPE_6__* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %7
  store i64 0, i64* %2, align 8
  br label %46

16:                                               ; preds = %11
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = call i32 @json_variant_is_regular(%struct.TYPE_6__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %44

21:                                               ; preds = %16
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @JSON_VARIANT_ARRAY, align 4
  %26 = load i32, i32* @JSON_VARIANT_OBJECT, align 4
  %27 = call i32 @IN_SET(i32 %24, i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  br label %44

30:                                               ; preds = %21
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = call i64 @json_variant_elements(%struct.TYPE_6__* %38)
  store i64 %39, i64* %2, align 8
  br label %46

40:                                               ; preds = %30
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %2, align 8
  br label %46

44:                                               ; preds = %29, %20
  %45 = call i32 @log_debug(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %2, align 8
  br label %46

46:                                               ; preds = %44, %40, %35, %15, %6
  %47 = load i64, i64* %2, align 8
  ret i64 %47
}

declare dso_local i32 @json_variant_is_regular(%struct.TYPE_6__*) #1

declare dso_local i32 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @log_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
