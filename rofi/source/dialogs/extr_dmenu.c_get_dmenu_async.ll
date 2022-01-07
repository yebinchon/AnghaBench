; ModuleID = '/home/carl/AnghaBench/rofi/source/dialogs/extr_dmenu.c_get_dmenu_async.c'
source_filename = "/home/carl/AnghaBench/rofi/source/dialogs/extr_dmenu.c_get_dmenu_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@G_PRIORITY_LOW = common dso_local global i32 0, align 4
@async_close_callback = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@async_read_callback = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @get_dmenu_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dmenu_async(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %8

8:                                                ; preds = %34, %2
  %9 = load i32, i32* %5, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %5, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %12, label %45

12:                                               ; preds = %8
  store i32 0, i32* %6, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = call i8* @g_data_input_stream_read_upto(i32 %15, i32* %17, i32 1, i32* %6, i32* null, i32* null)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %12
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @G_INPUT_STREAM(i32 %24)
  %26 = load i32, i32* @G_PRIORITY_LOW, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @async_close_callback, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = call i32 @g_input_stream_close_async(i32 %25, i32 %26, i32 %29, i32 %30, %struct.TYPE_6__* %31)
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %3, align 4
  br label %59

34:                                               ; preds = %12
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @g_data_input_stream_read_byte(i32 %37, i32* null, i32* null)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @read_add(%struct.TYPE_6__* %39, i8* %40, i32 %41)
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @g_free(i8* %43)
  br label %8

45:                                               ; preds = %8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* @G_PRIORITY_LOW, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @async_read_callback, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = call i32 @g_data_input_stream_read_upto_async(i32 %48, i32* %50, i32 1, i32 %51, i32 %54, i32 %55, %struct.TYPE_6__* %56)
  %58 = load i32, i32* @TRUE, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %45, %21
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i8* @g_data_input_stream_read_upto(i32, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @g_input_stream_close_async(i32, i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @G_INPUT_STREAM(i32) #1

declare dso_local i32 @g_data_input_stream_read_byte(i32, i32*, i32*) #1

declare dso_local i32 @read_add(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @g_data_input_stream_read_upto_async(i32, i32*, i32, i32, i32, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
