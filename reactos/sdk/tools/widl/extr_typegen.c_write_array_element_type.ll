; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_write_array_element_type.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_write_array_element_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }

@TYPE_CONTEXT_CONTAINER = common dso_local global i32 0, align 4
@TYPE_BASIC = common dso_local global i64 0, align 8
@TYPE_ENUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_17__*, i32, i32*)* @write_array_element_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_array_element_type(i32* %0, i32* %1, %struct.TYPE_17__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %14 = call %struct.TYPE_17__* @type_array_get_element(%struct.TYPE_17__* %13)
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %11, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %16 = call i32 @is_embedded_complex(%struct.TYPE_17__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %76, label %18

18:                                               ; preds = %5
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %20 = call i64 @is_ptr(%struct.TYPE_17__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %76

22:                                               ; preds = %18
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %24 = call %struct.TYPE_17__* @type_pointer_get_ref(%struct.TYPE_17__* %23)
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %12, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %26 = call i64 @processed(%struct.TYPE_17__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %31 = load i32, i32* @TYPE_CONTEXT_CONTAINER, align 4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @write_nonsimple_pointer(i32* %29, i32* null, %struct.TYPE_17__* %30, i32 %31, i32 %34, i32* %35)
  br label %83

37:                                               ; preds = %22
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load i32*, i32** %7, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %43 = call i64 @is_string_type(i32* %41, %struct.TYPE_17__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i32*, i32** %6, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %48 = load i32, i32* @TYPE_CONTEXT_CONTAINER, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @write_string_tfs(i32* %46, i32* null, %struct.TYPE_17__* %47, i32 %48, i32* null, i32* %49)
  br label %83

51:                                               ; preds = %40, %37
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %53 = call i64 @is_string_type(i32* null, %struct.TYPE_17__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %75, label %55

55:                                               ; preds = %51
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %57 = call i64 @type_get_type(%struct.TYPE_17__* %56)
  %58 = load i64, i64* @TYPE_BASIC, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %62 = call i64 @type_get_type(%struct.TYPE_17__* %61)
  %63 = load i64, i64* @TYPE_ENUM, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %60, %55
  %66 = load i32*, i32** %6, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %68 = load i32, i32* @TYPE_CONTEXT_CONTAINER, align 4
  %69 = call i64 @write_simple_pointer(i32* %66, i32* null, %struct.TYPE_17__* %67, i32 %68)
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %70, align 4
  %72 = zext i32 %71 to i64
  %73 = add nsw i64 %72, %69
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %70, align 4
  br label %83

75:                                               ; preds = %60, %51
  br label %76

76:                                               ; preds = %75, %18, %5
  %77 = load i32*, i32** %6, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @write_member_type(i32* %77, %struct.TYPE_17__* %78, i32 %79, i32* null, %struct.TYPE_17__* %80, i32* null, i32* %81)
  br label %83

83:                                               ; preds = %76, %65, %45, %28
  ret void
}

declare dso_local %struct.TYPE_17__* @type_array_get_element(%struct.TYPE_17__*) #1

declare dso_local i32 @is_embedded_complex(%struct.TYPE_17__*) #1

declare dso_local i64 @is_ptr(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @type_pointer_get_ref(%struct.TYPE_17__*) #1

declare dso_local i64 @processed(%struct.TYPE_17__*) #1

declare dso_local i32 @write_nonsimple_pointer(i32*, i32*, %struct.TYPE_17__*, i32, i32, i32*) #1

declare dso_local i64 @is_string_type(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @write_string_tfs(i32*, i32*, %struct.TYPE_17__*, i32, i32*, i32*) #1

declare dso_local i64 @type_get_type(%struct.TYPE_17__*) #1

declare dso_local i64 @write_simple_pointer(i32*, i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @write_member_type(i32*, %struct.TYPE_17__*, i32, i32*, %struct.TYPE_17__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
