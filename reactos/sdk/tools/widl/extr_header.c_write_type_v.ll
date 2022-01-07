; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_header.c_write_type_v.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_header.c_write_type_v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }

@TYPE_FUNCTION = common dso_local global i64 0, align 8
@ATTR_CALLCONV = common dso_local global i32 0, align 4
@is_object_interface = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"STDMETHODCALLTYPE\00", align 1
@ATTR_INLINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"inline \00", align 1
@NAME_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FALSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_13__*, i32, i32, i8*)* @write_type_v to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_type_v(i32* %0, %struct.TYPE_13__* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  br label %156

19:                                               ; preds = %5
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %21 = icmp ne %struct.TYPE_13__* %20, null
  br i1 %21, label %22, label %101

22:                                               ; preds = %19
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %11, align 8
  br label %24

24:                                               ; preds = %29, %22
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %26 = call i64 @is_ptr(%struct.TYPE_13__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %31 = call %struct.TYPE_13__* @type_pointer_get_ref(%struct.TYPE_13__* %30)
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %12, align 4
  br label %24

34:                                               ; preds = %24
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %36 = call i64 @type_get_type_detect_alias(%struct.TYPE_13__* %35)
  %37 = load i64, i64* @TYPE_FUNCTION, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %94

39:                                               ; preds = %34
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ATTR_CALLCONV, align 4
  %44 = call i8* @get_attrp(i32 %42, i32 %43)
  store i8* %44, i8** %14, align 8
  %45 = load i8*, i8** %14, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %39
  %48 = load i64, i64* @is_object_interface, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %51

51:                                               ; preds = %50, %47, %39
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ATTR_INLINE, align 4
  %56 = call i64 @is_attr(i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 (i32*, i8*, ...) @fprintf(i32* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %51
  %62 = load i32*, i32** %6, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %64 = call %struct.TYPE_13__* @type_function_get_rettype(%struct.TYPE_13__* %63)
  %65 = load i32, i32* @NAME_DEFAULT, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @write_type_left(i32* %62, %struct.TYPE_13__* %64, i32 %65, i32 %66)
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @fputc(i8 signext 32, i32* %68)
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %61
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @fputc(i8 signext 40, i32* %73)
  br label %75

75:                                               ; preds = %72, %61
  %76 = load i8*, i8** %14, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32*, i32** %6, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = call i32 (i32*, i8*, ...) @fprintf(i32* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %78, %75
  store i32 0, i32* %13, align 4
  br label %83

83:                                               ; preds = %90, %82
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @fputc(i8 signext 42, i32* %88)
  br label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %83

93:                                               ; preds = %83
  br label %100

94:                                               ; preds = %34
  %95 = load i32*, i32** %6, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %97 = load i32, i32* @NAME_DEFAULT, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @write_type_left(i32* %95, %struct.TYPE_13__* %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %94, %93
  br label %101

101:                                              ; preds = %100, %19
  %102 = load i8*, i8** %10, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %118

104:                                              ; preds = %101
  %105 = load i32*, i32** %6, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %107 = icmp ne %struct.TYPE_13__* %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %110 = call i64 @needs_space_after(%struct.TYPE_13__* %109)
  %111 = icmp ne i64 %110, 0
  br label %112

112:                                              ; preds = %108, %104
  %113 = phi i1 [ true, %104 ], [ %111, %108 ]
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %116 = load i8*, i8** %10, align 8
  %117 = call i32 (i32*, i8*, ...) @fprintf(i32* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %115, i8* %116)
  br label %118

118:                                              ; preds = %112, %101
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %120 = icmp ne %struct.TYPE_13__* %119, null
  br i1 %120, label %121, label %156

121:                                              ; preds = %118
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %123 = call i64 @type_get_type_detect_alias(%struct.TYPE_13__* %122)
  %124 = load i64, i64* @TYPE_FUNCTION, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %150

126:                                              ; preds = %121
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %128 = call i32* @type_function_get_args(%struct.TYPE_13__* %127)
  store i32* %128, i32** %15, align 8
  %129 = load i32, i32* %12, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i32*, i32** %6, align 8
  %133 = call i32 @fputc(i8 signext 41, i32* %132)
  br label %134

134:                                              ; preds = %131, %126
  %135 = load i32*, i32** %6, align 8
  %136 = call i32 @fputc(i8 signext 40, i32* %135)
  %137 = load i32*, i32** %15, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load i32*, i32** %6, align 8
  %141 = load i32*, i32** %15, align 8
  %142 = load i32, i32* @FALSE, align 4
  %143 = call i32 @write_args(i32* %140, i32* %141, i32* null, i32 0, i32 %142)
  br label %147

144:                                              ; preds = %134
  %145 = load i32*, i32** %6, align 8
  %146 = call i32 (i32*, i8*, ...) @fprintf(i32* %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %147

147:                                              ; preds = %144, %139
  %148 = load i32*, i32** %6, align 8
  %149 = call i32 @fputc(i8 signext 41, i32* %148)
  br label %155

150:                                              ; preds = %121
  %151 = load i32*, i32** %6, align 8
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @write_type_right(i32* %151, %struct.TYPE_13__* %152, i32 %153)
  br label %155

155:                                              ; preds = %150, %147
  br label %156

156:                                              ; preds = %18, %155, %118
  ret void
}

declare dso_local i64 @is_ptr(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @type_pointer_get_ref(%struct.TYPE_13__*) #1

declare dso_local i64 @type_get_type_detect_alias(%struct.TYPE_13__*) #1

declare dso_local i8* @get_attrp(i32, i32) #1

declare dso_local i64 @is_attr(i32, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @write_type_left(i32*, %struct.TYPE_13__*, i32, i32) #1

declare dso_local %struct.TYPE_13__* @type_function_get_rettype(%struct.TYPE_13__*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i64 @needs_space_after(%struct.TYPE_13__*) #1

declare dso_local i32* @type_function_get_args(%struct.TYPE_13__*) #1

declare dso_local i32 @write_args(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @write_type_right(i32*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
