; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-send-keys.c_cmd_send_keys_inject_string.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-send-keys.c_cmd_send_keys_inject_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32 }
%struct.cmd_find_state = type { i32 }
%struct.cmdq_item = type { i32 }
%struct.args = type { i8** }
%struct.utf8_data = type { i64 }

@KEYC_LITERAL = common dso_local global i64 0, align 8
@KEYC_NONE = common dso_local global i64 0, align 8
@KEYC_UNKNOWN = common dso_local global i64 0, align 8
@UTF8_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmdq_item* (%struct.client*, %struct.cmd_find_state*, %struct.cmdq_item*, %struct.args*, i32)* @cmd_send_keys_inject_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmdq_item* @cmd_send_keys_inject_string(%struct.client* %0, %struct.cmd_find_state* %1, %struct.cmdq_item* %2, %struct.args* %3, i32 %4) #0 {
  %6 = alloca %struct.cmdq_item*, align 8
  %7 = alloca %struct.client*, align 8
  %8 = alloca %struct.cmd_find_state*, align 8
  %9 = alloca %struct.cmdq_item*, align 8
  %10 = alloca %struct.args*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.utf8_data*, align 8
  %14 = alloca %struct.utf8_data*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.client* %0, %struct.client** %7, align 8
  store %struct.cmd_find_state* %1, %struct.cmd_find_state** %8, align 8
  store %struct.cmdq_item* %2, %struct.cmdq_item** %9, align 8
  store %struct.args* %3, %struct.args** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load %struct.args*, %struct.args** %10, align 8
  %21 = getelementptr inbounds %struct.args, %struct.args* %20, i32 0, i32 0
  %22 = load i8**, i8*** %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %12, align 8
  %27 = load %struct.args*, %struct.args** %10, align 8
  %28 = call i32 @args_has(%struct.args* %27, i8 signext 72)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %5
  %31 = load i8*, i8** %12, align 8
  %32 = call i64 @strtol(i8* %31, i8** %17, i32 16)
  store i64 %32, i64* %18, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %30
  %38 = load i64, i64* %18, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %18, align 8
  %42 = icmp sgt i64 %41, 255
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = load i8*, i8** %17, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43, %40, %37, %30
  %49 = load %struct.cmdq_item*, %struct.cmdq_item** %9, align 8
  store %struct.cmdq_item* %49, %struct.cmdq_item** %6, align 8
  br label %112

50:                                               ; preds = %43
  %51 = load %struct.client*, %struct.client** %7, align 8
  %52 = load %struct.cmd_find_state*, %struct.cmd_find_state** %8, align 8
  %53 = load %struct.cmdq_item*, %struct.cmdq_item** %9, align 8
  %54 = load i64, i64* @KEYC_LITERAL, align 8
  %55 = load i64, i64* %18, align 8
  %56 = or i64 %54, %55
  %57 = call %struct.cmdq_item* @cmd_send_keys_inject_key(%struct.client* %51, %struct.cmd_find_state* %52, %struct.cmdq_item* %53, i64 %56)
  store %struct.cmdq_item* %57, %struct.cmdq_item** %6, align 8
  br label %112

58:                                               ; preds = %5
  %59 = load %struct.args*, %struct.args** %10, align 8
  %60 = call i32 @args_has(%struct.args* %59, i8 signext 108)
  store i32 %60, i32* %19, align 4
  %61 = load i32, i32* %19, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %80, label %63

63:                                               ; preds = %58
  %64 = load i8*, i8** %12, align 8
  %65 = call i64 @key_string_lookup_string(i8* %64)
  store i64 %65, i64* %16, align 8
  %66 = load i64, i64* %16, align 8
  %67 = load i64, i64* @KEYC_NONE, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %63
  %70 = load i64, i64* %16, align 8
  %71 = load i64, i64* @KEYC_UNKNOWN, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load %struct.client*, %struct.client** %7, align 8
  %75 = load %struct.cmd_find_state*, %struct.cmd_find_state** %8, align 8
  %76 = load %struct.cmdq_item*, %struct.cmdq_item** %9, align 8
  %77 = load i64, i64* %16, align 8
  %78 = call %struct.cmdq_item* @cmd_send_keys_inject_key(%struct.client* %74, %struct.cmd_find_state* %75, %struct.cmdq_item* %76, i64 %77)
  store %struct.cmdq_item* %78, %struct.cmdq_item** %6, align 8
  br label %112

79:                                               ; preds = %69, %63
  store i32 1, i32* %19, align 4
  br label %80

80:                                               ; preds = %79, %58
  %81 = load i32, i32* %19, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %110

83:                                               ; preds = %80
  %84 = load i8*, i8** %12, align 8
  %85 = call %struct.utf8_data* @utf8_fromcstr(i8* %84)
  store %struct.utf8_data* %85, %struct.utf8_data** %13, align 8
  %86 = load %struct.utf8_data*, %struct.utf8_data** %13, align 8
  store %struct.utf8_data* %86, %struct.utf8_data** %14, align 8
  br label %87

87:                                               ; preds = %104, %83
  %88 = load %struct.utf8_data*, %struct.utf8_data** %14, align 8
  %89 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %87
  %93 = load %struct.utf8_data*, %struct.utf8_data** %14, align 8
  %94 = call i64 @utf8_combine(%struct.utf8_data* %93, i64* %15)
  %95 = load i64, i64* @UTF8_DONE, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %104

98:                                               ; preds = %92
  %99 = load %struct.client*, %struct.client** %7, align 8
  %100 = load %struct.cmd_find_state*, %struct.cmd_find_state** %8, align 8
  %101 = load %struct.cmdq_item*, %struct.cmdq_item** %9, align 8
  %102 = load i64, i64* %15, align 8
  %103 = call %struct.cmdq_item* @cmd_send_keys_inject_key(%struct.client* %99, %struct.cmd_find_state* %100, %struct.cmdq_item* %101, i64 %102)
  store %struct.cmdq_item* %103, %struct.cmdq_item** %9, align 8
  br label %104

104:                                              ; preds = %98, %97
  %105 = load %struct.utf8_data*, %struct.utf8_data** %14, align 8
  %106 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %105, i32 1
  store %struct.utf8_data* %106, %struct.utf8_data** %14, align 8
  br label %87

107:                                              ; preds = %87
  %108 = load %struct.utf8_data*, %struct.utf8_data** %13, align 8
  %109 = call i32 @free(%struct.utf8_data* %108)
  br label %110

110:                                              ; preds = %107, %80
  %111 = load %struct.cmdq_item*, %struct.cmdq_item** %9, align 8
  store %struct.cmdq_item* %111, %struct.cmdq_item** %6, align 8
  br label %112

112:                                              ; preds = %110, %73, %50, %48
  %113 = load %struct.cmdq_item*, %struct.cmdq_item** %6, align 8
  ret %struct.cmdq_item* %113
}

declare dso_local i32 @args_has(%struct.args*, i8 signext) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local %struct.cmdq_item* @cmd_send_keys_inject_key(%struct.client*, %struct.cmd_find_state*, %struct.cmdq_item*, i64) #1

declare dso_local i64 @key_string_lookup_string(i8*) #1

declare dso_local %struct.utf8_data* @utf8_fromcstr(i8*) #1

declare dso_local i64 @utf8_combine(%struct.utf8_data*, i64*) #1

declare dso_local i32 @free(%struct.utf8_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
