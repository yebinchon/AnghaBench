; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_get_required_buffer_size_type.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_get_required_buffer_size_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TDT_IGNORE_RANGES = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@pointer_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"get_required_buffer_size: unknown basic type 0x%02x\0A\00", align 1
@FC_STRUCT = common dso_local global i32 0, align 4
@FC_RP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i32, i32*)* @get_required_buffer_size_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_required_buffer_size_type(i32* %0, i8* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* @TDT_IGNORE_RANGES, align 4
  %20 = call i32 @typegen_detect_type(i32* %18, i32* null, i32 %19)
  switch i32 %20, label %128 [
    i32 128, label %21
    i32 132, label %29
    i32 131, label %51
    i32 129, label %59
    i32 130, label %75
    i32 133, label %106
  ]

21:                                               ; preds = %5
  store i8* null, i8** %12, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32* @get_user_type(i32* %22, i8** %12)
  store i32* %23, i32** %13, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = load i32, i32* @FALSE, align 4
  %27 = load i32*, i32** %11, align 8
  %28 = call i32 @get_required_buffer_size_type(i32* %24, i8* %25, i32* null, i32 %26, i32* %27)
  store i32 %28, i32* %6, align 4
  br label %130

29:                                               ; preds = %5
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @get_basic_fc(i32* %30)
  switch i32 %31, label %47 [
    i32 153, label %32
    i32 152, label %32
    i32 135, label %32
    i32 140, label %32
    i32 134, label %34
    i32 136, label %34
    i32 141, label %34
    i32 137, label %36
    i32 142, label %36
    i32 147, label %36
    i32 148, label %36
    i32 146, label %38
    i32 151, label %38
    i32 144, label %40
    i32 138, label %40
    i32 145, label %46
    i32 154, label %46
  ]

32:                                               ; preds = %29, %29, %29, %29
  %33 = load i32*, i32** %11, align 8
  store i32 4, i32* %33, align 4
  store i32 1, i32* %6, align 4
  br label %130

34:                                               ; preds = %29, %29, %29
  %35 = load i32*, i32** %11, align 8
  store i32 4, i32* %35, align 4
  store i32 2, i32* %6, align 4
  br label %130

36:                                               ; preds = %29, %29, %29, %29
  %37 = load i32*, i32** %11, align 8
  store i32 4, i32* %37, align 4
  store i32 4, i32* %6, align 4
  br label %130

38:                                               ; preds = %29, %29
  %39 = load i32*, i32** %11, align 8
  store i32 8, i32* %39, align 4
  store i32 8, i32* %6, align 4
  br label %130

40:                                               ; preds = %29, %29
  %41 = load i32, i32* @pointer_size, align 4
  %42 = call i32 @assert(i32 %41)
  %43 = load i32, i32* @pointer_size, align 4
  %44 = load i32*, i32** %11, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @pointer_size, align 4
  store i32 %45, i32* %6, align 4
  br label %130

46:                                               ; preds = %29, %29
  store i32 0, i32* %6, align 4
  br label %130

47:                                               ; preds = %29
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @get_basic_fc(i32* %48)
  %50 = call i32 @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %49)
  store i32 0, i32* %6, align 4
  br label %130

51:                                               ; preds = %5
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @get_enum_fc(i32* %52)
  switch i32 %53, label %58 [
    i32 149, label %54
    i32 150, label %56
  ]

54:                                               ; preds = %51
  %55 = load i32*, i32** %11, align 8
  store i32 4, i32* %55, align 4
  store i32 4, i32* %6, align 4
  br label %130

56:                                               ; preds = %51
  %57 = load i32*, i32** %11, align 8
  store i32 4, i32* %57, align 4
  store i32 2, i32* %6, align 4
  br label %130

58:                                               ; preds = %51
  br label %129

59:                                               ; preds = %5
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @get_struct_fc(i32* %60)
  %62 = load i32, i32* @FC_STRUCT, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @type_struct_get_fields(i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  store i32 0, i32* %6, align 4
  br label %130

69:                                               ; preds = %64
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @type_struct_get_fields(i32* %70)
  %72 = load i32*, i32** %11, align 8
  %73 = call i32 @fields_memsize(i32 %71, i32* %72)
  store i32 %73, i32* %6, align 4
  br label %130

74:                                               ; preds = %59
  br label %129

75:                                               ; preds = %5
  %76 = load i32*, i32** %7, align 8
  %77 = call i32* @type_pointer_get_ref(i32* %76)
  store i32* %77, i32** %16, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = load i32*, i32** %16, align 8
  %80 = call i32 @is_string_type(i32* %78, i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %129

83:                                               ; preds = %75
  %84 = load i32*, i32** %16, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = load i32, i32* @FALSE, align 4
  %87 = call i32 @get_required_buffer_size_type(i32* %84, i8* %85, i32* null, i32 %86, i32* %15)
  store i32 %87, i32* %14, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %83
  br label %129

90:                                               ; preds = %83
  %91 = load i32*, i32** %7, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @get_pointer_fc(i32* %91, i32* %92, i32 %93)
  %95 = load i32, i32* @FC_RP, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = load i32, i32* %15, align 4
  %99 = add i32 4, %98
  %100 = load i32, i32* %14, align 4
  %101 = add i32 %100, %99
  store i32 %101, i32* %14, align 4
  store i32 4, i32* %15, align 4
  br label %102

102:                                              ; preds = %97, %90
  %103 = load i32, i32* %15, align 4
  %104 = load i32*, i32** %11, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* %14, align 4
  store i32 %105, i32* %6, align 4
  br label %130

106:                                              ; preds = %5
  %107 = load i32*, i32** %7, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @get_pointer_fc(i32* %107, i32* %108, i32 %109)
  %111 = load i32, i32* @FC_RP, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %127

113:                                              ; preds = %106
  %114 = load i32*, i32** %7, align 8
  %115 = call i32 @get_array_fc(i32* %114)
  switch i32 %115, label %126 [
    i32 139, label %116
    i32 143, label %116
  ]

116:                                              ; preds = %113, %113
  %117 = load i32*, i32** %7, align 8
  %118 = call i32 @type_array_get_dim(i32* %117)
  %119 = load i32*, i32** %7, align 8
  %120 = call i32* @type_array_get_element(i32* %119)
  %121 = load i8*, i8** %8, align 8
  %122 = load i32, i32* @FALSE, align 4
  %123 = load i32*, i32** %11, align 8
  %124 = call i32 @get_required_buffer_size_type(i32* %120, i8* %121, i32* null, i32 %122, i32* %123)
  %125 = mul i32 %118, %124
  store i32 %125, i32* %6, align 4
  br label %130

126:                                              ; preds = %113
  br label %127

127:                                              ; preds = %126, %106
  br label %129

128:                                              ; preds = %5
  br label %129

129:                                              ; preds = %128, %127, %89, %82, %74, %58
  store i32 0, i32* %6, align 4
  br label %130

130:                                              ; preds = %129, %116, %102, %69, %68, %56, %54, %47, %46, %40, %38, %36, %34, %32, %21
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local i32 @typegen_detect_type(i32*, i32*, i32) #1

declare dso_local i32* @get_user_type(i32*, i8**) #1

declare dso_local i32 @get_basic_fc(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @get_enum_fc(i32*) #1

declare dso_local i32 @get_struct_fc(i32*) #1

declare dso_local i32 @type_struct_get_fields(i32*) #1

declare dso_local i32 @fields_memsize(i32, i32*) #1

declare dso_local i32* @type_pointer_get_ref(i32*) #1

declare dso_local i32 @is_string_type(i32*, i32*) #1

declare dso_local i32 @get_pointer_fc(i32*, i32*, i32) #1

declare dso_local i32 @get_array_fc(i32*) #1

declare dso_local i32 @type_array_get_dim(i32*) #1

declare dso_local i32* @type_array_get_element(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
