; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_write_conformant_array_pointer_descriptions.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_write_conformant_array_pointer_descriptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USHRT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"array size of %u bytes is too large\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"0x%02x, /* FC_VARIABLE_REPEAT */\0A\00", align 1
@FC_VARIABLE_REPEAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"0x%02x, /* FC_FIXED_OFFSET */\0A\00", align 1
@FC_FIXED_OFFSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"NdrFcShort(0x%hx),\09/* Increment = %d */\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"NdrFcShort(0x%hx),\09/* Offset to array = %d */\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"NdrFcShort(0x%hx),\09/* Number of pointers = %d */\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32, i32*)* @write_conformant_array_pointer_descriptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_conformant_array_pointer_descriptions(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = call i64 @is_conformant_array(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %76

19:                                               ; preds = %5
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @type_array_has_variance(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %76, label %23

23:                                               ; preds = %19
  store i32 0, i32* %12, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @type_array_get_element(i32* %25)
  %27 = call i32 @write_pointer_description_offsets(i32* null, i32* %24, i32 %26, i32* null, i32* null, i32* %12)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %75

30:                                               ; preds = %23
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %15, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @type_array_get_element(i32* %33)
  %35 = call i32 @type_memsize(i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @USHRT_MAX, align 4
  %38 = icmp ugt i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %30
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @FC_VARIABLE_REPEAT, align 4
  %45 = trunc i32 %44 to i16
  %46 = call i32 (i32*, i32, i8*, i16, ...) @print_file(i32* %43, i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %45)
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* @FC_FIXED_OFFSET, align 4
  %49 = trunc i32 %48 to i16
  %50 = call i32 (i32*, i32, i8*, i16, ...) @print_file(i32* %47, i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i16 zeroext %49)
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %13, align 4
  %53 = trunc i32 %52 to i16
  %54 = load i32, i32* %13, align 4
  %55 = call i32 (i32*, i32, i8*, i16, ...) @print_file(i32* %51, i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i16 zeroext %53, i32 %54)
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = trunc i32 %57 to i16
  %59 = load i32, i32* %9, align 4
  %60 = call i32 (i32*, i32, i8*, i16, ...) @print_file(i32* %56, i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i16 zeroext %58, i32 %59)
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %11, align 4
  %63 = trunc i32 %62 to i16
  %64 = load i32, i32* %11, align 4
  %65 = call i32 (i32*, i32, i8*, i16, ...) @print_file(i32* %61, i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i16 zeroext %63, i32 %64)
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %66, align 4
  %68 = add i32 %67, 8
  store i32 %68, i32* %66, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @type_array_get_element(i32* %71)
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @write_pointer_description_offsets(i32* %69, i32* %70, i32 %72, i32* %14, i32* %15, i32* %73)
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %42, %23
  br label %76

76:                                               ; preds = %75, %19, %5
  %77 = load i32, i32* %11, align 4
  ret i32 %77
}

declare dso_local i64 @is_conformant_array(i32*) #1

declare dso_local i32 @type_array_has_variance(i32*) #1

declare dso_local i32 @write_pointer_description_offsets(i32*, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @type_array_get_element(i32*) #1

declare dso_local i32 @type_memsize(i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @print_file(i32*, i32, i8*, i16 zeroext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
