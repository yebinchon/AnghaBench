; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_get_array_fc.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_get_array_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FC_LGFARRAY = common dso_local global i8 0, align 1
@FC_SMFARRAY = common dso_local global i8 0, align 1
@FC_CARRAY = common dso_local global i8 0, align 1
@FC_SMVARRAY = common dso_local global i8 0, align 1
@FC_LGVARRAY = common dso_local global i8 0, align 1
@FC_CVARRAY = common dso_local global i8 0, align 1
@TDT_IGNORE_STRINGS = common dso_local global i32 0, align 4
@FC_BOGUS_ARRAY = common dso_local global i8 0, align 1
@TYPE_BASIC_INT3264 = common dso_local global i32 0, align 4
@pointer_size = common dso_local global i32 0, align 4
@FC_ENUM16 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FC_RP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32*)* @get_array_fc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @get_array_fc(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32* @type_array_get_element(i32* %7)
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32* @type_array_get_conformance(i32* %9)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %1
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @type_memsize(i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @type_array_get_dim(i32* %17)
  %19 = mul i32 %16, %18
  %20 = zext i32 %19 to i64
  %21 = icmp ugt i64 %20, 65535
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i8, i8* @FC_LGFARRAY, align 1
  store i8 %23, i8* %3, align 1
  br label %26

24:                                               ; preds = %13
  %25 = load i8, i8* @FC_SMFARRAY, align 1
  store i8 %25, i8* %3, align 1
  br label %26

26:                                               ; preds = %24, %22
  br label %29

27:                                               ; preds = %1
  %28 = load i8, i8* @FC_CARRAY, align 1
  store i8 %28, i8* %3, align 1
  br label %29

29:                                               ; preds = %27, %26
  %30 = load i32*, i32** %2, align 8
  %31 = call i64 @type_array_has_variance(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %29
  %34 = load i8, i8* %3, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @FC_SMFARRAY, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i8, i8* @FC_SMVARRAY, align 1
  store i8 %40, i8* %3, align 1
  br label %59

41:                                               ; preds = %33
  %42 = load i8, i8* %3, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* @FC_LGFARRAY, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i8, i8* @FC_LGVARRAY, align 1
  store i8 %48, i8* %3, align 1
  br label %58

49:                                               ; preds = %41
  %50 = load i8, i8* %3, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @FC_CARRAY, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i8, i8* @FC_CVARRAY, align 1
  store i8 %56, i8* %3, align 1
  br label %57

57:                                               ; preds = %55, %49
  br label %58

58:                                               ; preds = %57, %47
  br label %59

59:                                               ; preds = %58, %39
  br label %60

60:                                               ; preds = %59, %29
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* @TDT_IGNORE_STRINGS, align 4
  %63 = call i32 @typegen_detect_type(i32* %61, i32* null, i32 %62)
  switch i32 %63, label %108 [
    i32 128, label %64
    i32 139, label %66
    i32 130, label %77
    i32 136, label %83
    i32 129, label %91
    i32 135, label %91
    i32 133, label %93
    i32 132, label %105
    i32 138, label %107
    i32 137, label %107
    i32 131, label %107
    i32 134, label %107
    i32 140, label %107
  ]

64:                                               ; preds = %60
  %65 = load i8, i8* @FC_BOGUS_ARRAY, align 1
  store i8 %65, i8* %3, align 1
  br label %108

66:                                               ; preds = %60
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @type_basic_get_type(i32* %67)
  %69 = load i32, i32* @TYPE_BASIC_INT3264, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i32, i32* @pointer_size, align 4
  %73 = icmp ne i32 %72, 4
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i8, i8* @FC_BOGUS_ARRAY, align 1
  store i8 %75, i8* %3, align 1
  br label %76

76:                                               ; preds = %74, %71, %66
  br label %108

77:                                               ; preds = %60
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @get_struct_fc(i32* %78)
  switch i32 %79, label %82 [
    i32 141, label %80
  ]

80:                                               ; preds = %77
  %81 = load i8, i8* @FC_BOGUS_ARRAY, align 1
  store i8 %81, i8* %3, align 1
  br label %82

82:                                               ; preds = %77, %80
  br label %108

83:                                               ; preds = %60
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @get_enum_fc(i32* %84)
  %86 = load i32, i32* @FC_ENUM16, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i8, i8* @FC_BOGUS_ARRAY, align 1
  store i8 %89, i8* %3, align 1
  br label %90

90:                                               ; preds = %88, %83
  br label %108

91:                                               ; preds = %60, %60
  %92 = load i8, i8* @FC_BOGUS_ARRAY, align 1
  store i8 %92, i8* %3, align 1
  br label %108

93:                                               ; preds = %60
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* @FALSE, align 4
  %96 = call i32 @get_pointer_fc(i32* %94, i32* null, i32 %95)
  %97 = load i32, i32* @FC_RP, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %102, label %99

99:                                               ; preds = %93
  %100 = load i32, i32* @pointer_size, align 4
  %101 = icmp ne i32 %100, 4
  br i1 %101, label %102, label %104

102:                                              ; preds = %99, %93
  %103 = load i8, i8* @FC_BOGUS_ARRAY, align 1
  store i8 %103, i8* %3, align 1
  br label %104

104:                                              ; preds = %102, %99
  br label %108

105:                                              ; preds = %60
  %106 = load i8, i8* @FC_BOGUS_ARRAY, align 1
  store i8 %106, i8* %3, align 1
  br label %108

107:                                              ; preds = %60, %60, %60, %60, %60
  br label %108

108:                                              ; preds = %60, %107, %105, %104, %91, %90, %82, %76, %64
  %109 = load i8, i8* %3, align 1
  ret i8 %109
}

declare dso_local i32* @type_array_get_element(i32*) #1

declare dso_local i32* @type_array_get_conformance(i32*) #1

declare dso_local i32 @type_memsize(i32*) #1

declare dso_local i32 @type_array_get_dim(i32*) #1

declare dso_local i64 @type_array_has_variance(i32*) #1

declare dso_local i32 @typegen_detect_type(i32*, i32*, i32) #1

declare dso_local i32 @type_basic_get_type(i32*) #1

declare dso_local i32 @get_struct_fc(i32*) #1

declare dso_local i32 @get_enum_fc(i32*) #1

declare dso_local i32 @get_pointer_fc(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
