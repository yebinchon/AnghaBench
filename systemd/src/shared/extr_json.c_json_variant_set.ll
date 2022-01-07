; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_variant_set.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_variant_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }

@INLINE_STRING_MAX = common dso_local global i32 0, align 4
@_fallthrough_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unexpected variant type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_16__*)* @json_variant_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @json_variant_set(%struct.TYPE_16__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_16__* %6)
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %9 = call %struct.TYPE_16__* @json_variant_dereference(%struct.TYPE_16__* %8)
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %4, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %11 = icmp ne %struct.TYPE_16__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i32 132, i32* %14, align 4
  br label %76

15:                                               ; preds = %2
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = call i32 @json_variant_type(%struct.TYPE_16__* %16)
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %74 [
    i32 133, label %23
    i32 128, label %29
    i32 130, label %35
    i32 134, label %41
    i32 129, label %47
    i32 135, label %65
    i32 131, label %65
    i32 132, label %73
  ]

23:                                               ; preds = %15
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %25 = call i32 @json_variant_integer(%struct.TYPE_16__* %24)
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 3
  store i32 %25, i32* %28, align 4
  br label %76

29:                                               ; preds = %15
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %31 = call i32 @json_variant_unsigned(%struct.TYPE_16__* %30)
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 4
  br label %76

35:                                               ; preds = %15
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %37 = call i32 @json_variant_real(%struct.TYPE_16__* %36)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  br label %76

41:                                               ; preds = %15
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %43 = call i32 @json_variant_boolean(%struct.TYPE_16__* %42)
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  br label %76

47:                                               ; preds = %15
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %49 = call i8* @json_variant_string(%struct.TYPE_16__* %48)
  store i8* %49, i8** %5, align 8
  %50 = call i32 @assert_se(i8* %49)
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* @INLINE_STRING_MAX, align 4
  %53 = add nsw i32 %52, 1
  %54 = call i32 @strnlen(i8* %51, i32 %53)
  %55 = load i32, i32* @INLINE_STRING_MAX, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %47
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @strcpy(i32 %60, i8* %61)
  br label %76

63:                                               ; preds = %47
  %64 = load i32, i32* @_fallthrough_, align 4
  br label %65

65:                                               ; preds = %15, %15, %63
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %69 = call i32 @json_variant_conservative_normalize(%struct.TYPE_16__* %68)
  %70 = call i32 @json_variant_ref(i32 %69)
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  br label %76

73:                                               ; preds = %15
  br label %76

74:                                               ; preds = %15
  %75 = call i32 @assert_not_reached(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %12, %74, %73, %65, %57, %41, %35, %29, %23
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @json_variant_dereference(%struct.TYPE_16__*) #1

declare dso_local i32 @json_variant_type(%struct.TYPE_16__*) #1

declare dso_local i32 @json_variant_integer(%struct.TYPE_16__*) #1

declare dso_local i32 @json_variant_unsigned(%struct.TYPE_16__*) #1

declare dso_local i32 @json_variant_real(%struct.TYPE_16__*) #1

declare dso_local i32 @json_variant_boolean(%struct.TYPE_16__*) #1

declare dso_local i32 @assert_se(i8*) #1

declare dso_local i8* @json_variant_string(%struct.TYPE_16__*) #1

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @json_variant_ref(i32) #1

declare dso_local i32 @json_variant_conservative_normalize(%struct.TYPE_16__*) #1

declare dso_local i32 @assert_not_reached(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
