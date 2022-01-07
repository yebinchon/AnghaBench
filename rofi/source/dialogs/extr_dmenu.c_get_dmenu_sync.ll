; ModuleID = '/home/carl/AnghaBench/rofi/source/dialogs/extr_dmenu.c_get_dmenu_sync.c'
source_filename = "/home/carl/AnghaBench/rofi/source/dialogs/extr_dmenu.c_get_dmenu_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@TRUE = common dso_local global i64 0, align 8
@G_PRIORITY_LOW = common dso_local global i32 0, align 4
@async_close_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @get_dmenu_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_dmenu_sync(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  br label %5

5:                                                ; preds = %18, %1
  %6 = load i64, i64* @TRUE, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %5
  store i32 0, i32* %3, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %14 = call i8* @g_data_input_stream_read_upto(i32 %11, i32* %13, i32 1, i32* %3, i32* null, i32* null)
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  br label %29

18:                                               ; preds = %8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @g_data_input_stream_read_byte(i32 %21, i32* null, i32* null)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @read_add(%struct.TYPE_5__* %23, i8* %24, i32 %25)
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @g_free(i8* %27)
  br label %5

29:                                               ; preds = %17, %5
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @G_INPUT_STREAM(i32 %32)
  %34 = load i32, i32* @G_PRIORITY_LOW, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @async_close_callback, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = call i32 @g_input_stream_close_async(i32 %33, i32 %34, i32 %37, i32 %38, %struct.TYPE_5__* %39)
  ret void
}

declare dso_local i8* @g_data_input_stream_read_upto(i32, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @g_data_input_stream_read_byte(i32, i32*, i32*) #1

declare dso_local i32 @read_add(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @g_input_stream_close_async(i32, i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @G_INPUT_STREAM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
