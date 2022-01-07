; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-set-option.c_cmd_set_option_choice.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-set-option.c_cmd_set_option_choice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdq_item = type { i32 }
%struct.options_table_entry = type { i8**, i32 }
%struct.options = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"unknown value: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdq_item*, %struct.options_table_entry*, %struct.options*, i8*)* @cmd_set_option_choice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_set_option_choice(%struct.cmdq_item* %0, %struct.options_table_entry* %1, %struct.options* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmdq_item*, align 8
  %7 = alloca %struct.options_table_entry*, align 8
  %8 = alloca %struct.options*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cmdq_item* %0, %struct.cmdq_item** %6, align 8
  store %struct.options_table_entry* %1, %struct.options_table_entry** %7, align 8
  store %struct.options* %2, %struct.options** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 -1, i32* %12, align 4
  %13 = load i8*, i8** %9, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %4
  %16 = load %struct.options*, %struct.options** %8, align 8
  %17 = load %struct.options_table_entry*, %struct.options_table_entry** %7, align 8
  %18 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @options_get_number(%struct.options* %16, i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %12, align 4
  br label %28

28:                                               ; preds = %23, %15
  br label %59

29:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  %30 = load %struct.options_table_entry*, %struct.options_table_entry** %7, align 8
  %31 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %30, i32 0, i32 0
  %32 = load i8**, i8*** %31, align 8
  store i8** %32, i8*** %10, align 8
  br label %33

33:                                               ; preds = %48, %29
  %34 = load i8**, i8*** %10, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load i8**, i8*** %10, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i64 @strcmp(i8* %39, i8* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %43, %37
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %45
  %49 = load i8**, i8*** %10, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i32 1
  store i8** %50, i8*** %10, align 8
  br label %33

51:                                               ; preds = %33
  %52 = load i32, i32* %12, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.cmdq_item*, %struct.cmdq_item** %6, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @cmdq_error(%struct.cmdq_item* %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %56)
  store i32 -1, i32* %5, align 4
  br label %66

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %28
  %60 = load %struct.options*, %struct.options** %8, align 8
  %61 = load %struct.options_table_entry*, %struct.options_table_entry** %7, align 8
  %62 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @options_set_number(%struct.options* %60, i32 %63, i32 %64)
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %59, %54
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @options_get_number(%struct.options*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, i8*) #1

declare dso_local i32 @options_set_number(%struct.options*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
