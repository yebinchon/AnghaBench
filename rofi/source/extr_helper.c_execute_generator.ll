; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_helper.c_execute_generator.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_helper.c_execute_generator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"{cmd}\00", align 1
@G_SPAWN_SEARCH_PATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to execute: '%s'\0AError: '%s'\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @execute_generator(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i8** null, i8*** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 0), align 4
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @helper_parse_setup(i32 %8, i8*** %3, i32* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %9, i8* null)
  store i32 -1, i32* %5, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  %11 = load i8**, i8*** %3, align 8
  %12 = load i32, i32* @G_SPAWN_SEARCH_PATH, align 4
  %13 = call i32 @g_spawn_async_with_pipes(i32* null, i8** %11, i32* null, i32 %12, i32* null, i32* null, i32* null, i32* null, i32* %5, i32* null, %struct.TYPE_5__** %6)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = load i8*, i8** %2, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %17, i32 %20)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* @FALSE, align 4
  %24 = call i32 @rofi_view_error_dialog(i8* %22, i32 %23)
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @g_free(i8* %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = call i32 @g_error_free(%struct.TYPE_5__* %27)
  store i32 -1, i32* %5, align 4
  br label %29

29:                                               ; preds = %16, %1
  %30 = load i8**, i8*** %3, align 8
  %31 = call i32 @g_strfreev(i8** %30)
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @helper_parse_setup(i32, i8***, i32*, i8*, i8*, i8*) #1

declare dso_local i32 @g_spawn_async_with_pipes(i32*, i8**, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_5__**) #1

declare dso_local i8* @g_strdup_printf(i8*, i8*, i32) #1

declare dso_local i32 @rofi_view_error_dialog(i8*, i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @g_error_free(%struct.TYPE_5__*) #1

declare dso_local i32 @g_strfreev(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
