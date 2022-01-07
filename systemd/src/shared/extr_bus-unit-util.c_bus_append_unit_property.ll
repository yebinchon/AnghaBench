; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_bus-unit-util.c_bus_append_unit_property.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_bus-unit-util.c_bus_append_unit_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_CONDITION_TYPE_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"SourcePath\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"OnFailureJobMode\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"JobTimeoutAction\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"JobTimeoutRebootArgument\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"StartLimitAction\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"FailureAction\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"SuccessAction\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"RebootArgument\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"CollectMode\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"StopWhenUnneeded\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"RefuseManualStart\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"RefuseManualStop\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"AllowIsolate\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"IgnoreOnIsolate\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"DefaultDependencies\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"JobTimeoutSec\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"JobRunningTimeoutSec\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"StartLimitIntervalSec\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"StartLimitBurst\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"SuccessActionExitStatus\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"FailureActionExitStatus\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"(sv)\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Failed to parse %s=%s\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"Documentation\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"RequiresMountsFor\00", align 1
@EXTRACT_UNQUOTE = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [11 x i8] c"Conditions\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"Asserts\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"a(sbbs)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @bus_append_unit_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bus_append_unit_property(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i64, i64* @_CONDITION_TYPE_INVALID, align 8
  store i64 %15, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 (i8*, i8*, i8*, ...) @STR_IN_SET(i8* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @bus_append_string(i32* %20, i8* %21, i8* %22)
  store i32 %23, i32* %4, align 4
  br label %165

24:                                               ; preds = %3
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 (i8*, i8*, i8*, ...) @STR_IN_SET(i8* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @bus_append_parse_boolean(i32* %29, i8* %30, i8* %31)
  store i32 %32, i32* %4, align 4
  br label %165

33:                                               ; preds = %24
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 (i8*, i8*, i8*, ...) @STR_IN_SET(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32*, i32** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @bus_append_parse_sec_rename(i32* %38, i8* %39, i8* %40)
  store i32 %41, i32* %4, align 4
  br label %165

42:                                               ; preds = %33
  %43 = load i8*, i8** %6, align 8
  %44 = call i64 @streq(i8* %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32*, i32** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @bus_append_safe_atou(i32* %47, i8* %48, i8* %49)
  store i32 %50, i32* %4, align 4
  br label %165

51:                                               ; preds = %42
  %52 = load i8*, i8** %6, align 8
  %53 = call i64 (i8*, i8*, i8*, ...) @STR_IN_SET(i8* %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %86

55:                                               ; preds = %51
  %56 = load i8*, i8** %7, align 8
  %57 = call i64 @isempty(i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32*, i32** %5, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 (i32*, i8*, i8*, i8*, i32, ...) @sd_bus_message_append(i32* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i32 -1)
  store i32 %62, i32* %10, align 4
  br label %79

63:                                               ; preds = %55
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @safe_atou8(i8* %64, i64* %11)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load i32, i32* %10, align 4
  %70 = load i8*, i8** %6, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @log_error_errno(i32 %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0), i8* %70, i8* %71)
  store i32 %72, i32* %4, align 4
  br label %165

73:                                               ; preds = %63
  %74 = load i32*, i32** %5, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i64, i64* %11, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 (i32*, i8*, i8*, i8*, i32, ...) @sd_bus_message_append(i32* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i32 %77)
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %73, %59
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @bus_log_create_error(i32 %83)
  store i32 %84, i32* %4, align 4
  br label %165

85:                                               ; preds = %79
  store i32 1, i32* %4, align 4
  br label %165

86:                                               ; preds = %51
  %87 = load i8*, i8** %6, align 8
  %88 = call i64 @unit_dependency_from_string(i8* %87)
  %89 = icmp sge i64 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i8*, i8** %6, align 8
  %92 = call i64 (i8*, i8*, i8*, ...) @STR_IN_SET(i8* %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0))
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %90, %86
  %95 = load i32*, i32** %5, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = load i32, i32* @EXTRACT_UNQUOTE, align 4
  %99 = call i32 @bus_append_strv(i32* %95, i8* %96, i8* %97, i32 %98)
  store i32 %99, i32* %4, align 4
  br label %165

100:                                              ; preds = %90
  %101 = load i8*, i8** %6, align 8
  %102 = call i64 @condition_type_from_string(i8* %101)
  store i64 %102, i64* %8, align 8
  %103 = load i64, i64* %8, align 8
  %104 = icmp sge i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  store i32 1, i32* %9, align 4
  br label %109

106:                                              ; preds = %100
  %107 = load i8*, i8** %6, align 8
  %108 = call i64 @assert_type_from_string(i8* %107)
  store i64 %108, i64* %8, align 8
  br label %109

109:                                              ; preds = %106, %105
  %110 = load i64, i64* %8, align 8
  %111 = icmp sge i64 %110, 0
  br i1 %111, label %112, label %164

112:                                              ; preds = %109
  %113 = load i8*, i8** %7, align 8
  %114 = call i64 @isempty(i8* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %112
  %117 = load i32*, i32** %5, align 8
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0)
  %122 = call i32 (i32*, i8*, i8*, i8*, i32, ...) @sd_bus_message_append(i32* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i32 0)
  store i32 %122, i32* %10, align 4
  br label %157

123:                                              ; preds = %112
  %124 = load i8*, i8** %7, align 8
  store i8* %124, i8** %12, align 8
  %125 = load i8*, i8** %12, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 124
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %123
  %133 = load i8*, i8** %12, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %12, align 8
  br label %135

135:                                              ; preds = %132, %123
  %136 = load i8*, i8** %12, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 33
  %140 = zext i1 %139 to i32
  store i32 %140, i32* %14, align 4
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %135
  %144 = load i8*, i8** %12, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %12, align 8
  br label %146

146:                                              ; preds = %143, %135
  %147 = load i32*, i32** %5, align 8
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0)
  %152 = load i8*, i8** %6, align 8
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* %14, align 4
  %155 = load i8*, i8** %12, align 8
  %156 = call i32 (i32*, i8*, i8*, i8*, i32, ...) @sd_bus_message_append(i32* %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* %151, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i32 1, i8* %152, i32 %153, i32 %154, i8* %155)
  store i32 %156, i32* %10, align 4
  br label %157

157:                                              ; preds = %146, %116
  %158 = load i32, i32* %10, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @bus_log_create_error(i32 %161)
  store i32 %162, i32* %4, align 4
  br label %165

163:                                              ; preds = %157
  store i32 1, i32* %4, align 4
  br label %165

164:                                              ; preds = %109
  store i32 0, i32* %4, align 4
  br label %165

165:                                              ; preds = %164, %163, %160, %94, %85, %82, %68, %46, %37, %28, %19
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i64 @STR_IN_SET(i8*, i8*, i8*, ...) #1

declare dso_local i32 @bus_append_string(i32*, i8*, i8*) #1

declare dso_local i32 @bus_append_parse_boolean(i32*, i8*, i8*) #1

declare dso_local i32 @bus_append_parse_sec_rename(i32*, i8*, i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @bus_append_safe_atou(i32*, i8*, i8*) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i32 @sd_bus_message_append(i32*, i8*, i8*, i8*, i32, ...) #1

declare dso_local i32 @safe_atou8(i8*, i64*) #1

declare dso_local i32 @log_error_errno(i32, i8*, i8*, i8*) #1

declare dso_local i32 @bus_log_create_error(i32) #1

declare dso_local i64 @unit_dependency_from_string(i8*) #1

declare dso_local i32 @bus_append_strv(i32*, i8*, i8*, i32) #1

declare dso_local i64 @condition_type_from_string(i8*) #1

declare dso_local i64 @assert_type_from_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
