; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_variant_normalize.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_variant_normalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JSON_VARIANT_MAGIC_TRUE = common dso_local global i32* null, align 8
@JSON_VARIANT_MAGIC_FALSE = common dso_local global i32* null, align 8
@JSON_VARIANT_MAGIC_NULL = common dso_local global i32* null, align 8
@JSON_VARIANT_MAGIC_ZERO_INTEGER = common dso_local global i32* null, align 8
@JSON_VARIANT_MAGIC_ZERO_UNSIGNED = common dso_local global i32* null, align 8
@JSON_VARIANT_MAGIC_ZERO_REAL = common dso_local global i32* null, align 8
@JSON_VARIANT_MAGIC_EMPTY_STRING = common dso_local global i32* null, align 8
@JSON_VARIANT_MAGIC_EMPTY_ARRAY = common dso_local global i32* null, align 8
@JSON_VARIANT_MAGIC_EMPTY_OBJECT = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @json_variant_normalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @json_variant_normalize(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %87

7:                                                ; preds = %1
  %8 = load i32*, i32** %3, align 8
  %9 = call i32* @json_variant_dereference(i32* %8)
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @json_variant_type(i32* %10)
  switch i32 %11, label %85 [
    i32 134, label %12
    i32 132, label %22
    i32 133, label %24
    i32 128, label %34
    i32 130, label %44
    i32 129, label %54
    i32 135, label %65
    i32 131, label %75
  ]

12:                                               ; preds = %7
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @json_variant_boolean(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32*, i32** @JSON_VARIANT_MAGIC_TRUE, align 8
  br label %20

18:                                               ; preds = %12
  %19 = load i32*, i32** @JSON_VARIANT_MAGIC_FALSE, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32* [ %17, %16 ], [ %19, %18 ]
  store i32* %21, i32** %2, align 8
  br label %87

22:                                               ; preds = %7
  %23 = load i32*, i32** @JSON_VARIANT_MAGIC_NULL, align 8
  store i32* %23, i32** %2, align 8
  br label %87

24:                                               ; preds = %7
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @json_variant_integer(i32* %25)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32*, i32** @JSON_VARIANT_MAGIC_ZERO_INTEGER, align 8
  br label %32

30:                                               ; preds = %24
  %31 = load i32*, i32** %3, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32* [ %29, %28 ], [ %31, %30 ]
  store i32* %33, i32** %2, align 8
  br label %87

34:                                               ; preds = %7
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @json_variant_unsigned(i32* %35)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32*, i32** @JSON_VARIANT_MAGIC_ZERO_UNSIGNED, align 8
  br label %42

40:                                               ; preds = %34
  %41 = load i32*, i32** %3, align 8
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32* [ %39, %38 ], [ %41, %40 ]
  store i32* %43, i32** %2, align 8
  br label %87

44:                                               ; preds = %7
  %45 = load i32*, i32** %3, align 8
  %46 = call double @json_variant_real(i32* %45)
  %47 = fcmp oeq double %46, 0.000000e+00
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32*, i32** @JSON_VARIANT_MAGIC_ZERO_REAL, align 8
  br label %52

50:                                               ; preds = %44
  %51 = load i32*, i32** %3, align 8
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32* [ %49, %48 ], [ %51, %50 ]
  store i32* %53, i32** %2, align 8
  br label %87

54:                                               ; preds = %7
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @json_variant_string(i32* %55)
  %57 = call i32 @isempty(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32*, i32** @JSON_VARIANT_MAGIC_EMPTY_STRING, align 8
  br label %63

61:                                               ; preds = %54
  %62 = load i32*, i32** %3, align 8
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32* [ %60, %59 ], [ %62, %61 ]
  store i32* %64, i32** %2, align 8
  br label %87

65:                                               ; preds = %7
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @json_variant_elements(i32* %66)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32*, i32** @JSON_VARIANT_MAGIC_EMPTY_ARRAY, align 8
  br label %73

71:                                               ; preds = %65
  %72 = load i32*, i32** %3, align 8
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32* [ %70, %69 ], [ %72, %71 ]
  store i32* %74, i32** %2, align 8
  br label %87

75:                                               ; preds = %7
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @json_variant_elements(i32* %76)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32*, i32** @JSON_VARIANT_MAGIC_EMPTY_OBJECT, align 8
  br label %83

81:                                               ; preds = %75
  %82 = load i32*, i32** %3, align 8
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32* [ %80, %79 ], [ %82, %81 ]
  store i32* %84, i32** %2, align 8
  br label %87

85:                                               ; preds = %7
  %86 = load i32*, i32** %3, align 8
  store i32* %86, i32** %2, align 8
  br label %87

87:                                               ; preds = %85, %83, %73, %63, %52, %42, %32, %22, %20, %6
  %88 = load i32*, i32** %2, align 8
  ret i32* %88
}

declare dso_local i32* @json_variant_dereference(i32*) #1

declare dso_local i32 @json_variant_type(i32*) #1

declare dso_local i32 @json_variant_boolean(i32*) #1

declare dso_local i32 @json_variant_integer(i32*) #1

declare dso_local i32 @json_variant_unsigned(i32*) #1

declare dso_local double @json_variant_real(i32*) #1

declare dso_local i32 @isempty(i32) #1

declare dso_local i32 @json_variant_string(i32*) #1

declare dso_local i32 @json_variant_elements(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
