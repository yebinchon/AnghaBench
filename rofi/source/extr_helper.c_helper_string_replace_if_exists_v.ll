; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_helper.c_helper_string_replace_if_exists_v.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_helper.c_helper_string_replace_if_exists_v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"\\[(.*)({[-\\w]+})(.*)\\]|({[\\w-]+})\00", align 1
@helper_eval_cb2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to parse: '%s'\0AError: '%s'\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @helper_string_replace_if_exists_v(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  store i8* null, i8** %7, align 8
  %10 = call i32* @g_regex_new(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, %struct.TYPE_5__** %6)
  store i32* %10, i32** %8, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = icmp eq %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32*, i32** %8, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* @helper_eval_cb2, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i8* @g_regex_replace_eval(i32* %14, i8* %15, i32 -1, i32 0, i32 0, i32 %16, i32* %17, %struct.TYPE_5__** %6)
  store i8* %18, i8** %7, align 8
  br label %19

19:                                               ; preds = %13, %2
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @g_regex_unref(i32* %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %25, i32 %28)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* @FALSE, align 4
  %32 = call i32 @rofi_view_error_dialog(i8* %30, i32 %31)
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @g_free(i8* %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = call i32 @g_error_free(%struct.TYPE_5__* %35)
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @g_free(i8* %37)
  store i8* null, i8** %3, align 8
  br label %41

39:                                               ; preds = %19
  %40 = load i8*, i8** %7, align 8
  store i8* %40, i8** %3, align 8
  br label %41

41:                                               ; preds = %39, %24
  %42 = load i8*, i8** %3, align 8
  ret i8* %42
}

declare dso_local i32* @g_regex_new(i8*, i32, i32, %struct.TYPE_5__**) #1

declare dso_local i8* @g_regex_replace_eval(i32*, i8*, i32, i32, i32, i32, i32*, %struct.TYPE_5__**) #1

declare dso_local i32 @g_regex_unref(i32*) #1

declare dso_local i8* @g_strdup_printf(i8*, i8*, i32) #1

declare dso_local i32 @rofi_view_error_dialog(i8*, i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @g_error_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
