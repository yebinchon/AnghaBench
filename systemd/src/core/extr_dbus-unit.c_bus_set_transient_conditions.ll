; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-unit.c_bus_set_transient_conditions.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-unit.c_bus_set_transient_conditions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"(sbbs)\00", align 1
@SD_BUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid condition type: %s\00", align 1
@CONDITION_NULL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Condition parameter in %s is empty\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Path in condition %s is not absolute: %s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@conditions = common dso_local global i32 0, align 4
@UNIT_ESCAPE_SPECIFIERS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"%s=%s%s%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%s=%s%s\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"%sNull=\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Condition\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Assert\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32**, i32, i32*, i32, i32*)* @bus_set_transient_conditions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bus_set_transient_conditions(i32* %0, i8* %1, i32** %2, i32 %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32** %2, i32*** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 1, i32* %21, align 4
  %24 = load i32**, i32*** %11, align 8
  %25 = call i32 @assert(i32** %24)
  %26 = load i32*, i32** %13, align 8
  %27 = call i32 @sd_bus_message_enter_container(i32* %26, i8 signext 97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %20, align 4
  %28 = load i32, i32* %20, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %7
  %31 = load i32, i32* %20, align 4
  store i32 %31, i32* %8, align 4
  br label %175

32:                                               ; preds = %7
  br label %33

33:                                               ; preds = %141, %32
  %34 = load i32*, i32** %13, align 8
  %35 = call i32 @sd_bus_message_read(i32* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %16, i32* %18, i32* %19, i8** %17)
  store i32 %35, i32* %20, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %142

37:                                               ; preds = %33
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i8*, i8** %16, align 8
  %42 = call i64 @condition_type_from_string(i8* %41)
  br label %46

43:                                               ; preds = %37
  %44 = load i8*, i8** %16, align 8
  %45 = call i64 @assert_type_from_string(i8* %44)
  br label %46

46:                                               ; preds = %43, %40
  %47 = phi i64 [ %42, %40 ], [ %45, %43 ]
  store i64 %47, i64* %22, align 8
  %48 = load i64, i64* %22, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i32*, i32** %15, align 8
  %52 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %53 = load i8*, i8** %16, align 8
  %54 = call i32 (i32*, i32, i8*, i8*, ...) @sd_bus_error_setf(i32* %51, i32 %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  store i32 %54, i32* %8, align 4
  br label %175

55:                                               ; preds = %46
  %56 = load i64, i64* %22, align 8
  %57 = load i64, i64* @CONDITION_NULL, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %55
  %60 = load i8*, i8** %17, align 8
  %61 = call i64 @isempty(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32*, i32** %15, align 8
  %65 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %66 = load i8*, i8** %16, align 8
  %67 = call i32 (i32*, i32, i8*, i8*, ...) @sd_bus_error_setf(i32* %64, i32 %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  store i32 %67, i32* %8, align 4
  br label %175

68:                                               ; preds = %59
  %69 = load i64, i64* %22, align 8
  %70 = call i64 @condition_takes_path(i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load i8*, i8** %17, align 8
  %74 = call i32 @path_is_absolute(i8* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %72
  %77 = load i32*, i32** %15, align 8
  %78 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %79 = load i8*, i8** %16, align 8
  %80 = load i8*, i8** %17, align 8
  %81 = call i32 (i32*, i32, i8*, i8*, ...) @sd_bus_error_setf(i32* %77, i32 %78, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %79, i8* %80)
  store i32 %81, i32* %8, align 4
  br label %175

82:                                               ; preds = %72, %68
  br label %84

83:                                               ; preds = %55
  store i8* null, i8** %17, align 8
  br label %84

84:                                               ; preds = %83, %82
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @UNIT_WRITE_FLAGS_NOOP(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %141, label %88

88:                                               ; preds = %84
  %89 = load i64, i64* %22, align 8
  %90 = load i8*, i8** %17, align 8
  %91 = load i32, i32* %18, align 4
  %92 = load i32, i32* %19, align 4
  %93 = call i32* @condition_new(i64 %89, i8* %90, i32 %91, i32 %92)
  store i32* %93, i32** %23, align 8
  %94 = load i32*, i32** %23, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %88
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %8, align 4
  br label %175

99:                                               ; preds = %88
  %100 = load i32, i32* @conditions, align 4
  %101 = load i32**, i32*** %11, align 8
  %102 = load i32*, i32** %101, align 8
  %103 = load i32*, i32** %23, align 8
  %104 = call i32 @LIST_PREPEND(i32 %100, i32* %102, i32* %103)
  %105 = load i64, i64* %22, align 8
  %106 = load i64, i64* @CONDITION_NULL, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %125

108:                                              ; preds = %99
  %109 = load i32*, i32** %9, align 8
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* @UNIT_ESCAPE_SPECIFIERS, align 4
  %112 = or i32 %110, %111
  %113 = load i8*, i8** %10, align 8
  %114 = load i8*, i8** %16, align 8
  %115 = load i32, i32* %18, align 4
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %119 = load i32, i32* %19, align 4
  %120 = icmp ne i32 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %123 = load i8*, i8** %17, align 8
  %124 = call i32 (i32*, i32, i8*, i8*, i8*, ...) @unit_write_settingf(i32* %109, i32 %112, i8* %113, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %114, i8* %118, i8* %122, i8* %123)
  br label %140

125:                                              ; preds = %99
  %126 = load i32*, i32** %9, align 8
  %127 = load i32, i32* %14, align 4
  %128 = load i8*, i8** %10, align 8
  %129 = load i8*, i8** %16, align 8
  %130 = load i32, i32* %18, align 4
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %134 = load i32, i32* %19, align 4
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  %137 = zext i1 %136 to i32
  %138 = call i32 @yes_no(i32 %137)
  %139 = call i32 (i32*, i32, i8*, i8*, i8*, ...) @unit_write_settingf(i32* %126, i32 %127, i8* %128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %129, i8* %133, i32 %138)
  br label %140

140:                                              ; preds = %125, %108
  br label %141

141:                                              ; preds = %140, %84
  store i32 0, i32* %21, align 4
  br label %33

142:                                              ; preds = %33
  %143 = load i32, i32* %20, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = load i32, i32* %20, align 4
  store i32 %146, i32* %8, align 4
  br label %175

147:                                              ; preds = %142
  %148 = load i32*, i32** %13, align 8
  %149 = call i32 @sd_bus_message_exit_container(i32* %148)
  store i32 %149, i32* %20, align 4
  %150 = load i32, i32* %20, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = load i32, i32* %20, align 4
  store i32 %153, i32* %8, align 4
  br label %175

154:                                              ; preds = %147
  %155 = load i32, i32* %14, align 4
  %156 = call i32 @UNIT_WRITE_FLAGS_NOOP(i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %174, label %158

158:                                              ; preds = %154
  %159 = load i32, i32* %21, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %174

161:                                              ; preds = %158
  %162 = load i32**, i32*** %11, align 8
  %163 = load i32*, i32** %162, align 8
  %164 = call i32* @condition_free_list(i32* %163)
  %165 = load i32**, i32*** %11, align 8
  store i32* %164, i32** %165, align 8
  %166 = load i32*, i32** %9, align 8
  %167 = load i32, i32* %14, align 4
  %168 = load i8*, i8** %10, align 8
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)
  %173 = call i32 (i32*, i32, i8*, i8*, i8*, ...) @unit_write_settingf(i32* %166, i32 %167, i8* %168, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %172)
  br label %174

174:                                              ; preds = %161, %158, %154
  store i32 1, i32* %8, align 4
  br label %175

175:                                              ; preds = %174, %152, %145, %96, %76, %63, %50, %30
  %176 = load i32, i32* %8, align 4
  ret i32 %176
}

declare dso_local i32 @assert(i32**) #1

declare dso_local i32 @sd_bus_message_enter_container(i32*, i8 signext, i8*) #1

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i8**, i32*, i32*, i8**) #1

declare dso_local i64 @condition_type_from_string(i8*) #1

declare dso_local i64 @assert_type_from_string(i8*) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*, i8*, ...) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i64 @condition_takes_path(i64) #1

declare dso_local i32 @path_is_absolute(i8*) #1

declare dso_local i32 @UNIT_WRITE_FLAGS_NOOP(i32) #1

declare dso_local i32* @condition_new(i64, i8*, i32, i32) #1

declare dso_local i32 @LIST_PREPEND(i32, i32*, i32*) #1

declare dso_local i32 @unit_write_settingf(i32*, i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @yes_no(i32) #1

declare dso_local i32 @sd_bus_message_exit_container(i32*) #1

declare dso_local i32* @condition_free_list(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
