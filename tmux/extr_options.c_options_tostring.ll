; ModuleID = '/home/carl/AnghaBench/tmux/extr_options.c_options_tostring.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_options.c_options_tostring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_entry = type { i32 }
%struct.options_array_item = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @options_tostring(%struct.options_entry* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.options_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.options_array_item*, align 8
  store %struct.options_entry* %0, %struct.options_entry** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.options_entry*, %struct.options_entry** %5, align 8
  %10 = call i64 @OPTIONS_IS_ARRAY(%struct.options_entry* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %4, align 8
  br label %37

17:                                               ; preds = %12
  %18 = load %struct.options_entry*, %struct.options_entry** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.options_array_item* @options_array_item(%struct.options_entry* %18, i32 %19)
  store %struct.options_array_item* %20, %struct.options_array_item** %8, align 8
  %21 = load %struct.options_array_item*, %struct.options_array_item** %8, align 8
  %22 = icmp eq %struct.options_array_item* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %24, i8** %4, align 8
  br label %37

25:                                               ; preds = %17
  %26 = load %struct.options_entry*, %struct.options_entry** %5, align 8
  %27 = load %struct.options_array_item*, %struct.options_array_item** %8, align 8
  %28 = getelementptr inbounds %struct.options_array_item, %struct.options_array_item* %27, i32 0, i32 0
  %29 = load i32, i32* %7, align 4
  %30 = call i8* @options_value_tostring(%struct.options_entry* %26, i32* %28, i32 %29)
  store i8* %30, i8** %4, align 8
  br label %37

31:                                               ; preds = %3
  %32 = load %struct.options_entry*, %struct.options_entry** %5, align 8
  %33 = load %struct.options_entry*, %struct.options_entry** %5, align 8
  %34 = getelementptr inbounds %struct.options_entry, %struct.options_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %7, align 4
  %36 = call i8* @options_value_tostring(%struct.options_entry* %32, i32* %34, i32 %35)
  store i8* %36, i8** %4, align 8
  br label %37

37:                                               ; preds = %31, %25, %23, %15
  %38 = load i8*, i8** %4, align 8
  ret i8* %38
}

declare dso_local i64 @OPTIONS_IS_ARRAY(%struct.options_entry*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local %struct.options_array_item* @options_array_item(%struct.options_entry*, i32) #1

declare dso_local i8* @options_value_tostring(%struct.options_entry*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
