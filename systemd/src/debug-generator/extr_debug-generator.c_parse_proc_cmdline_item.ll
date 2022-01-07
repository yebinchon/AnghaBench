; ModuleID = '/home/carl/AnghaBench/systemd/src/debug-generator/extr_debug-generator.c_parse_proc_cmdline_item.c'
source_filename = "/home/carl/AnghaBench/systemd/src/debug-generator/extr_debug-generator.c_parse_proc_cmdline_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"systemd.mask\00", align 1
@UNIT_NAME_MANGLE_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to glob unit name: %m\00", align 1
@arg_mask = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"systemd.wants\00", align 1
@arg_wants = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"systemd.debug_shell\00", align 1
@DEBUGTTY = common dso_local global i8* null, align 8
@arg_debug_shell = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"systemd.unit\00", align 1
@arg_default_unit = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to set default unit %s: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @parse_proc_cmdline_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_proc_cmdline_item(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @assert(i8* %13)
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @streq(i8* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @proc_cmdline_value_missing(i8* %19, i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %146

24:                                               ; preds = %18
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* @UNIT_NAME_MANGLE_WARN, align 4
  %27 = call i32 @unit_name_mangle(i8* %25, i32 %26, i8** %9)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  %32 = call i32 (i32, i8*, ...) @log_error_errno(i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 %32, i32* %4, align 4
  br label %146

33:                                               ; preds = %24
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @strv_consume(i32* @arg_mask, i8* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 (...) @log_oom()
  store i32 %39, i32* %4, align 4
  br label %146

40:                                               ; preds = %33
  br label %145

41:                                               ; preds = %3
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @streq(i8* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %41
  %46 = load i8*, i8** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i64 @proc_cmdline_value_missing(i8* %46, i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %146

51:                                               ; preds = %45
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* @UNIT_NAME_MANGLE_WARN, align 4
  %54 = call i32 @unit_name_mangle(i8* %52, i32 %53, i8** %10)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* %8, align 4
  %59 = call i32 (i32, i8*, ...) @log_error_errno(i32 %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 %59, i32* %4, align 4
  br label %146

60:                                               ; preds = %51
  %61 = load i8*, i8** %10, align 8
  %62 = call i32 @strv_consume(i32* @arg_wants, i8* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = call i32 (...) @log_oom()
  store i32 %66, i32* %4, align 4
  br label %146

67:                                               ; preds = %60
  br label %144

68:                                               ; preds = %41
  %69 = load i8*, i8** %5, align 8
  %70 = call i64 @proc_cmdline_key_streq(i8* %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %100

72:                                               ; preds = %68
  store i8* null, i8** %11, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @parse_boolean(i8* %76)
  br label %79

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78, %75
  %80 = phi i32 [ %77, %75 ], [ 1, %78 ]
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i8*, i8** %6, align 8
  %85 = call i8* @skip_dev_prefix(i8* %84)
  store i8* %85, i8** %11, align 8
  br label %93

86:                                               ; preds = %79
  %87 = load i32, i32* %8, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i8*, i8** @DEBUGTTY, align 8
  %91 = call i8* @skip_dev_prefix(i8* %90)
  store i8* %91, i8** %11, align 8
  br label %92

92:                                               ; preds = %89, %86
  br label %93

93:                                               ; preds = %92, %83
  %94 = load i8*, i8** %11, align 8
  %95 = call i64 @free_and_strdup(i32* @arg_debug_shell, i8* %94)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = call i32 (...) @log_oom()
  store i32 %98, i32* %4, align 4
  br label %146

99:                                               ; preds = %93
  br label %143

100:                                              ; preds = %68
  %101 = load i8*, i8** %5, align 8
  %102 = call i64 @streq(i8* %101, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %121

104:                                              ; preds = %100
  %105 = load i8*, i8** %5, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = call i64 @proc_cmdline_value_missing(i8* %105, i8* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  br label %146

110:                                              ; preds = %104
  %111 = load i8*, i8** %6, align 8
  %112 = call i64 @free_and_strdup(i32* @arg_default_unit, i8* %111)
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load i32, i32* %8, align 4
  %118 = load i8*, i8** %6, align 8
  %119 = call i32 (i32, i8*, ...) @log_error_errno(i32 %117, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %118)
  store i32 %119, i32* %4, align 4
  br label %146

120:                                              ; preds = %110
  br label %142

121:                                              ; preds = %100
  %122 = load i8*, i8** %6, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %141, label %124

124:                                              ; preds = %121
  %125 = load i8*, i8** %5, align 8
  %126 = call i8* @runlevel_to_target(i8* %125)
  store i8* %126, i8** %12, align 8
  %127 = load i8*, i8** %12, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %140

129:                                              ; preds = %124
  %130 = load i8*, i8** %12, align 8
  %131 = call i64 @free_and_strdup(i32* @arg_default_unit, i8* %130)
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = load i32, i32* %8, align 4
  %137 = load i8*, i8** %12, align 8
  %138 = call i32 (i32, i8*, ...) @log_error_errno(i32 %136, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %137)
  store i32 %138, i32* %4, align 4
  br label %146

139:                                              ; preds = %129
  br label %140

140:                                              ; preds = %139, %124
  br label %141

141:                                              ; preds = %140, %121
  br label %142

142:                                              ; preds = %141, %120
  br label %143

143:                                              ; preds = %142, %99
  br label %144

144:                                              ; preds = %143, %67
  br label %145

145:                                              ; preds = %144, %40
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %145, %135, %116, %109, %97, %65, %57, %50, %38, %30, %23
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i64 @proc_cmdline_value_missing(i8*, i8*) #1

declare dso_local i32 @unit_name_mangle(i8*, i32, i8**) #1

declare dso_local i32 @log_error_errno(i32, i8*, ...) #1

declare dso_local i32 @strv_consume(i32*, i8*) #1

declare dso_local i32 @log_oom(...) #1

declare dso_local i64 @proc_cmdline_key_streq(i8*, i8*) #1

declare dso_local i32 @parse_boolean(i8*) #1

declare dso_local i8* @skip_dev_prefix(i8*) #1

declare dso_local i64 @free_and_strdup(i32*, i8*) #1

declare dso_local i8* @runlevel_to_target(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
