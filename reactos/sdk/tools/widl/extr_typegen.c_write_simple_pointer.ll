; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_write_simple_pointer.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_write_simple_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@ATTR_IN = common dso_local global i32 0, align 4
@ATTR_OUT = common dso_local global i32 0, align 4
@FC_SIMPLE_POINTER = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [67 x i8] c"write_simple_pointer: can't handle type %s which is a string type\0A\00", align 1
@TYPE_ENUM = common dso_local global i64 0, align 8
@current_iface = common dso_local global i32 0, align 4
@current_func = common dso_local global i32 0, align 4
@FC_RP = common dso_local global i8 0, align 1
@FC_ALLOCED_ON_STACK = common dso_local global i8 0, align 1
@MODE_Oif = common dso_local global i64 0, align 8
@TYPE_CONTEXT_TOPLEVELPARAM = common dso_local global i32 0, align 4
@FC_ENUM16 = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"0x%02x, 0x%x,\09/* %s %s[simple_pointer] */\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"[allocated_on_stack] \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"0x%02x,\09/* %s */\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"0x5c,\09/* FC_PAD */\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_10__*, i32)* @write_simple_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_simple_pointer(i32* %0, i32* %1, %struct.TYPE_10__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* @ATTR_IN, align 4
  %17 = call i32 @is_attr(i32* %15, i32 %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @ATTR_OUT, align 4
  %20 = call i32 @is_attr(i32* %18, i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i8, i8* @FC_SIMPLE_POINTER, align 1
  store i8 %21, i8* %14, align 1
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %24 = call i64 @is_string_type(i32* %22, %struct.TYPE_10__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @error(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %26, %4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call zeroext i8 @get_pointer_fc_context(%struct.TYPE_10__* %32, i32* %33, i32 %34)
  store i8 %35, i8* %10, align 1
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %37 = call %struct.TYPE_10__* @type_pointer_get_ref(%struct.TYPE_10__* %36)
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %11, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %39 = call i64 @type_get_type(%struct.TYPE_10__* %38)
  %40 = load i64, i64* @TYPE_ENUM, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %44 = call zeroext i8 @get_enum_fc(%struct.TYPE_10__* %43)
  store i8 %44, i8* %9, align 1
  br label %48

45:                                               ; preds = %31
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %47 = call zeroext i8 @get_basic_fc(%struct.TYPE_10__* %46)
  store i8 %47, i8* %9, align 1
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* @current_iface, align 4
  %50 = load i32, i32* @current_func, align 4
  %51 = call i32 @is_interpreted_func(i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %53
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %72, label %59

59:                                               ; preds = %56
  %60 = load i8, i8* %10, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* @FC_RP, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load i8, i8* @FC_ALLOCED_ON_STACK, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* %14, align 1
  %69 = zext i8 %68 to i32
  %70 = or i32 %69, %67
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %14, align 1
  br label %72

72:                                               ; preds = %65, %59, %56, %53
  br label %102

73:                                               ; preds = %48
  %74 = call i64 (...) @get_stub_mode()
  %75 = load i64, i64* @MODE_Oif, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %73
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @TYPE_CONTEXT_TOPLEVELPARAM, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %77
  %82 = load i8, i8* %9, align 1
  %83 = zext i8 %82 to i32
  %84 = load i8, i8* @FC_ENUM16, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %81
  %88 = load i8, i8* %10, align 1
  %89 = zext i8 %88 to i32
  %90 = load i8, i8* @FC_RP, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %87
  %94 = load i8, i8* @FC_ALLOCED_ON_STACK, align 1
  %95 = zext i8 %94 to i32
  %96 = load i8, i8* %14, align 1
  %97 = zext i8 %96 to i32
  %98 = or i32 %97, %95
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %14, align 1
  br label %100

100:                                              ; preds = %93, %87, %81, %77
  br label %101

101:                                              ; preds = %100, %73
  br label %102

102:                                              ; preds = %101, %72
  %103 = load i32*, i32** %5, align 8
  %104 = load i8, i8* %10, align 1
  %105 = zext i8 %104 to i32
  %106 = load i8, i8* %14, align 1
  %107 = zext i8 %106 to i32
  %108 = load i8, i8* %10, align 1
  %109 = call i32 @string_of_type(i8 zeroext %108)
  %110 = load i8, i8* %14, align 1
  %111 = zext i8 %110 to i32
  %112 = load i8, i8* @FC_ALLOCED_ON_STACK, align 1
  %113 = zext i8 %112 to i32
  %114 = and i32 %111, %113
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %118 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %103, i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %105, i32 %107, i32 %109, i8* %117)
  %119 = load i32*, i32** %5, align 8
  %120 = load i8, i8* %9, align 1
  %121 = zext i8 %120 to i32
  %122 = load i8, i8* %9, align 1
  %123 = call i32 @string_of_type(i8 zeroext %122)
  %124 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %119, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %121, i32 %123)
  %125 = load i32*, i32** %5, align 8
  %126 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %125, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  ret i32 4
}

declare dso_local i32 @is_attr(i32*, i32) #1

declare dso_local i64 @is_string_type(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local zeroext i8 @get_pointer_fc_context(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local %struct.TYPE_10__* @type_pointer_get_ref(%struct.TYPE_10__*) #1

declare dso_local i64 @type_get_type(%struct.TYPE_10__*) #1

declare dso_local zeroext i8 @get_enum_fc(%struct.TYPE_10__*) #1

declare dso_local zeroext i8 @get_basic_fc(%struct.TYPE_10__*) #1

declare dso_local i32 @is_interpreted_func(i32, i32) #1

declare dso_local i64 @get_stub_mode(...) #1

declare dso_local i32 @print_file(i32*, i32, i8*, ...) #1

declare dso_local i32 @string_of_type(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
