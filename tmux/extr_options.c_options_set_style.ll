; ModuleID = '/home/carl/AnghaBench/tmux/extr_options.c_options_set_style.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_options.c_options_set_style.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.style }
%struct.style = type { i32 }
%struct.options = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"user option %s must be a string\00", align 1
@grid_default_cell = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"option %s is not a style\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.options_entry* @options_set_style(%struct.options* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.options_entry*, align 8
  %6 = alloca %struct.options*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.options_entry*, align 8
  %11 = alloca %struct.style, align 4
  store %struct.options* %0, %struct.options** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 64
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @fatalx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %16, %4
  %20 = load %struct.options*, %struct.options** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call %struct.options_entry* @options_get_only(%struct.options* %20, i8* %21)
  store %struct.options_entry* %22, %struct.options_entry** %10, align 8
  %23 = load %struct.options_entry*, %struct.options_entry** %10, align 8
  %24 = icmp ne %struct.options_entry* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load %struct.options_entry*, %struct.options_entry** %10, align 8
  %30 = call i64 @OPTIONS_IS_STYLE(%struct.options_entry* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.options_entry*, %struct.options_entry** %10, align 8
  %34 = getelementptr inbounds %struct.options_entry, %struct.options_entry* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @style_copy(%struct.style* %11, %struct.style* %35)
  br label %39

37:                                               ; preds = %28, %25, %19
  %38 = call i32 @style_set(%struct.style* %11, i32* @grid_default_cell)
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @style_parse(%struct.style* %11, i32* @grid_default_cell, i8* %40)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store %struct.options_entry* null, %struct.options_entry** %5, align 8
  br label %70

44:                                               ; preds = %39
  %45 = load %struct.options_entry*, %struct.options_entry** %10, align 8
  %46 = icmp eq %struct.options_entry* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load %struct.options*, %struct.options** %6, align 8
  %49 = load %struct.options*, %struct.options** %6, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @options_parent_table_entry(%struct.options* %49, i8* %50)
  %52 = call %struct.options_entry* @options_default(%struct.options* %48, i32 %51)
  store %struct.options_entry* %52, %struct.options_entry** %10, align 8
  %53 = load %struct.options_entry*, %struct.options_entry** %10, align 8
  %54 = icmp eq %struct.options_entry* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store %struct.options_entry* null, %struct.options_entry** %5, align 8
  br label %70

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %44
  %58 = load %struct.options_entry*, %struct.options_entry** %10, align 8
  %59 = call i64 @OPTIONS_IS_STYLE(%struct.options_entry* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @fatalx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %61, %57
  %65 = load %struct.options_entry*, %struct.options_entry** %10, align 8
  %66 = getelementptr inbounds %struct.options_entry, %struct.options_entry* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i32 @style_copy(%struct.style* %67, %struct.style* %11)
  %69 = load %struct.options_entry*, %struct.options_entry** %10, align 8
  store %struct.options_entry* %69, %struct.options_entry** %5, align 8
  br label %70

70:                                               ; preds = %64, %55, %43
  %71 = load %struct.options_entry*, %struct.options_entry** %5, align 8
  ret %struct.options_entry* %71
}

declare dso_local i32 @fatalx(i8*, i8*) #1

declare dso_local %struct.options_entry* @options_get_only(%struct.options*, i8*) #1

declare dso_local i64 @OPTIONS_IS_STYLE(%struct.options_entry*) #1

declare dso_local i32 @style_copy(%struct.style*, %struct.style*) #1

declare dso_local i32 @style_set(%struct.style*, i32*) #1

declare dso_local i32 @style_parse(%struct.style*, i32*, i8*) #1

declare dso_local %struct.options_entry* @options_default(%struct.options*, i32) #1

declare dso_local i32 @options_parent_table_entry(%struct.options*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
