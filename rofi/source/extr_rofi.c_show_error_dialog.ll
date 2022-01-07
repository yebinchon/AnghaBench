; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_rofi.c_show_error_dialog.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_rofi.c_show_error_dialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8* }
%struct.TYPE_12__ = type { i64 }

@.str = private unnamed_addr constant [56 x i8] c"The following errors were detected when starting rofi:\0A\00", align 1
@list_of_error_msgs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"\0AThere are <b>%d</b> more errors.\00", align 1
@ERROR_MSG_MARKUP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@EX_DATAERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @show_error_dialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_error_dialog() #0 {
  %1 = alloca %struct.TYPE_11__*, align 8
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = call %struct.TYPE_11__* @g_string_new(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_11__* %5, %struct.TYPE_11__** %1, align 8
  %6 = load i32, i32* @list_of_error_msgs, align 4
  %7 = call %struct.TYPE_12__* @g_list_first(i32 %6)
  store %struct.TYPE_12__* %7, %struct.TYPE_12__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %30, %0
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %10 = icmp ne %struct.TYPE_12__* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 2
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i1 [ false, %8 ], [ %13, %11 ]
  br i1 %15, label %16, label %33

16:                                               ; preds = %14
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %4, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %22 = call i32 @g_string_append(%struct.TYPE_11__* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @g_string_append(%struct.TYPE_11__* %23, i8* %26)
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %16
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %32 = call %struct.TYPE_12__* @g_list_next(%struct.TYPE_12__* %31)
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %2, align 8
  br label %8

33:                                               ; preds = %14
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %35 = call i32 @g_list_length(%struct.TYPE_12__* %34)
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %40 = call i32 @g_list_length(%struct.TYPE_12__* %39)
  %41 = sub nsw i32 %40, 1
  %42 = call i32 @g_string_append_printf(%struct.TYPE_11__* %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %37, %33
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* @ERROR_MSG_MARKUP, align 4
  %48 = call i32 @rofi_view_error_dialog(i8* %46, i32 %47)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %50 = load i32, i32* @TRUE, align 4
  %51 = call i32 @g_string_free(%struct.TYPE_11__* %49, i32 %50)
  %52 = load i32, i32* @EX_DATAERR, align 4
  %53 = call i32 @rofi_set_return_code(i32 %52)
  ret void
}

declare dso_local %struct.TYPE_11__* @g_string_new(i8*) #1

declare dso_local %struct.TYPE_12__* @g_list_first(i32) #1

declare dso_local i32 @g_string_append(%struct.TYPE_11__*, i8*) #1

declare dso_local %struct.TYPE_12__* @g_list_next(%struct.TYPE_12__*) #1

declare dso_local i32 @g_list_length(%struct.TYPE_12__*) #1

declare dso_local i32 @g_string_append_printf(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @rofi_view_error_dialog(i8*, i32) #1

declare dso_local i32 @g_string_free(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @rofi_set_return_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
