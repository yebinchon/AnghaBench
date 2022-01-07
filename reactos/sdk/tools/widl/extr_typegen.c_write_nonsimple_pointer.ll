; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_write_nonsimple_pointer.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_write_nonsimple_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATTR_IN = common dso_local global i32 0, align 4
@ATTR_OUT = common dso_local global i32 0, align 4
@current_iface = common dso_local global i32 0, align 4
@current_func = common dso_local global i32 0, align 4
@FC_RP = common dso_local global i32 0, align 4
@FC_ALLOCED_ON_STACK = common dso_local global i8 0, align 1
@MODE_Oif = common dso_local global i64 0, align 8
@TYPE_CONTEXT_TOPLEVELPARAM = common dso_local global i32 0, align 4
@TDT_ALL_TYPES = common dso_local global i32 0, align 4
@FC_POINTER_DEREF = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [19 x i8] c"0x%x, 0x%x,\09\09/* %s\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c" [allocated_on_stack]\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c" [pointer_deref]\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" */\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"NdrFcShort(0x%hx),\09/* Offset= %hd (%u) */\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32, i32, i32*)* @write_nonsimple_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_nonsimple_pointer(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32*, i32** %12, align 8
  %24 = load i32, i32* %23, align 4
  %25 = add i32 %24, 2
  %26 = sub i32 %22, %25
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %14, align 2
  store i8 0, i8* %18, align 1
  %28 = load i32*, i32** %9, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @get_pointer_fc_context(i32* %28, i32* %29, i32 %30)
  store i32 %31, i32* %17, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* @ATTR_IN, align 4
  %34 = call i32 @is_attr(i32* %32, i32 %33)
  store i32 %34, i32* %15, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* @ATTR_OUT, align 4
  %37 = call i32 @is_attr(i32* %35, i32 %36)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %6
  %41 = load i32, i32* %16, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store i32 1, i32* %15, align 4
  br label %44

44:                                               ; preds = %43, %40, %6
  %45 = load i32, i32* @current_iface, align 4
  %46 = load i32, i32* @current_func, align 4
  %47 = call i32 @is_interpreted_func(i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %16, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* @FC_RP, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i8, i8* @FC_ALLOCED_ON_STACK, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* %18, align 1
  %63 = zext i8 %62 to i32
  %64 = or i32 %63, %61
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %18, align 1
  br label %66

66:                                               ; preds = %59, %55, %52, %49
  br label %113

67:                                               ; preds = %44
  %68 = call i64 (...) @get_stub_mode()
  %69 = load i64, i64* @MODE_Oif, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %112

71:                                               ; preds = %67
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @TYPE_CONTEXT_TOPLEVELPARAM, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %111

75:                                               ; preds = %71
  %76 = load i32*, i32** %9, align 8
  %77 = call i64 @is_ptr(i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %111

79:                                               ; preds = %75
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* @FC_RP, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %111

83:                                               ; preds = %79
  %84 = load i32*, i32** %9, align 8
  %85 = call i32* @type_pointer_get_ref(i32* %84)
  %86 = load i32, i32* @TDT_ALL_TYPES, align 4
  %87 = call i32 @typegen_detect_type(i32* %85, i32* null, i32 %86)
  switch i32 %87, label %109 [
    i32 128, label %88
    i32 129, label %88
    i32 132, label %88
    i32 131, label %88
    i32 130, label %95
  ]

88:                                               ; preds = %83, %83, %83, %83
  %89 = load i8, i8* @FC_ALLOCED_ON_STACK, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8, i8* %18, align 1
  %92 = zext i8 %91 to i32
  %93 = or i32 %92, %90
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %18, align 1
  br label %110

95:                                               ; preds = %83
  %96 = load i32, i32* %15, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %95
  %99 = load i32, i32* %16, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load i8, i8* @FC_ALLOCED_ON_STACK, align 1
  %103 = zext i8 %102 to i32
  %104 = load i8, i8* %18, align 1
  %105 = zext i8 %104 to i32
  %106 = or i32 %105, %103
  %107 = trunc i32 %106 to i8
  store i8 %107, i8* %18, align 1
  br label %108

108:                                              ; preds = %101, %98, %95
  br label %110

109:                                              ; preds = %83
  br label %110

110:                                              ; preds = %109, %108, %88
  br label %111

111:                                              ; preds = %110, %79, %75, %71
  br label %112

112:                                              ; preds = %111, %67
  br label %113

113:                                              ; preds = %112, %66
  %114 = load i32*, i32** %9, align 8
  %115 = call i64 @is_ptr(i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %135

117:                                              ; preds = %113
  %118 = load i32*, i32** %9, align 8
  %119 = call i32* @type_pointer_get_ref(i32* %118)
  store i32* %119, i32** %19, align 8
  %120 = load i32*, i32** %19, align 8
  %121 = call i64 @is_declptr(i32* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %117
  %124 = load i32*, i32** %19, align 8
  %125 = call i32 @is_user_type(i32* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %123
  %128 = load i8, i8* @FC_POINTER_DEREF, align 1
  %129 = zext i8 %128 to i32
  %130 = load i8, i8* %18, align 1
  %131 = zext i8 %130 to i32
  %132 = or i32 %131, %129
  %133 = trunc i32 %132 to i8
  store i8 %133, i8* %18, align 1
  br label %134

134:                                              ; preds = %127, %123, %117
  br label %135

135:                                              ; preds = %134, %113
  %136 = load i32*, i32** %7, align 8
  %137 = load i32, i32* %17, align 4
  %138 = trunc i32 %137 to i16
  %139 = load i8, i8* %18, align 1
  %140 = zext i8 %139 to i16
  %141 = load i32, i32* %17, align 4
  %142 = call i32 @string_of_type(i32 %141)
  %143 = call i32 @print_file(i32* %136, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i16 signext %138, i16 signext %140, i32 %142)
  %144 = load i32*, i32** %7, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %169

146:                                              ; preds = %135
  %147 = load i8, i8* %18, align 1
  %148 = zext i8 %147 to i32
  %149 = load i8, i8* @FC_ALLOCED_ON_STACK, align 1
  %150 = zext i8 %149 to i32
  %151 = and i32 %148, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %146
  %154 = load i32*, i32** %7, align 8
  %155 = call i32 @fprintf(i32* %154, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %156

156:                                              ; preds = %153, %146
  %157 = load i8, i8* %18, align 1
  %158 = zext i8 %157 to i32
  %159 = load i8, i8* @FC_POINTER_DEREF, align 1
  %160 = zext i8 %159 to i32
  %161 = and i32 %158, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %156
  %164 = load i32*, i32** %7, align 8
  %165 = call i32 @fprintf(i32* %164, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %166

166:                                              ; preds = %163, %156
  %167 = load i32*, i32** %7, align 8
  %168 = call i32 @fprintf(i32* %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %169

169:                                              ; preds = %166, %135
  %170 = load i32*, i32** %7, align 8
  %171 = load i16, i16* %14, align 2
  %172 = load i16, i16* %14, align 2
  %173 = load i32, i32* %11, align 4
  %174 = call i32 @print_file(i32* %170, i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i16 signext %171, i16 signext %172, i32 %173)
  %175 = load i32*, i32** %12, align 8
  %176 = load i32, i32* %175, align 4
  %177 = add i32 %176, 4
  store i32 %177, i32* %175, align 4
  %178 = load i32, i32* %13, align 4
  ret i32 %178
}

declare dso_local i32 @get_pointer_fc_context(i32*, i32*, i32) #1

declare dso_local i32 @is_attr(i32*, i32) #1

declare dso_local i32 @is_interpreted_func(i32, i32) #1

declare dso_local i64 @get_stub_mode(...) #1

declare dso_local i64 @is_ptr(i32*) #1

declare dso_local i32 @typegen_detect_type(i32*, i32*, i32) #1

declare dso_local i32* @type_pointer_get_ref(i32*) #1

declare dso_local i64 @is_declptr(i32*) #1

declare dso_local i32 @is_user_type(i32*) #1

declare dso_local i32 @print_file(i32*, i32, i8*, i16 signext, i16 signext, i32) #1

declare dso_local i32 @string_of_type(i32) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
