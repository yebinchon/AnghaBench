; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_variant_type.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_variant_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }

@_JSON_VARIANT_TYPE_INVALID = common dso_local global i32 0, align 4
@JSON_VARIANT_STRING = common dso_local global i32 0, align 4
@JSON_VARIANT_MAGIC_TRUE = common dso_local global %struct.TYPE_13__* null, align 8
@JSON_VARIANT_MAGIC_FALSE = common dso_local global %struct.TYPE_13__* null, align 8
@JSON_VARIANT_BOOLEAN = common dso_local global i32 0, align 4
@JSON_VARIANT_MAGIC_NULL = common dso_local global %struct.TYPE_13__* null, align 8
@JSON_VARIANT_NULL = common dso_local global i32 0, align 4
@JSON_VARIANT_MAGIC_ZERO_INTEGER = common dso_local global %struct.TYPE_13__* null, align 8
@JSON_VARIANT_INTEGER = common dso_local global i32 0, align 4
@JSON_VARIANT_MAGIC_ZERO_UNSIGNED = common dso_local global %struct.TYPE_13__* null, align 8
@JSON_VARIANT_UNSIGNED = common dso_local global i32 0, align 4
@JSON_VARIANT_MAGIC_ZERO_REAL = common dso_local global %struct.TYPE_13__* null, align 8
@JSON_VARIANT_REAL = common dso_local global i32 0, align 4
@JSON_VARIANT_MAGIC_EMPTY_STRING = common dso_local global %struct.TYPE_13__* null, align 8
@JSON_VARIANT_MAGIC_EMPTY_ARRAY = common dso_local global %struct.TYPE_13__* null, align 8
@JSON_VARIANT_ARRAY = common dso_local global i32 0, align 4
@JSON_VARIANT_MAGIC_EMPTY_OBJECT = common dso_local global %struct.TYPE_13__* null, align 8
@JSON_VARIANT_OBJECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_variant_type(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %4 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %5 = icmp ne %struct.TYPE_13__* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @_JSON_VARIANT_TYPE_INVALID, align 4
  store i32 %7, i32* %2, align 4
  br label %70

8:                                                ; preds = %1
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = call i64 @json_variant_is_const_string(%struct.TYPE_13__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* @JSON_VARIANT_STRING, align 4
  store i32 %13, i32* %2, align 4
  br label %70

14:                                               ; preds = %8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** @JSON_VARIANT_MAGIC_TRUE, align 8
  %17 = icmp eq %struct.TYPE_13__* %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** @JSON_VARIANT_MAGIC_FALSE, align 8
  %21 = icmp eq %struct.TYPE_13__* %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %14
  %23 = load i32, i32* @JSON_VARIANT_BOOLEAN, align 4
  store i32 %23, i32* %2, align 4
  br label %70

24:                                               ; preds = %18
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** @JSON_VARIANT_MAGIC_NULL, align 8
  %27 = icmp eq %struct.TYPE_13__* %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @JSON_VARIANT_NULL, align 4
  store i32 %29, i32* %2, align 4
  br label %70

30:                                               ; preds = %24
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** @JSON_VARIANT_MAGIC_ZERO_INTEGER, align 8
  %33 = icmp eq %struct.TYPE_13__* %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @JSON_VARIANT_INTEGER, align 4
  store i32 %35, i32* %2, align 4
  br label %70

36:                                               ; preds = %30
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** @JSON_VARIANT_MAGIC_ZERO_UNSIGNED, align 8
  %39 = icmp eq %struct.TYPE_13__* %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @JSON_VARIANT_UNSIGNED, align 4
  store i32 %41, i32* %2, align 4
  br label %70

42:                                               ; preds = %36
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** @JSON_VARIANT_MAGIC_ZERO_REAL, align 8
  %45 = icmp eq %struct.TYPE_13__* %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @JSON_VARIANT_REAL, align 4
  store i32 %47, i32* %2, align 4
  br label %70

48:                                               ; preds = %42
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** @JSON_VARIANT_MAGIC_EMPTY_STRING, align 8
  %51 = icmp eq %struct.TYPE_13__* %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @JSON_VARIANT_STRING, align 4
  store i32 %53, i32* %2, align 4
  br label %70

54:                                               ; preds = %48
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** @JSON_VARIANT_MAGIC_EMPTY_ARRAY, align 8
  %57 = icmp eq %struct.TYPE_13__* %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @JSON_VARIANT_ARRAY, align 4
  store i32 %59, i32* %2, align 4
  br label %70

60:                                               ; preds = %54
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** @JSON_VARIANT_MAGIC_EMPTY_OBJECT, align 8
  %63 = icmp eq %struct.TYPE_13__* %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @JSON_VARIANT_OBJECT, align 4
  store i32 %65, i32* %2, align 4
  br label %70

66:                                               ; preds = %60
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %66, %64, %58, %52, %46, %40, %34, %28, %22, %12, %6
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i64 @json_variant_is_const_string(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
