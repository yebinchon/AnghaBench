; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typelib.c_get_type_vt.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typelib.c_get_type_vt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_13__ = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"get_type_vt: %p type->name %s\0A\00", align 1
@ATTR_PUBLIC = common dso_local global i32 0, align 4
@VT_USERDEFINED = common dso_local global i16 0, align 2
@VT_UI1 = common dso_local global i16 0, align 2
@VT_I1 = common dso_local global i16 0, align 2
@VT_I2 = common dso_local global i16 0, align 2
@VT_UI2 = common dso_local global i16 0, align 2
@VT_UINT = common dso_local global i16 0, align 2
@VT_INT = common dso_local global i16 0, align 2
@VT_UI4 = common dso_local global i16 0, align 2
@VT_I4 = common dso_local global i16 0, align 2
@VT_UI8 = common dso_local global i16 0, align 2
@VT_I8 = common dso_local global i16 0, align 2
@pointer_size = common dso_local global i32 0, align 4
@VT_R4 = common dso_local global i16 0, align 2
@VT_R8 = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [35 x i8] c"handles can't be used in typelibs\0A\00", align 1
@VT_PTR = common dso_local global i16 0, align 2
@.str.2 = private unnamed_addr constant [10 x i8] c"SAFEARRAY\00", align 1
@VT_SAFEARRAY = common dso_local global i16 0, align 2
@VT_CARRAY = common dso_local global i16 0, align 2
@.str.3 = private unnamed_addr constant [9 x i8] c"IUnknown\00", align 1
@VT_UNKNOWN = common dso_local global i16 0, align 2
@.str.4 = private unnamed_addr constant [10 x i8] c"IDispatch\00", align 1
@VT_DISPATCH = common dso_local global i16 0, align 2
@VT_VOID = common dso_local global i16 0, align 2
@.str.5 = private unnamed_addr constant [38 x i8] c"get_type_vt: functions not supported\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"get_type_vt: bitfields not supported\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @get_type_vt(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i16, align 2
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @chat(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %5, i64 %8)
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = call zeroext i16 @builtin_vt(%struct.TYPE_12__* %15)
  store i16 %16, i16* %4, align 2
  %17 = load i16, i16* %4, align 2
  %18 = icmp ne i16 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i16, i16* %4, align 2
  store i16 %20, i16* %2, align 2
  br label %159

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = call i64 @type_is_alias(%struct.TYPE_12__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ATTR_PUBLIC, align 4
  %31 = call i64 @is_attr(i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i16, i16* @VT_USERDEFINED, align 2
  store i16 %34, i16* %2, align 2
  br label %159

35:                                               ; preds = %26, %22
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = call i32 @type_get_type(%struct.TYPE_12__* %36)
  switch i32 %37, label %158 [
    i32 154, label %38
    i32 131, label %111
    i32 155, label %113
    i32 133, label %130
    i32 135, label %148
    i32 130, label %148
    i32 137, label %148
    i32 132, label %148
    i32 129, label %148
    i32 136, label %148
    i32 128, label %150
    i32 156, label %152
    i32 134, label %154
    i32 138, label %156
  ]

38:                                               ; preds = %35
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %40 = call i32 @type_basic_get_type(%struct.TYPE_12__* %39)
  switch i32 %40, label %110 [
    i32 153, label %41
    i32 152, label %43
    i32 141, label %43
    i32 139, label %51
    i32 145, label %53
    i32 146, label %61
    i32 144, label %69
    i32 140, label %69
    i32 150, label %69
    i32 142, label %77
    i32 147, label %77
    i32 143, label %85
    i32 149, label %104
    i32 151, label %106
    i32 148, label %108
  ]

41:                                               ; preds = %38
  %42 = load i16, i16* @VT_UI1, align 2
  store i16 %42, i16* %2, align 2
  br label %159

43:                                               ; preds = %38, %38
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = call i32 @type_basic_get_sign(%struct.TYPE_12__* %44)
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i16, i16* @VT_UI1, align 2
  store i16 %48, i16* %2, align 2
  br label %159

49:                                               ; preds = %43
  %50 = load i16, i16* @VT_I1, align 2
  store i16 %50, i16* %2, align 2
  br label %159

51:                                               ; preds = %38
  %52 = load i16, i16* @VT_I2, align 2
  store i16 %52, i16* %2, align 2
  br label %159

53:                                               ; preds = %38
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %55 = call i32 @type_basic_get_sign(%struct.TYPE_12__* %54)
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i16, i16* @VT_UI2, align 2
  store i16 %58, i16* %2, align 2
  br label %159

59:                                               ; preds = %53
  %60 = load i16, i16* @VT_I2, align 2
  store i16 %60, i16* %2, align 2
  br label %159

61:                                               ; preds = %38
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %63 = call i32 @type_basic_get_sign(%struct.TYPE_12__* %62)
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i16, i16* @VT_UINT, align 2
  store i16 %66, i16* %2, align 2
  br label %159

67:                                               ; preds = %61
  %68 = load i16, i16* @VT_INT, align 2
  store i16 %68, i16* %2, align 2
  br label %159

69:                                               ; preds = %38, %38, %38
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %71 = call i32 @type_basic_get_sign(%struct.TYPE_12__* %70)
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i16, i16* @VT_UI4, align 2
  store i16 %74, i16* %2, align 2
  br label %159

75:                                               ; preds = %69
  %76 = load i16, i16* @VT_I4, align 2
  store i16 %76, i16* %2, align 2
  br label %159

77:                                               ; preds = %38, %38
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %79 = call i32 @type_basic_get_sign(%struct.TYPE_12__* %78)
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i16, i16* @VT_UI8, align 2
  store i16 %82, i16* %2, align 2
  br label %159

83:                                               ; preds = %77
  %84 = load i16, i16* @VT_I8, align 2
  store i16 %84, i16* %2, align 2
  br label %159

85:                                               ; preds = %38
  %86 = load i32, i32* @pointer_size, align 4
  %87 = icmp eq i32 %86, 8
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %90 = call i32 @type_basic_get_sign(%struct.TYPE_12__* %89)
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i16, i16* @VT_UI8, align 2
  store i16 %93, i16* %2, align 2
  br label %159

94:                                               ; preds = %88
  %95 = load i16, i16* @VT_I8, align 2
  store i16 %95, i16* %2, align 2
  br label %159

96:                                               ; preds = %85
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %98 = call i32 @type_basic_get_sign(%struct.TYPE_12__* %97)
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i16, i16* @VT_UI4, align 2
  store i16 %101, i16* %2, align 2
  br label %159

102:                                              ; preds = %96
  %103 = load i16, i16* @VT_I4, align 2
  store i16 %103, i16* %2, align 2
  br label %159

104:                                              ; preds = %38
  %105 = load i16, i16* @VT_R4, align 2
  store i16 %105, i16* %2, align 2
  br label %159

106:                                              ; preds = %38
  %107 = load i16, i16* @VT_R8, align 2
  store i16 %107, i16* %2, align 2
  br label %159

108:                                              ; preds = %38
  %109 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %38
  br label %158

111:                                              ; preds = %35
  %112 = load i16, i16* @VT_PTR, align 2
  store i16 %112, i16* %2, align 2
  br label %159

113:                                              ; preds = %35
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %115 = call i32 @type_array_is_decl_as_ptr(%struct.TYPE_12__* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %113
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %119 = call %struct.TYPE_13__* @type_array_get_element(%struct.TYPE_12__* %118)
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @match(i64 %121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = load i16, i16* @VT_SAFEARRAY, align 2
  store i16 %125, i16* %2, align 2
  br label %159

126:                                              ; preds = %117
  %127 = load i16, i16* @VT_PTR, align 2
  store i16 %127, i16* %2, align 2
  br label %159

128:                                              ; preds = %113
  %129 = load i16, i16* @VT_CARRAY, align 2
  store i16 %129, i16* %2, align 2
  br label %159

130:                                              ; preds = %35
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @match(i64 %133, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = load i16, i16* @VT_UNKNOWN, align 2
  store i16 %137, i16* %2, align 2
  br label %159

138:                                              ; preds = %130
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @match(i64 %141, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = load i16, i16* @VT_DISPATCH, align 2
  store i16 %145, i16* %2, align 2
  br label %159

146:                                              ; preds = %138
  %147 = load i16, i16* @VT_USERDEFINED, align 2
  store i16 %147, i16* %2, align 2
  br label %159

148:                                              ; preds = %35, %35, %35, %35, %35, %35
  %149 = load i16, i16* @VT_USERDEFINED, align 2
  store i16 %149, i16* %2, align 2
  br label %159

150:                                              ; preds = %35
  %151 = load i16, i16* @VT_VOID, align 2
  store i16 %151, i16* %2, align 2
  br label %159

152:                                              ; preds = %35
  %153 = call i32 @assert(i32 0)
  br label %158

154:                                              ; preds = %35
  %155 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %158

156:                                              ; preds = %35
  %157 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %158

158:                                              ; preds = %35, %156, %154, %152, %110
  store i16 0, i16* %2, align 2
  br label %159

159:                                              ; preds = %158, %150, %148, %146, %144, %136, %128, %126, %124, %111, %106, %104, %102, %100, %94, %92, %83, %81, %75, %73, %67, %65, %59, %57, %51, %49, %47, %41, %33, %19
  %160 = load i16, i16* %2, align 2
  ret i16 %160
}

declare dso_local i32 @chat(i8*, %struct.TYPE_12__*, i64) #1

declare dso_local zeroext i16 @builtin_vt(%struct.TYPE_12__*) #1

declare dso_local i64 @type_is_alias(%struct.TYPE_12__*) #1

declare dso_local i64 @is_attr(i32, i32) #1

declare dso_local i32 @type_get_type(%struct.TYPE_12__*) #1

declare dso_local i32 @type_basic_get_type(%struct.TYPE_12__*) #1

declare dso_local i32 @type_basic_get_sign(%struct.TYPE_12__*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @type_array_is_decl_as_ptr(%struct.TYPE_12__*) #1

declare dso_local i32 @match(i64, i8*) #1

declare dso_local %struct.TYPE_13__* @type_array_get_element(%struct.TYPE_12__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
