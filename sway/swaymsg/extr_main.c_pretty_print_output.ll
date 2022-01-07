; ModuleID = '/home/carl/AnghaBench/sway/swaymsg/extr_main.c_pretty_print_output.c'
source_filename = "/home/carl/AnghaBench/sway/swaymsg/extr_main.c_pretty_print_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"rect\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"focused\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"current_workspace\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"make\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"subpixel_hinting\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"transform\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"modes\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"current_mode\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"refresh\00", align 1
@.str.18 = private unnamed_addr constant [146 x i8] c"Output %s '%s %s %s'%s\0A  Current mode: %dx%d @ %f Hz\0A  Position: %d,%d\0A  Scale factor: %f\0A  Subpixel hinting: %s\0A  Transform: %s\0A  Workspace: %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c" (focused)\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"Output %s '%s %s %s' (inactive)\0A\00", align 1
@json_type_array = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [20 x i8] c"  Available modes:\0A\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"    %dx%d @ %f Hz\0A\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @pretty_print_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pretty_print_output(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @json_object_object_get_ex(i32* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32** %3)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @json_object_object_get_ex(i32* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32** %4)
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @json_object_object_get_ex(i32* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32** %5)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @json_object_object_get_ex(i32* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32** %6)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @json_object_object_get_ex(i32* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32** %7)
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @json_object_object_get_ex(i32* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32** %9)
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @json_object_object_get_ex(i32* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32** %10)
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @json_object_object_get_ex(i32* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32** %11)
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @json_object_object_get_ex(i32* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32** %12)
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @json_object_object_get_ex(i32* %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32** %13)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @json_object_object_get_ex(i32* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32** %14)
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @json_object_object_get_ex(i32* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32** %15)
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @json_object_object_get_ex(i32* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32** %16)
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @json_object_object_get_ex(i32* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32** %17)
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @json_object_object_get_ex(i32* %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32** %8)
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @json_object_object_get_ex(i32* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32** %18)
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @json_object_object_get_ex(i32* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32** %19)
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @json_object_object_get_ex(i32* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i32** %20)
  %63 = load i32*, i32** %6, align 8
  %64 = call i64 @json_object_get_boolean(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %102

66:                                               ; preds = %1
  %67 = load i32*, i32** %3, align 8
  %68 = call i8* @json_object_get_string(i32* %67)
  %69 = load i32*, i32** %9, align 8
  %70 = call i8* @json_object_get_string(i32* %69)
  %71 = load i32*, i32** %10, align 8
  %72 = call i8* @json_object_get_string(i32* %71)
  %73 = load i32*, i32** %11, align 8
  %74 = call i8* @json_object_get_string(i32* %73)
  %75 = load i32*, i32** %5, align 8
  %76 = call i64 @json_object_get_boolean(i32* %75)
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)
  %80 = load i32*, i32** %18, align 8
  %81 = call i32 @json_object_get_int(i32* %80)
  %82 = load i32*, i32** %19, align 8
  %83 = call i32 @json_object_get_int(i32* %82)
  %84 = load i32*, i32** %20, align 8
  %85 = call i32 @json_object_get_int(i32* %84)
  %86 = sitofp i32 %85 to float
  %87 = fdiv float %86, 1.000000e+03
  %88 = fpext float %87 to double
  %89 = load i32*, i32** %15, align 8
  %90 = call i32 @json_object_get_int(i32* %89)
  %91 = load i32*, i32** %16, align 8
  %92 = call i32 @json_object_get_int(i32* %91)
  %93 = load i32*, i32** %12, align 8
  %94 = call double @json_object_get_double(i32* %93)
  %95 = load i32*, i32** %13, align 8
  %96 = call i8* @json_object_get_string(i32* %95)
  %97 = load i32*, i32** %14, align 8
  %98 = call i8* @json_object_get_string(i32* %97)
  %99 = load i32*, i32** %7, align 8
  %100 = call i8* @json_object_get_string(i32* %99)
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.18, i64 0, i64 0), i8* %68, i8* %70, i8* %72, i8* %74, i8* %79, i32 %81, i32 %83, double %88, i32 %90, i32 %92, double %94, i8* %96, i8* %98, i8* %100)
  br label %112

102:                                              ; preds = %1
  %103 = load i32*, i32** %3, align 8
  %104 = call i8* @json_object_get_string(i32* %103)
  %105 = load i32*, i32** %9, align 8
  %106 = call i8* @json_object_get_string(i32* %105)
  %107 = load i32*, i32** %10, align 8
  %108 = call i8* @json_object_get_string(i32* %107)
  %109 = load i32*, i32** %11, align 8
  %110 = call i8* @json_object_get_string(i32* %109)
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0), i8* %104, i8* %106, i8* %108, i8* %110)
  br label %112

112:                                              ; preds = %102, %66
  %113 = load i32*, i32** %17, align 8
  %114 = load i32, i32* @json_type_array, align 4
  %115 = call i64 @json_object_is_type(i32* %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load i32*, i32** %17, align 8
  %119 = call i64 @json_object_array_length(i32* %118)
  br label %121

120:                                              ; preds = %112
  br label %121

121:                                              ; preds = %120, %117
  %122 = phi i64 [ %119, %117 ], [ 0, %120 ]
  store i64 %122, i64* %21, align 8
  %123 = load i64, i64* %21, align 8
  %124 = icmp ugt i64 %123, 0
  br i1 %124, label %125, label %155

125:                                              ; preds = %121
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0))
  store i64 0, i64* %22, align 8
  br label %127

127:                                              ; preds = %151, %125
  %128 = load i64, i64* %22, align 8
  %129 = load i64, i64* %21, align 8
  %130 = icmp ult i64 %128, %129
  br i1 %130, label %131, label %154

131:                                              ; preds = %127
  %132 = load i32*, i32** %17, align 8
  %133 = load i64, i64* %22, align 8
  %134 = call i32* @json_object_array_get_idx(i32* %132, i64 %133)
  store i32* %134, i32** %23, align 8
  %135 = load i32*, i32** %23, align 8
  %136 = call i32 @json_object_object_get_ex(i32* %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32** %24)
  %137 = load i32*, i32** %23, align 8
  %138 = call i32 @json_object_object_get_ex(i32* %137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32** %25)
  %139 = load i32*, i32** %23, align 8
  %140 = call i32 @json_object_object_get_ex(i32* %139, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i32** %26)
  %141 = load i32*, i32** %24, align 8
  %142 = call i32 @json_object_get_int(i32* %141)
  %143 = load i32*, i32** %25, align 8
  %144 = call i32 @json_object_get_int(i32* %143)
  %145 = load i32*, i32** %26, align 8
  %146 = call i32 @json_object_get_int(i32* %145)
  %147 = sitofp i32 %146 to float
  %148 = fdiv float %147, 1.000000e+03
  %149 = fpext float %148 to double
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i32 %142, i32 %144, double %149)
  br label %151

151:                                              ; preds = %131
  %152 = load i64, i64* %22, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %22, align 8
  br label %127

154:                                              ; preds = %127
  br label %155

155:                                              ; preds = %154, %121
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  ret void
}

declare dso_local i32 @json_object_object_get_ex(i32*, i8*, i32**) #1

declare dso_local i64 @json_object_get_boolean(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @json_object_get_string(i32*) #1

declare dso_local i32 @json_object_get_int(i32*) #1

declare dso_local double @json_object_get_double(i32*) #1

declare dso_local i64 @json_object_is_type(i32*, i32) #1

declare dso_local i64 @json_object_array_length(i32*) #1

declare dso_local i32* @json_object_array_get_idx(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
