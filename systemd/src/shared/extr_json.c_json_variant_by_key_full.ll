; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_variant_by_key_full.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_variant_by_key_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i32, i64 }

@JSON_VARIANT_MAGIC_EMPTY_OBJECT = common dso_local global %struct.TYPE_14__* null, align 8
@JSON_VARIANT_OBJECT = common dso_local global i64 0, align 8
@JSON_VARIANT_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Element in non-object JSON variant requested by key, returning NULL.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @json_variant_by_key_full(%struct.TYPE_14__* %0, i8* %1, %struct.TYPE_14__** %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_14__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_14__** %2, %struct.TYPE_14__*** %7, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %11 = icmp ne %struct.TYPE_14__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %91

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  br label %91

17:                                               ; preds = %13
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** @JSON_VARIANT_MAGIC_EMPTY_OBJECT, align 8
  %20 = icmp eq %struct.TYPE_14__* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %91

22:                                               ; preds = %17
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %24 = call i32 @json_variant_is_regular(%struct.TYPE_14__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  br label %97

27:                                               ; preds = %22
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @JSON_VARIANT_OBJECT, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %97

34:                                               ; preds = %27
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call %struct.TYPE_14__* @json_variant_by_key(i32 %42, i8* %43)
  store %struct.TYPE_14__* %44, %struct.TYPE_14__** %4, align 8
  br label %104

45:                                               ; preds = %34
  store i64 0, i64* %8, align 8
  br label %46

46:                                               ; preds = %87, %45
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %47, %50
  br i1 %51, label %52, label %90

52:                                               ; preds = %46
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i64 1
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i64 %55
  %57 = call %struct.TYPE_14__* @json_variant_dereference(%struct.TYPE_14__* %56)
  store %struct.TYPE_14__* %57, %struct.TYPE_14__** %9, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %59 = load i32, i32* @JSON_VARIANT_STRING, align 4
  %60 = call i32 @json_variant_has_type(%struct.TYPE_14__* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %52
  br label %87

63:                                               ; preds = %52
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %65 = call i32 @json_variant_string(%struct.TYPE_14__* %64)
  %66 = load i8*, i8** %6, align 8
  %67 = call i64 @streq(i32 %65, i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %63
  %70 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %71 = icmp ne %struct.TYPE_14__** %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i64 1
  %75 = load i64, i64* %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i64 %75
  %77 = call %struct.TYPE_14__* @json_variant_conservative_normalize(%struct.TYPE_14__* %76)
  %78 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  store %struct.TYPE_14__* %77, %struct.TYPE_14__** %78, align 8
  br label %79

79:                                               ; preds = %72, %69
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i64 1
  %82 = load i64, i64* %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i64 1
  %85 = call %struct.TYPE_14__* @json_variant_conservative_normalize(%struct.TYPE_14__* %84)
  store %struct.TYPE_14__* %85, %struct.TYPE_14__** %4, align 8
  br label %104

86:                                               ; preds = %63
  br label %87

87:                                               ; preds = %86, %62
  %88 = load i64, i64* %8, align 8
  %89 = add i64 %88, 2
  store i64 %89, i64* %8, align 8
  br label %46

90:                                               ; preds = %46
  br label %91

91:                                               ; preds = %90, %21, %16, %12
  %92 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %93 = icmp ne %struct.TYPE_14__** %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %95, align 8
  br label %96

96:                                               ; preds = %94, %91
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %104

97:                                               ; preds = %33, %26
  %98 = call i32 @log_debug(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %99 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %100 = icmp ne %struct.TYPE_14__** %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %102, align 8
  br label %103

103:                                              ; preds = %101, %97
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %104

104:                                              ; preds = %103, %96, %79, %39
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  ret %struct.TYPE_14__* %105
}

declare dso_local i32 @json_variant_is_regular(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @json_variant_by_key(i32, i8*) #1

declare dso_local %struct.TYPE_14__* @json_variant_dereference(%struct.TYPE_14__*) #1

declare dso_local i32 @json_variant_has_type(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @streq(i32, i8*) #1

declare dso_local i32 @json_variant_string(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @json_variant_conservative_normalize(%struct.TYPE_14__*) #1

declare dso_local i32 @log_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
