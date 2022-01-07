; ModuleID = '/home/carl/AnghaBench/rofi/source/dialogs/extr_dmenu.c_async_read_callback.c'
source_filename = "/home/carl/AnghaBench/rofi/source/dialogs/extr_dmenu.c_async_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@G_PRIORITY_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Clearing overlay\00", align 1
@async_close_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64)* @async_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @async_read_callback(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i32*, i32** %4, align 8
  store i32* %12, i32** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %8, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i8* @g_data_input_stream_read_upto_finish(i32* %15, i32* %16, i32* %9, i32* null)
  store i8* %17, i8** %10, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %41

20:                                               ; preds = %3
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @g_data_input_stream_read_byte(i32* %21, i32* null, i32** null)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @read_add(%struct.TYPE_5__* %23, i8* %24, i32 %25)
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @g_free(i8* %27)
  %29 = call i32 (...) @rofi_view_reload()
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* @G_PRIORITY_LOW, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = call i32 @g_data_input_stream_read_upto_async(i32 %32, i32* %34, i32 1, i32 %35, i32 %38, void (i32*, i32*, i64)* @async_read_callback, %struct.TYPE_5__* %39)
  br label %84

41:                                               ; preds = %3
  store i32* null, i32** %11, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @g_data_input_stream_read_byte(i32* %42, i32* null, i32** %11)
  %44 = load i32*, i32** %11, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %61

46:                                               ; preds = %41
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %48 = call i32 @read_add(%struct.TYPE_5__* %47, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  %49 = call i32 (...) @rofi_view_reload()
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* @G_PRIORITY_LOW, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %60 = call i32 @g_data_input_stream_read_upto_async(i32 %52, i32* %54, i32 1, i32 %55, i32 %58, void (i32*, i32*, i64)* @async_read_callback, %struct.TYPE_5__* %59)
  br label %84

61:                                               ; preds = %41
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @g_error_free(i32* %62)
  br label %64

64:                                               ; preds = %61
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @g_cancellable_is_cancelled(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %84, label %71

71:                                               ; preds = %65
  %72 = call i32 @g_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %73 = call i32 (...) @rofi_view_get_active()
  %74 = call i32 @rofi_view_set_overlay(i32 %73, i32* null)
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @G_INPUT_STREAM(i32* %75)
  %77 = load i32, i32* @G_PRIORITY_LOW, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @async_close_callback, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %83 = call i32 @g_input_stream_close_async(i32 %76, i32 %77, i32 %80, i32 %81, %struct.TYPE_5__* %82)
  br label %84

84:                                               ; preds = %20, %46, %71, %65
  ret void
}

declare dso_local i8* @g_data_input_stream_read_upto_finish(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @g_data_input_stream_read_byte(i32*, i32*, i32**) #1

declare dso_local i32 @read_add(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @rofi_view_reload(...) #1

declare dso_local i32 @g_data_input_stream_read_upto_async(i32, i32*, i32, i32, i32, void (i32*, i32*, i64)*, %struct.TYPE_5__*) #1

declare dso_local i32 @g_error_free(i32*) #1

declare dso_local i32 @g_cancellable_is_cancelled(i32) #1

declare dso_local i32 @g_debug(i8*) #1

declare dso_local i32 @rofi_view_set_overlay(i32, i32*) #1

declare dso_local i32 @rofi_view_get_active(...) #1

declare dso_local i32 @g_input_stream_close_async(i32, i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @G_INPUT_STREAM(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
