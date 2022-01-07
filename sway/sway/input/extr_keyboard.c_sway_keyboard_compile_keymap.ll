; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_keyboard.c_sway_keyboard_compile_keymap.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_keyboard.c_sway_keyboard_compile_keymap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xkb_keymap = type { i32 }
%struct.input_config = type { i8* }
%struct.xkb_context = type { i32 }
%struct.xkb_rule_names = type { i32 }

@XKB_CONTEXT_NO_FLAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cannot create XKB context\00", align 1
@handle_xkb_context_log = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"cannot read XKB file %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@SWAY_ERROR = common dso_local global i32 0, align 4
@XKB_KEYMAP_FORMAT_TEXT_V1 = common dso_local global i32 0, align 4
@XKB_KEYMAP_COMPILE_NO_FLAGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"cannot close XKB file %s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xkb_keymap* @sway_keyboard_compile_keymap(%struct.input_config* %0, i8** %1) #0 {
  %3 = alloca %struct.xkb_keymap*, align 8
  %4 = alloca %struct.input_config*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.xkb_context*, align 8
  %7 = alloca %struct.xkb_keymap*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.xkb_rule_names, align 4
  store %struct.input_config* %0, %struct.input_config** %4, align 8
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @XKB_CONTEXT_NO_FLAGS, align 4
  %12 = call %struct.xkb_context* @xkb_context_new(i32 %11)
  store %struct.xkb_context* %12, %struct.xkb_context** %6, align 8
  %13 = load %struct.xkb_context*, %struct.xkb_context** %6, align 8
  %14 = call i32 @sway_assert(%struct.xkb_context* %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.xkb_keymap* null, %struct.xkb_keymap** %3, align 8
  br label %120

17:                                               ; preds = %2
  %18 = load %struct.xkb_context*, %struct.xkb_context** %6, align 8
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @xkb_context_set_user_data(%struct.xkb_context* %18, i8** %19)
  %21 = load %struct.xkb_context*, %struct.xkb_context** %6, align 8
  %22 = load i32, i32* @handle_xkb_context_log, align 4
  %23 = call i32 @xkb_context_set_log_fn(%struct.xkb_context* %21, i32 %22)
  store %struct.xkb_keymap* null, %struct.xkb_keymap** %7, align 8
  %24 = load %struct.input_config*, %struct.input_config** %4, align 8
  %25 = icmp ne %struct.input_config* %24, null
  br i1 %25, label %26, label %102

26:                                               ; preds = %17
  %27 = load %struct.input_config*, %struct.input_config** %4, align 8
  %28 = getelementptr inbounds %struct.input_config, %struct.input_config* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %102

31:                                               ; preds = %26
  %32 = load %struct.input_config*, %struct.input_config** %4, align 8
  %33 = getelementptr inbounds %struct.input_config, %struct.input_config* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32* @fopen(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %84, label %38

38:                                               ; preds = %31
  %39 = load i8**, i8*** %5, align 8
  %40 = icmp ne i8** %39, null
  br i1 %40, label %41, label %75

41:                                               ; preds = %38
  %42 = load %struct.input_config*, %struct.input_config** %4, align 8
  %43 = getelementptr inbounds %struct.input_config, %struct.input_config* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* @errno, align 4
  %46 = call i8* @strerror(i32 %45)
  %47 = call i32 @snprintf(i8* null, i64 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %44, i8* %46)
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i8* @malloc(i64 %50)
  %52 = load i8**, i8*** %5, align 8
  store i8* %51, i8** %52, align 8
  %53 = load i8**, i8*** %5, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %41
  %57 = load i8**, i8*** %5, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.input_config*, %struct.input_config** %4, align 8
  %61 = getelementptr inbounds %struct.input_config, %struct.input_config* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* @errno, align 4
  %64 = call i8* @strerror(i32 %63)
  %65 = call i32 @snprintf(i8* %58, i64 %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %62, i8* %64)
  br label %74

66:                                               ; preds = %41
  %67 = load i32, i32* @SWAY_ERROR, align 4
  %68 = load %struct.input_config*, %struct.input_config** %4, align 8
  %69 = getelementptr inbounds %struct.input_config, %struct.input_config* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* @errno, align 4
  %72 = call i8* @strerror(i32 %71)
  %73 = call i32 @sway_log_errno(i32 %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %70, i8* %72)
  br label %74

74:                                               ; preds = %66, %56
  br label %83

75:                                               ; preds = %38
  %76 = load i32, i32* @SWAY_ERROR, align 4
  %77 = load %struct.input_config*, %struct.input_config** %4, align 8
  %78 = getelementptr inbounds %struct.input_config, %struct.input_config* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* @errno, align 4
  %81 = call i8* @strerror(i32 %80)
  %82 = call i32 @sway_log_errno(i32 %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %79, i8* %81)
  br label %83

83:                                               ; preds = %75, %74
  br label %114

84:                                               ; preds = %31
  %85 = load %struct.xkb_context*, %struct.xkb_context** %6, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* @XKB_KEYMAP_FORMAT_TEXT_V1, align 4
  %88 = load i32, i32* @XKB_KEYMAP_COMPILE_NO_FLAGS, align 4
  %89 = call %struct.xkb_keymap* @xkb_keymap_new_from_file(%struct.xkb_context* %85, i32* %86, i32 %87, i32 %88)
  store %struct.xkb_keymap* %89, %struct.xkb_keymap** %7, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 @fclose(i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %84
  %94 = load i32, i32* @SWAY_ERROR, align 4
  %95 = load %struct.input_config*, %struct.input_config** %4, align 8
  %96 = getelementptr inbounds %struct.input_config, %struct.input_config* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* @errno, align 4
  %99 = call i8* @strerror(i32 %98)
  %100 = call i32 @sway_log_errno(i32 %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %97, i8* %99)
  br label %101

101:                                              ; preds = %93, %84
  br label %113

102:                                              ; preds = %26, %17
  %103 = bitcast %struct.xkb_rule_names* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %103, i8 0, i64 4, i1 false)
  %104 = load %struct.input_config*, %struct.input_config** %4, align 8
  %105 = icmp ne %struct.input_config* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load %struct.input_config*, %struct.input_config** %4, align 8
  %108 = call i32 @input_config_fill_rule_names(%struct.input_config* %107, %struct.xkb_rule_names* %10)
  br label %109

109:                                              ; preds = %106, %102
  %110 = load %struct.xkb_context*, %struct.xkb_context** %6, align 8
  %111 = load i32, i32* @XKB_KEYMAP_COMPILE_NO_FLAGS, align 4
  %112 = call %struct.xkb_keymap* @xkb_keymap_new_from_names(%struct.xkb_context* %110, %struct.xkb_rule_names* %10, i32 %111)
  store %struct.xkb_keymap* %112, %struct.xkb_keymap** %7, align 8
  br label %113

113:                                              ; preds = %109, %101
  br label %114

114:                                              ; preds = %113, %83
  %115 = load %struct.xkb_context*, %struct.xkb_context** %6, align 8
  %116 = call i32 @xkb_context_set_user_data(%struct.xkb_context* %115, i8** null)
  %117 = load %struct.xkb_context*, %struct.xkb_context** %6, align 8
  %118 = call i32 @xkb_context_unref(%struct.xkb_context* %117)
  %119 = load %struct.xkb_keymap*, %struct.xkb_keymap** %7, align 8
  store %struct.xkb_keymap* %119, %struct.xkb_keymap** %3, align 8
  br label %120

120:                                              ; preds = %114, %16
  %121 = load %struct.xkb_keymap*, %struct.xkb_keymap** %3, align 8
  ret %struct.xkb_keymap* %121
}

declare dso_local %struct.xkb_context* @xkb_context_new(i32) #1

declare dso_local i32 @sway_assert(%struct.xkb_context*, i8*) #1

declare dso_local i32 @xkb_context_set_user_data(%struct.xkb_context*, i8**) #1

declare dso_local i32 @xkb_context_set_log_fn(%struct.xkb_context*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @sway_log_errno(i32, i8*, i8*, i8*) #1

declare dso_local %struct.xkb_keymap* @xkb_keymap_new_from_file(%struct.xkb_context*, i32*, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @input_config_fill_rule_names(%struct.input_config*, %struct.xkb_rule_names*) #1

declare dso_local %struct.xkb_keymap* @xkb_keymap_new_from_names(%struct.xkb_context*, %struct.xkb_rule_names*, i32) #1

declare dso_local i32 @xkb_context_unref(%struct.xkb_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
