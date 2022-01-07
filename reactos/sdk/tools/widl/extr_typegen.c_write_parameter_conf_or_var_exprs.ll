; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_write_parameter_conf_or_var_exprs.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_write_parameter_conf_or_var_exprs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_9__ = type { i32 }

@TDT_IGNORE_STRINGS = common dso_local global i32 0, align 4
@TDT_IGNORE_RANGES = common dso_local global i32 0, align 4
@EXPR_VOID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"__frame->_StubMsg.MaxCount = (ULONG_PTR)\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c";\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"__frame->_StubMsg.Offset = 0;\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"__frame->_StubMsg.ActualCount = (ULONG_PTR)\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"__frame->_StubMsg.ActualCount = __frame->_StubMsg.MaxCount;\0A\0A\00", align 1
@TYPE_UNION = common dso_local global i32 0, align 4
@ATTR_SWITCHIS = common dso_local global i32 0, align 4
@ATTR_IIDIS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"__frame->_StubMsg.MaxCount = (ULONG_PTR) \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_parameter_conf_or_var_exprs(i32* %0, i32 %1, i8* %2, i32 %3, %struct.TYPE_8__* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %13, align 8
  br label %18

18:                                               ; preds = %127, %6
  %19 = load i32*, i32** %13, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @TDT_IGNORE_STRINGS, align 4
  %24 = load i32, i32* @TDT_IGNORE_RANGES, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @typegen_detect_type(i32* %19, i32 %22, i32 %25)
  switch i32 %26, label %131 [
    i32 140, label %27
    i32 129, label %81
    i32 135, label %105
    i32 133, label %127
    i32 134, label %130
    i32 128, label %130
    i32 138, label %130
    i32 137, label %130
    i32 131, label %130
    i32 139, label %130
    i32 136, label %130
    i32 130, label %130
    i32 132, label %130
  ]

27:                                               ; preds = %18
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @is_conformance_needed_for_phase(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %80

31:                                               ; preds = %27
  %32 = load i32*, i32** %13, align 8
  %33 = call i32 @type_array_has_conformance(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = load i32*, i32** %13, align 8
  %37 = call %struct.TYPE_9__* @type_array_get_conformance(i32* %36)
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @EXPR_VOID, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %35
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @print_file(i32* %43, i32 %44, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = call %struct.TYPE_9__* @type_array_get_conformance(i32* %47)
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @write_expr(i32* %46, %struct.TYPE_9__* %48, i32 1, i32 1, i32* null, i32* null, i8* %49)
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @fprintf(i32* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %42, %35, %31
  %54 = load i32*, i32** %13, align 8
  %55 = call i32 @type_array_has_variance(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %53
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @print_file(i32* %58, i32 %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @print_file(i32* %64, i32 %65, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32*, i32** %7, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = call %struct.TYPE_9__* @type_array_get_variance(i32* %68)
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @write_expr(i32* %67, %struct.TYPE_9__* %69, i32 1, i32 1, i32* null, i32* null, i8* %70)
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @fprintf(i32* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %78

74:                                               ; preds = %57
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @print_file(i32* %75, i32 %76, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0))
  br label %78

78:                                               ; preds = %74, %63
  br label %79

79:                                               ; preds = %78, %53
  br label %80

80:                                               ; preds = %79, %27
  br label %131

81:                                               ; preds = %18
  %82 = load i32*, i32** %13, align 8
  %83 = call i32 @type_get_type(i32* %82)
  %84 = load i32, i32* @TYPE_UNION, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %104

86:                                               ; preds = %81
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @is_conformance_needed_for_phase(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %86
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @print_file(i32* %91, i32 %92, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %94 = load i32*, i32** %7, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @ATTR_SWITCHIS, align 4
  %99 = call %struct.TYPE_9__* @get_attrp(i32 %97, i32 %98)
  %100 = load i8*, i8** %9, align 8
  %101 = call i32 @write_expr(i32* %94, %struct.TYPE_9__* %99, i32 1, i32 1, i32* null, i32* null, i8* %100)
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 @fprintf(i32* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %104

104:                                              ; preds = %90, %86, %81
  br label %131

105:                                              ; preds = %18
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @is_conformance_needed_for_phase(i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %105
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @ATTR_IIDIS, align 4
  %114 = call %struct.TYPE_9__* @get_attrp(i32 %112, i32 %113)
  store %struct.TYPE_9__* %114, %struct.TYPE_9__** %14, align 8
  %115 = icmp ne %struct.TYPE_9__* %114, null
  br i1 %115, label %116, label %126

116:                                              ; preds = %109
  %117 = load i32*, i32** %7, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @print_file(i32* %117, i32 %118, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %120 = load i32*, i32** %7, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %122 = load i8*, i8** %9, align 8
  %123 = call i32 @write_expr(i32* %120, %struct.TYPE_9__* %121, i32 1, i32 1, i32* null, i32* null, i8* %122)
  %124 = load i32*, i32** %7, align 8
  %125 = call i32 @fprintf(i32* %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %126

126:                                              ; preds = %116, %109, %105
  br label %131

127:                                              ; preds = %18
  %128 = load i32*, i32** %13, align 8
  %129 = call i32* @type_pointer_get_ref(i32* %128)
  store i32* %129, i32** %13, align 8
  br label %18

130:                                              ; preds = %18, %18, %18, %18, %18, %18, %18, %18, %18
  br label %131

131:                                              ; preds = %18, %130, %126, %104, %80
  br label %132

132:                                              ; preds = %131
  ret void
}

declare dso_local i32 @typegen_detect_type(i32*, i32, i32) #1

declare dso_local i32 @is_conformance_needed_for_phase(i32) #1

declare dso_local i32 @type_array_has_conformance(i32*) #1

declare dso_local %struct.TYPE_9__* @type_array_get_conformance(i32*) #1

declare dso_local i32 @print_file(i32*, i32, i8*) #1

declare dso_local i32 @write_expr(i32*, %struct.TYPE_9__*, i32, i32, i32*, i32*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @type_array_has_variance(i32*) #1

declare dso_local %struct.TYPE_9__* @type_array_get_variance(i32*) #1

declare dso_local i32 @type_get_type(i32*) #1

declare dso_local %struct.TYPE_9__* @get_attrp(i32, i32) #1

declare dso_local i32* @type_pointer_get_ref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
