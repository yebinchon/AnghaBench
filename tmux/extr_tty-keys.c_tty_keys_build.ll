; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty-keys.c_tty_keys_build.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty-keys.c_tty_keys_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_default_key_raw = type { i8*, i64, i32 }
%struct.tty = type { i32, i32* }
%struct.tty_default_key_code = type { i8*, i64, i32 }
%struct.options_entry = type { i32 }
%struct.options_array_item = type { i32 }
%union.options_value = type { i8* }

@tty_default_raw_keys = common dso_local global %struct.tty_default_key_raw* null, align 8
@tty_default_code_keys = common dso_local global %struct.tty_default_key_raw* null, align 8
@global_options = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"user-keys\00", align 1
@KEYC_USER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_keys_build(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca %struct.tty_default_key_raw*, align 8
  %4 = alloca %struct.tty_default_key_code*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.options_entry*, align 8
  %8 = alloca %struct.options_array_item*, align 8
  %9 = alloca %union.options_value*, align 8
  store %struct.tty* %0, %struct.tty** %2, align 8
  %10 = load %struct.tty*, %struct.tty** %2, align 8
  %11 = getelementptr inbounds %struct.tty, %struct.tty* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.tty*, %struct.tty** %2, align 8
  %16 = call i32 @tty_keys_free(%struct.tty* %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.tty*, %struct.tty** %2, align 8
  %19 = getelementptr inbounds %struct.tty, %struct.tty* %18, i32 0, i32 1
  store i32* null, i32** %19, align 8
  store i64 0, i64* %5, align 8
  br label %20

20:                                               ; preds = %44, %17
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.tty_default_key_raw*, %struct.tty_default_key_raw** @tty_default_raw_keys, align 8
  %23 = call i64 @nitems(%struct.tty_default_key_raw* %22)
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %20
  %26 = load %struct.tty_default_key_raw*, %struct.tty_default_key_raw** @tty_default_raw_keys, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.tty_default_key_raw, %struct.tty_default_key_raw* %26, i64 %27
  store %struct.tty_default_key_raw* %28, %struct.tty_default_key_raw** %3, align 8
  %29 = load %struct.tty_default_key_raw*, %struct.tty_default_key_raw** %3, align 8
  %30 = getelementptr inbounds %struct.tty_default_key_raw, %struct.tty_default_key_raw* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %6, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %25
  %37 = load %struct.tty*, %struct.tty** %2, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.tty_default_key_raw*, %struct.tty_default_key_raw** %3, align 8
  %40 = getelementptr inbounds %struct.tty_default_key_raw, %struct.tty_default_key_raw* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @tty_keys_add(%struct.tty* %37, i8* %38, i64 %41)
  br label %43

43:                                               ; preds = %36, %25
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %5, align 8
  br label %20

47:                                               ; preds = %20
  store i64 0, i64* %5, align 8
  br label %48

48:                                               ; preds = %77, %47
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.tty_default_key_raw*, %struct.tty_default_key_raw** @tty_default_code_keys, align 8
  %51 = call i64 @nitems(%struct.tty_default_key_raw* %50)
  %52 = icmp ult i64 %49, %51
  br i1 %52, label %53, label %80

53:                                               ; preds = %48
  %54 = load %struct.tty_default_key_raw*, %struct.tty_default_key_raw** @tty_default_code_keys, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds %struct.tty_default_key_raw, %struct.tty_default_key_raw* %54, i64 %55
  %57 = bitcast %struct.tty_default_key_raw* %56 to %struct.tty_default_key_code*
  store %struct.tty_default_key_code* %57, %struct.tty_default_key_code** %4, align 8
  %58 = load %struct.tty*, %struct.tty** %2, align 8
  %59 = getelementptr inbounds %struct.tty, %struct.tty* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.tty_default_key_code*, %struct.tty_default_key_code** %4, align 8
  %62 = getelementptr inbounds %struct.tty_default_key_code, %struct.tty_default_key_code* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i8* @tty_term_string(i32 %60, i32 %63)
  store i8* %64, i8** %6, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %53
  %70 = load %struct.tty*, %struct.tty** %2, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = load %struct.tty_default_key_code*, %struct.tty_default_key_code** %4, align 8
  %73 = getelementptr inbounds %struct.tty_default_key_code, %struct.tty_default_key_code* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @tty_keys_add(%struct.tty* %70, i8* %71, i64 %74)
  br label %76

76:                                               ; preds = %69, %53
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %5, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %5, align 8
  br label %48

80:                                               ; preds = %48
  %81 = load i32, i32* @global_options, align 4
  %82 = call %struct.options_entry* @options_get(i32 %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.options_entry* %82, %struct.options_entry** %7, align 8
  %83 = load %struct.options_entry*, %struct.options_entry** %7, align 8
  %84 = icmp ne %struct.options_entry* %83, null
  br i1 %84, label %85, label %107

85:                                               ; preds = %80
  %86 = load %struct.options_entry*, %struct.options_entry** %7, align 8
  %87 = call %struct.options_array_item* @options_array_first(%struct.options_entry* %86)
  store %struct.options_array_item* %87, %struct.options_array_item** %8, align 8
  br label %88

88:                                               ; preds = %91, %85
  %89 = load %struct.options_array_item*, %struct.options_array_item** %8, align 8
  %90 = icmp ne %struct.options_array_item* %89, null
  br i1 %90, label %91, label %106

91:                                               ; preds = %88
  %92 = load %struct.options_array_item*, %struct.options_array_item** %8, align 8
  %93 = call i64 @options_array_item_index(%struct.options_array_item* %92)
  store i64 %93, i64* %5, align 8
  %94 = load %struct.options_array_item*, %struct.options_array_item** %8, align 8
  %95 = call %union.options_value* @options_array_item_value(%struct.options_array_item* %94)
  store %union.options_value* %95, %union.options_value** %9, align 8
  %96 = load %struct.tty*, %struct.tty** %2, align 8
  %97 = load %union.options_value*, %union.options_value** %9, align 8
  %98 = bitcast %union.options_value* %97 to i8**
  %99 = load i8*, i8** %98, align 8
  %100 = load i64, i64* @KEYC_USER, align 8
  %101 = load i64, i64* %5, align 8
  %102 = add i64 %100, %101
  %103 = call i32 @tty_keys_add(%struct.tty* %96, i8* %99, i64 %102)
  %104 = load %struct.options_array_item*, %struct.options_array_item** %8, align 8
  %105 = call %struct.options_array_item* @options_array_next(%struct.options_array_item* %104)
  store %struct.options_array_item* %105, %struct.options_array_item** %8, align 8
  br label %88

106:                                              ; preds = %88
  br label %107

107:                                              ; preds = %106, %80
  ret void
}

declare dso_local i32 @tty_keys_free(%struct.tty*) #1

declare dso_local i64 @nitems(%struct.tty_default_key_raw*) #1

declare dso_local i32 @tty_keys_add(%struct.tty*, i8*, i64) #1

declare dso_local i8* @tty_term_string(i32, i32) #1

declare dso_local %struct.options_entry* @options_get(i32, i8*) #1

declare dso_local %struct.options_array_item* @options_array_first(%struct.options_entry*) #1

declare dso_local i64 @options_array_item_index(%struct.options_array_item*) #1

declare dso_local %union.options_value* @options_array_item_value(%struct.options_array_item*) #1

declare dso_local %struct.options_array_item* @options_array_next(%struct.options_array_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
