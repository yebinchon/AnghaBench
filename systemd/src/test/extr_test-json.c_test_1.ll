; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-json.c_test_1.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-json.c_test_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"k\00", align 1
@JSON_VARIANT_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@JSON_VARIANT_ARRAY = common dso_local global i64 0, align 8
@JSON_VARIANT_UNSIGNED = common dso_local global i64 0, align 8
@JSON_VARIANT_INTEGER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@JSON_VARIANT_OBJECT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"zap\00", align 1
@JSON_VARIANT_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_1(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @json_variant_elements(i32* %6)
  %8 = icmp eq i32 %7, 6
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert_se(i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32* @json_variant_by_key(i32* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @json_variant_type(i32* %16)
  %18 = load i64, i64* @JSON_VARIANT_STRING, align 8
  %19 = icmp eq i64 %17, %18
  br label %20

20:                                               ; preds = %15, %1
  %21 = phi i1 [ false, %1 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert_se(i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @json_variant_string(i32* %24)
  %26 = call i32 @streq(i32 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @assert_se(i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32* @json_variant_by_key(i32* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32* %29, i32** %3, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %20
  %33 = load i32*, i32** %3, align 8
  %34 = call i64 @json_variant_type(i32* %33)
  %35 = load i64, i64* @JSON_VARIANT_ARRAY, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @json_variant_elements(i32* %38)
  %40 = icmp eq i32 %39, 3
  br label %41

41:                                               ; preds = %37, %32, %20
  %42 = phi i1 [ false, %32 ], [ false, %20 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert_se(i32 %43)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %86, %41
  %46 = load i32, i32* %5, align 4
  %47 = icmp ult i32 %46, 3
  br i1 %47, label %48, label %89

48:                                               ; preds = %45
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32* @json_variant_by_index(i32* %49, i32 %50)
  store i32* %51, i32** %4, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load i32*, i32** %4, align 8
  %56 = call i64 @json_variant_type(i32* %55)
  %57 = load i64, i64* @JSON_VARIANT_UNSIGNED, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @json_variant_unsigned(i32* %60)
  %62 = load i32, i32* %5, align 4
  %63 = add i32 %62, 1
  %64 = icmp eq i32 %61, %63
  br label %65

65:                                               ; preds = %59, %54, %48
  %66 = phi i1 [ false, %54 ], [ false, %48 ], [ %64, %59 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert_se(i32 %67)
  %69 = load i32*, i32** %4, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %82

71:                                               ; preds = %65
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* @JSON_VARIANT_INTEGER, align 4
  %74 = call i64 @json_variant_has_type(i32* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @json_variant_integer(i32* %77)
  %79 = load i32, i32* %5, align 4
  %80 = add i32 %79, 1
  %81 = icmp eq i32 %78, %80
  br label %82

82:                                               ; preds = %76, %71, %65
  %83 = phi i1 [ false, %71 ], [ false, %65 ], [ %81, %76 ]
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert_se(i32 %84)
  br label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %5, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %45

89:                                               ; preds = %45
  %90 = load i32*, i32** %2, align 8
  %91 = call i32* @json_variant_by_key(i32* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32* %91, i32** %3, align 8
  %92 = load i32*, i32** %3, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = load i32*, i32** %3, align 8
  %96 = call i64 @json_variant_type(i32* %95)
  %97 = load i64, i64* @JSON_VARIANT_OBJECT, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @json_variant_elements(i32* %100)
  %102 = icmp eq i32 %101, 2
  br label %103

103:                                              ; preds = %99, %94, %89
  %104 = phi i1 [ false, %94 ], [ false, %89 ], [ %102, %99 ]
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert_se(i32 %105)
  %107 = load i32*, i32** %3, align 8
  %108 = call i32* @json_variant_by_key(i32* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32* %108, i32** %4, align 8
  %109 = load i32*, i32** %4, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %103
  %112 = load i32*, i32** %4, align 8
  %113 = call i64 @json_variant_type(i32* %112)
  %114 = load i64, i64* @JSON_VARIANT_NULL, align 8
  %115 = icmp eq i64 %113, %114
  br label %116

116:                                              ; preds = %111, %103
  %117 = phi i1 [ false, %103 ], [ %115, %111 ]
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert_se(i32 %118)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @json_variant_elements(i32*) #1

declare dso_local i32* @json_variant_by_key(i32*, i8*) #1

declare dso_local i64 @json_variant_type(i32*) #1

declare dso_local i32 @streq(i32, i8*) #1

declare dso_local i32 @json_variant_string(i32*) #1

declare dso_local i32* @json_variant_by_index(i32*, i32) #1

declare dso_local i32 @json_variant_unsigned(i32*) #1

declare dso_local i64 @json_variant_has_type(i32*, i32) #1

declare dso_local i32 @json_variant_integer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
