; ModuleID = '/home/carl/AnghaBench/rofi/source/dialogs/extr_script.c_script_switcher_parse_setup.c'
source_filename = "/home/carl/AnghaBench/rofi/source/dialogs/extr_script.c_script_switcher_parse_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32 (%struct.TYPE_5__*)*, i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@script_mode_init = common dso_local global i32 0, align 4
@script_mode_get_num_entries = common dso_local global i32 0, align 4
@script_mode_result = common dso_local global i32 0, align 4
@script_mode_destroy = common dso_local global i32 0, align 4
@script_token_match = common dso_local global i32 0, align 4
@script_get_message = common dso_local global i32 0, align 4
@script_get_icon = common dso_local global i32 0, align 4
@_get_display_value = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"The script command '%s' has %u options, but needs 2: <name>:<script>.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @script_switcher_parse_setup(i8* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %10 = call %struct.TYPE_5__* @g_malloc0(i32 80)
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %4, align 8
  store i8* null, i8** %5, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i8* @g_strdup(i8* %11)
  store i8* %12, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i8* @strtok_r(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8** %5)
  store i8* %14, i8** %9, align 8
  br label %15

15:                                               ; preds = %39, %1
  %16 = load i8*, i8** %9, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %41

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i8*, i8** %9, align 8
  %23 = call i8* @g_strdup(i8* %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 12
  store i8* %23, i8** %25, align 8
  br label %36

26:                                               ; preds = %18
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i8*, i8** %9, align 8
  %31 = call i64 @rofi_expand_path(i8* %30)
  %32 = inttoptr i64 %31 to i8*
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 11
  store i8* %32, i8** %34, align 8
  br label %35

35:                                               ; preds = %29, %26
  br label %36

36:                                               ; preds = %35, %21
  %37 = load i32, i32* %7, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %36
  %40 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8** %5)
  store i8* %40, i8** %9, align 8
  br label %15

41:                                               ; preds = %15
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @g_free(i8* %42)
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %78

46:                                               ; preds = %41
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 10
  store i32 (%struct.TYPE_5__*)* @script_switcher_free, i32 (%struct.TYPE_5__*)** %48, align 8
  %49 = load i32, i32* @script_mode_init, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 9
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @script_mode_get_num_entries, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 8
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @script_mode_result, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @script_mode_destroy, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @script_token_match, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @script_get_message, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @script_get_icon, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  store i32* null, i32** %71, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  store i32* null, i32** %73, align 8
  %74 = load i32, i32* @_get_display_value, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %77, %struct.TYPE_5__** %2, align 8
  br label %85

78:                                               ; preds = %41
  %79 = load i32, i32* @stderr, align 4
  %80 = load i8*, i8** %3, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @fprintf(i32 %79, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i8* %80, i32 %81)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = call i32 @script_switcher_free(%struct.TYPE_5__* %83)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %85

85:                                               ; preds = %78, %46
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %86
}

declare dso_local %struct.TYPE_5__* @g_malloc0(i32) #1

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i64 @rofi_expand_path(i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @script_switcher_free(%struct.TYPE_5__*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
