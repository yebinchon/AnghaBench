; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_write_old_procformatstring_type.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_write_old_procformatstring_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i16, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i16, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }

@ATTR_IN = common dso_local global i32 0, align 4
@ATTR_OUT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@TYPE_BASIC = common dso_local global i64 0, align 8
@TYPE_ENUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"0x53,    /* FC_RETURN_PARAM_BASETYPE */\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"0x4e,    /* FC_IN_PARAM_BASETYPE */\0A\00", align 1
@FC_BIND_PRIMITIVE = common dso_local global i8 0, align 1
@FC_IGNORE = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"0x%02x,    /* %s */\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"0x52,    /* FC_RETURN_PARAM */\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"0x50,    /* FC_IN_OUT_PARAM */\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"0x51,    /* FC_OUT_PARAM */\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"0x4d,    /* FC_IN_PARAM */\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"0x%02x,\0A\00", align 1
@pointer_size = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"NdrFcShort(0x%x),\09/* type offset = %u */\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_13__*, i32, i32)* @write_old_procformatstring_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_old_procformatstring_type(i32* %0, i32 %1, %struct.TYPE_13__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i16, align 2
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ATTR_IN, align 4
  %20 = call i32 @is_attr(i32 %18, i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ATTR_OUT, align 4
  %25 = call i32 @is_attr(i32 %23, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %5
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %31, %28, %5
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = call i64 @type_get_type(%struct.TYPE_14__* %36)
  %38 = load i64, i64* @TYPE_BASIC, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %33
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = call i64 @type_get_type(%struct.TYPE_14__* %43)
  %45 = load i64, i64* @TYPE_ENUM, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %92

47:                                               ; preds = %40, %33
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %51, i32 %52, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %58

54:                                               ; preds = %47
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %55, i32 %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %54, %50
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = call i64 @type_get_type(%struct.TYPE_14__* %61)
  %63 = load i64, i64* @TYPE_ENUM, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = call zeroext i8 @get_enum_fc(%struct.TYPE_14__* %68)
  store i8 %69, i8* %14, align 1
  br label %83

70:                                               ; preds = %58
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = call zeroext i8 @get_basic_fc_signed(%struct.TYPE_14__* %73)
  store i8 %74, i8* %14, align 1
  %75 = load i8, i8* %14, align 1
  %76 = zext i8 %75 to i32
  %77 = load i8, i8* @FC_BIND_PRIMITIVE, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = load i8, i8* @FC_IGNORE, align 1
  store i8 %81, i8* %14, align 1
  br label %82

82:                                               ; preds = %80, %70
  br label %83

83:                                               ; preds = %82, %65
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i8, i8* %14, align 1
  %87 = zext i8 %86 to i32
  %88 = load i8, i8* %14, align 1
  %89 = call zeroext i16 @string_of_type(i8 zeroext %88)
  %90 = zext i16 %89 to i32
  %91 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %84, i32 %85, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %90)
  store i32 2, i32* %11, align 4
  br label %171

92:                                               ; preds = %40
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i16, i16* %94, align 8
  store i16 %95, i16* %15, align 2
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %125, label %98

98:                                               ; preds = %92
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  %102 = call i64 @is_array(%struct.TYPE_14__* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %125

104:                                              ; preds = %98
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %106, align 8
  %108 = call i64 @type_array_is_decl_as_ptr(%struct.TYPE_14__* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %104
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %110
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i16, i16* %123, align 8
  store i16 %124, i16* %15, align 2
  br label %125

125:                                              ; preds = %119, %110, %104, %98, %92
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i32*, i32** %6, align 8
  %130 = load i32, i32* %7, align 4
  %131 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %129, i32 %130, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %155

132:                                              ; preds = %125
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i32*, i32** %6, align 8
  %140 = load i32, i32* %7, align 4
  %141 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %139, i32 %140, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %154

142:                                              ; preds = %135, %132
  %143 = load i32, i32* %13, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i32*, i32** %6, align 8
  %147 = load i32, i32* %7, align 4
  %148 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %146, i32 %147, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %153

149:                                              ; preds = %142
  %150 = load i32*, i32** %6, align 8
  %151 = load i32, i32* %7, align 4
  %152 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %150, i32 %151, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %153

153:                                              ; preds = %149, %145
  br label %154

154:                                              ; preds = %153, %138
  br label %155

155:                                              ; preds = %154, %128
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %157 = call i32 @get_stack_size(%struct.TYPE_13__* %156, i32* null)
  store i32 %157, i32* %11, align 4
  %158 = load i32*, i32** %6, align 8
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* @pointer_size, align 4
  %162 = udiv i32 %160, %161
  %163 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %158, i32 %159, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %162)
  %164 = load i32*, i32** %6, align 8
  %165 = load i32, i32* %7, align 4
  %166 = load i16, i16* %15, align 2
  %167 = zext i16 %166 to i32
  %168 = load i16, i16* %15, align 2
  %169 = zext i16 %168 to i32
  %170 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %164, i32 %165, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %167, i32 %169)
  store i32 4, i32* %11, align 4
  br label %171

171:                                              ; preds = %155, %83
  %172 = load i32, i32* %11, align 4
  ret i32 %172
}

declare dso_local i32 @is_attr(i32, i32) #1

declare dso_local i64 @type_get_type(%struct.TYPE_14__*) #1

declare dso_local i32 @print_file(i32*, i32, i8*, ...) #1

declare dso_local zeroext i8 @get_enum_fc(%struct.TYPE_14__*) #1

declare dso_local zeroext i8 @get_basic_fc_signed(%struct.TYPE_14__*) #1

declare dso_local zeroext i16 @string_of_type(i8 zeroext) #1

declare dso_local i64 @is_array(%struct.TYPE_14__*) #1

declare dso_local i64 @type_array_is_decl_as_ptr(%struct.TYPE_14__*) #1

declare dso_local i32 @get_stack_size(%struct.TYPE_13__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
