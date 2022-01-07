; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_typegen_detect_type.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_typegen_detect_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TGT_USER_TYPE = common dso_local global i32 0, align 4
@ATTR_CONTEXTHANDLE = common dso_local global i32 0, align 4
@TGT_CTXT_HANDLE = common dso_local global i32 0, align 4
@TDT_IGNORE_STRINGS = common dso_local global i32 0, align 4
@TGT_STRING = common dso_local global i32 0, align 4
@TDT_IGNORE_RANGES = common dso_local global i32 0, align 4
@ATTR_RANGE = common dso_local global i32 0, align 4
@TGT_RANGE = common dso_local global i32 0, align 4
@TGT_BASIC = common dso_local global i32 0, align 4
@TGT_ENUM = common dso_local global i32 0, align 4
@ATTR_IIDIS = common dso_local global i32 0, align 4
@TGT_IFACE_POINTER = common dso_local global i32 0, align 4
@TGT_CTXT_HANDLE_POINTER = common dso_local global i32 0, align 4
@TGT_POINTER = common dso_local global i32 0, align 4
@TGT_STRUCT = common dso_local global i32 0, align 4
@TGT_UNION = common dso_local global i32 0, align 4
@TGT_ARRAY = common dso_local global i32 0, align 4
@TGT_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @typegen_detect_type(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = call i64 @is_user_type(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @TGT_USER_TYPE, align 4
  store i32 %12, i32* %4, align 4
  br label %109

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @ATTR_CONTEXTHANDLE, align 4
  %16 = call i64 @is_aliaschain_attr(i32* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @TGT_CTXT_HANDLE, align 4
  store i32 %19, i32* %4, align 4
  br label %109

20:                                               ; preds = %13
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @TDT_IGNORE_STRINGS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i64 @is_string_type(i32* %26, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @TGT_STRING, align 4
  store i32 %31, i32* %4, align 4
  br label %109

32:                                               ; preds = %25, %20
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @type_get_type(i32* %33)
  switch i32 %34, label %107 [
    i32 139, label %35
    i32 135, label %54
    i32 131, label %73
    i32 130, label %100
    i32 136, label %102
    i32 129, label %102
    i32 140, label %104
    i32 134, label %106
    i32 137, label %106
    i32 133, label %106
    i32 132, label %106
    i32 128, label %106
    i32 141, label %106
    i32 138, label %106
  ]

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @TDT_IGNORE_RANGES, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %35
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @ATTR_RANGE, align 4
  %43 = call i32 @is_attr(i32* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* @ATTR_RANGE, align 4
  %48 = call i64 @is_aliaschain_attr(i32* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45, %40
  %51 = load i32, i32* @TGT_RANGE, align 4
  store i32 %51, i32* %4, align 4
  br label %109

52:                                               ; preds = %45, %35
  %53 = load i32, i32* @TGT_BASIC, align 4
  store i32 %53, i32* %4, align 4
  br label %109

54:                                               ; preds = %32
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @TDT_IGNORE_RANGES, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %54
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* @ATTR_RANGE, align 4
  %62 = call i32 @is_attr(i32* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* @ATTR_RANGE, align 4
  %67 = call i64 @is_aliaschain_attr(i32* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64, %59
  %70 = load i32, i32* @TGT_RANGE, align 4
  store i32 %70, i32* %4, align 4
  br label %109

71:                                               ; preds = %64, %54
  %72 = load i32, i32* @TGT_ENUM, align 4
  store i32 %72, i32* %4, align 4
  br label %109

73:                                               ; preds = %32
  %74 = load i32*, i32** %5, align 8
  %75 = call i32* @type_pointer_get_ref(i32* %74)
  %76 = call i32 @type_get_type(i32* %75)
  %77 = icmp eq i32 %76, 133
  br i1 %77, label %88, label %78

78:                                               ; preds = %73
  %79 = load i32*, i32** %5, align 8
  %80 = call i32* @type_pointer_get_ref(i32* %79)
  %81 = call i32 @type_get_type(i32* %80)
  %82 = icmp eq i32 %81, 128
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* @ATTR_IIDIS, align 4
  %86 = call i32 @is_attr(i32* %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83, %73
  %89 = load i32, i32* @TGT_IFACE_POINTER, align 4
  store i32 %89, i32* %4, align 4
  br label %109

90:                                               ; preds = %83, %78
  %91 = load i32*, i32** %5, align 8
  %92 = call i32* @type_pointer_get_ref(i32* %91)
  %93 = load i32, i32* @ATTR_CONTEXTHANDLE, align 4
  %94 = call i64 @is_aliaschain_attr(i32* %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* @TGT_CTXT_HANDLE_POINTER, align 4
  store i32 %97, i32* %4, align 4
  br label %109

98:                                               ; preds = %90
  %99 = load i32, i32* @TGT_POINTER, align 4
  store i32 %99, i32* %4, align 4
  br label %109

100:                                              ; preds = %32
  %101 = load i32, i32* @TGT_STRUCT, align 4
  store i32 %101, i32* %4, align 4
  br label %109

102:                                              ; preds = %32, %32
  %103 = load i32, i32* @TGT_UNION, align 4
  store i32 %103, i32* %4, align 4
  br label %109

104:                                              ; preds = %32
  %105 = load i32, i32* @TGT_ARRAY, align 4
  store i32 %105, i32* %4, align 4
  br label %109

106:                                              ; preds = %32, %32, %32, %32, %32, %32, %32
  br label %107

107:                                              ; preds = %32, %106
  %108 = load i32, i32* @TGT_INVALID, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %107, %104, %102, %100, %98, %96, %88, %71, %69, %52, %50, %30, %18, %11
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i64 @is_user_type(i32*) #1

declare dso_local i64 @is_aliaschain_attr(i32*, i32) #1

declare dso_local i64 @is_string_type(i32*, i32*) #1

declare dso_local i32 @type_get_type(i32*) #1

declare dso_local i32 @is_attr(i32*, i32) #1

declare dso_local i32* @type_pointer_get_ref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
