; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_write_pointer_description.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_write_pointer_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@current_structure = common dso_local global i32 0, align 4
@TYPE_STRUCT = common dso_local global i64 0, align 8
@FC_CPSTRUCT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*)* @write_pointer_description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_pointer_description(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @is_array(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @write_no_repeat_pointer_descriptions(i32* %16, i32* null, i32* %17, i32* %10, i32* %9, i32* %18)
  br label %20

20:                                               ; preds = %15, %4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @write_fixed_array_pointer_descriptions(i32* %21, i32* null, i32* %22, i32* %10, i32* %9, i32* %23)
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @is_conformant_array(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %20
  %29 = load i32*, i32** %7, align 8
  %30 = call i64 @type_array_is_decl_as_ptr(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @current_structure, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %32, %28
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @write_conformant_array_pointer_descriptions(i32* %36, i32* %37, i32* %38, i32 0, i32* %39)
  br label %63

41:                                               ; preds = %32, %20
  %42 = load i32*, i32** %7, align 8
  %43 = call i64 @type_get_type(i32* %42)
  %44 = load i64, i64* @TYPE_STRUCT, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %41
  %47 = load i32*, i32** %7, align 8
  %48 = call i64 @get_struct_fc(i32* %47)
  %49 = load i64, i64* @FC_CPSTRUCT, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load i32*, i32** %7, align 8
  %53 = call %struct.TYPE_2__* @find_array_or_string_in_struct(i32* %52)
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %11, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @type_memsize(i32* %58)
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @write_conformant_array_pointer_descriptions(i32* %56, i32* null, i32* %57, i32 %59, i32* %60)
  br label %62

62:                                               ; preds = %51, %46, %41
  br label %63

63:                                               ; preds = %62, %35
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @write_varying_array_pointer_descriptions(i32* %64, i32* null, i32* %65, i32* %10, i32* %9, i32* %66)
  ret void
}

declare dso_local i32 @is_array(i32*) #1

declare dso_local i32 @write_no_repeat_pointer_descriptions(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @write_fixed_array_pointer_descriptions(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @is_conformant_array(i32*) #1

declare dso_local i64 @type_array_is_decl_as_ptr(i32*) #1

declare dso_local i32 @write_conformant_array_pointer_descriptions(i32*, i32*, i32*, i32, i32*) #1

declare dso_local i64 @type_get_type(i32*) #1

declare dso_local i64 @get_struct_fc(i32*) #1

declare dso_local %struct.TYPE_2__* @find_array_or_string_in_struct(i32*) #1

declare dso_local i32 @type_memsize(i32*) #1

declare dso_local i32 @write_varying_array_pointer_descriptions(i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
