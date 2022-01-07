; ModuleID = '/home/carl/AnghaBench/tmux/extr_options.c_options_value_tostring.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_options.c_options_value_tostring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8** }
%union.options_value = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"not a number option type\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.options_entry*, %union.options_value*, i32)* @options_value_tostring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @options_value_tostring(%struct.options_entry* %0, %union.options_value* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.options_entry*, align 8
  %6 = alloca %union.options_value*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.options_entry* %0, %struct.options_entry** %5, align 8
  store %union.options_value* %1, %union.options_value** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.options_entry*, %struct.options_entry** %5, align 8
  %10 = call i64 @OPTIONS_IS_COMMAND(%struct.options_entry* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %union.options_value*, %union.options_value** %6, align 8
  %14 = bitcast %union.options_value* %13 to i32*
  %15 = load i32, i32* %14, align 8
  %16 = call i8* @cmd_list_print(i32 %15, i32 0)
  store i8* %16, i8** %4, align 8
  br label %97

17:                                               ; preds = %3
  %18 = load %struct.options_entry*, %struct.options_entry** %5, align 8
  %19 = call i64 @OPTIONS_IS_STYLE(%struct.options_entry* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load %union.options_value*, %union.options_value** %6, align 8
  %23 = bitcast %union.options_value* %22 to i32*
  %24 = call i8* @style_tostring(i32* %23)
  %25 = call i8* @xstrdup(i8* %24)
  store i8* %25, i8** %4, align 8
  br label %97

26:                                               ; preds = %17
  %27 = load %struct.options_entry*, %struct.options_entry** %5, align 8
  %28 = call i64 @OPTIONS_IS_NUMBER(%struct.options_entry* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %86

30:                                               ; preds = %26
  %31 = load %struct.options_entry*, %struct.options_entry** %5, align 8
  %32 = getelementptr inbounds %struct.options_entry, %struct.options_entry* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %84 [
    i32 130, label %36
    i32 131, label %41
    i32 134, label %47
    i32 132, label %53
    i32 135, label %70
    i32 129, label %82
    i32 128, label %82
    i32 133, label %82
  ]

36:                                               ; preds = %30
  %37 = load %union.options_value*, %union.options_value** %6, align 8
  %38 = bitcast %union.options_value* %37 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @xasprintf(i8** %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %39)
  br label %84

41:                                               ; preds = %30
  %42 = load %union.options_value*, %union.options_value** %6, align 8
  %43 = bitcast %union.options_value* %42 to i64*
  %44 = load i64, i64* %43, align 8
  %45 = call i8* @key_string_lookup_key(i64 %44)
  %46 = call i8* @xstrdup(i8* %45)
  store i8* %46, i8** %8, align 8
  br label %84

47:                                               ; preds = %30
  %48 = load %union.options_value*, %union.options_value** %6, align 8
  %49 = bitcast %union.options_value* %48 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = call i8* @colour_tostring(i64 %50)
  %52 = call i8* @xstrdup(i8* %51)
  store i8* %52, i8** %8, align 8
  br label %84

53:                                               ; preds = %30
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load %union.options_value*, %union.options_value** %6, align 8
  %58 = bitcast %union.options_value* %57 to i64*
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @xasprintf(i8** %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %59)
  br label %69

61:                                               ; preds = %53
  %62 = load %union.options_value*, %union.options_value** %6, align 8
  %63 = bitcast %union.options_value* %62 to i64*
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %68 = call i8* @xstrdup(i8* %67)
  store i8* %68, i8** %8, align 8
  br label %69

69:                                               ; preds = %61, %56
  br label %84

70:                                               ; preds = %30
  %71 = load %struct.options_entry*, %struct.options_entry** %5, align 8
  %72 = getelementptr inbounds %struct.options_entry, %struct.options_entry* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i8**, i8*** %74, align 8
  %76 = load %union.options_value*, %union.options_value** %6, align 8
  %77 = bitcast %union.options_value* %76 to i64*
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i8*, i8** %75, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i8* @xstrdup(i8* %80)
  store i8* %81, i8** %8, align 8
  br label %84

82:                                               ; preds = %30, %30, %30
  %83 = call i32 @fatalx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %30, %70, %69, %47, %41, %36
  %85 = load i8*, i8** %8, align 8
  store i8* %85, i8** %4, align 8
  br label %97

86:                                               ; preds = %26
  %87 = load %struct.options_entry*, %struct.options_entry** %5, align 8
  %88 = call i64 @OPTIONS_IS_STRING(%struct.options_entry* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load %union.options_value*, %union.options_value** %6, align 8
  %92 = bitcast %union.options_value* %91 to i8**
  %93 = load i8*, i8** %92, align 8
  %94 = call i8* @xstrdup(i8* %93)
  store i8* %94, i8** %4, align 8
  br label %97

95:                                               ; preds = %86
  %96 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  store i8* %96, i8** %4, align 8
  br label %97

97:                                               ; preds = %95, %90, %84, %21, %12
  %98 = load i8*, i8** %4, align 8
  ret i8* %98
}

declare dso_local i64 @OPTIONS_IS_COMMAND(%struct.options_entry*) #1

declare dso_local i8* @cmd_list_print(i32, i32) #1

declare dso_local i64 @OPTIONS_IS_STYLE(%struct.options_entry*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @style_tostring(i32*) #1

declare dso_local i64 @OPTIONS_IS_NUMBER(%struct.options_entry*) #1

declare dso_local i32 @xasprintf(i8**, i8*, i64) #1

declare dso_local i8* @key_string_lookup_key(i64) #1

declare dso_local i8* @colour_tostring(i64) #1

declare dso_local i32 @fatalx(i8*) #1

declare dso_local i64 @OPTIONS_IS_STRING(%struct.options_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
