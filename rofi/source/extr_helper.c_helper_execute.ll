; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_helper.c_helper_execute.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_helper.c_helper_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@G_SPAWN_SEARCH_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to execute: '%s%s'\0AError: '%s'\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @helper_execute(i8* %0, i8** %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load i32, i32* @TRUE, align 4
  store i32 %16, i32* %11, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = call i32 @display_startup_notification(i32* %17, i32** %13, i32** %14)
  %19 = load i8*, i8** %6, align 8
  %20 = load i8**, i8*** %7, align 8
  %21 = load i32, i32* @G_SPAWN_SEARCH_PATH, align 4
  %22 = load i32*, i32** %13, align 8
  %23 = load i32*, i32** %14, align 8
  %24 = call i32 @g_spawn_async(i8* %19, i8** %20, i32* null, i32 %21, i32* %22, i32* %23, i32* null, %struct.TYPE_4__** %12)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %42

27:                                               ; preds = %5
  %28 = load i8*, i8** %8, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %29, i32 %32)
  store i8* %33, i8** %15, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = load i32, i32* @FALSE, align 4
  %36 = call i32 @rofi_view_error_dialog(i8* %34, i32 %35)
  %37 = load i8*, i8** %15, align 8
  %38 = call i32 @g_free(i8* %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %40 = call i32 @g_error_free(%struct.TYPE_4__* %39)
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %27, %5
  %43 = load i8**, i8*** %7, align 8
  %44 = call i32 @g_strfreev(i8** %43)
  %45 = load i32, i32* %11, align 4
  ret i32 %45
}

declare dso_local i32 @display_startup_notification(i32*, i32**, i32**) #1

declare dso_local i32 @g_spawn_async(i8*, i8**, i32*, i32, i32*, i32*, i32*, %struct.TYPE_4__**) #1

declare dso_local i8* @g_strdup_printf(i8*, i8*, i8*, i32) #1

declare dso_local i32 @rofi_view_error_dialog(i8*, i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @g_error_free(%struct.TYPE_4__*) #1

declare dso_local i32 @g_strfreev(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
