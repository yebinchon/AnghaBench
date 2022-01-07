; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-set-option.c_cmd_set_option_flag.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-set-option.c_cmd_set_option_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdq_item = type { i32 }
%struct.options_table_entry = type { i32 }
%struct.options = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"bad value: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdq_item*, %struct.options_table_entry*, %struct.options*, i8*)* @cmd_set_option_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_set_option_flag(%struct.cmdq_item* %0, %struct.options_table_entry* %1, %struct.options* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmdq_item*, align 8
  %7 = alloca %struct.options_table_entry*, align 8
  %8 = alloca %struct.options*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.cmdq_item* %0, %struct.cmdq_item** %6, align 8
  store %struct.options_table_entry* %1, %struct.options_table_entry** %7, align 8
  store %struct.options* %2, %struct.options** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i8*, i8** %9, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = load i8*, i8** %9, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13, %4
  %19 = load %struct.options*, %struct.options** %8, align 8
  %20 = load %struct.options_table_entry*, %struct.options_table_entry** %7, align 8
  %21 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @options_get_number(%struct.options* %19, i32 %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %10, align 4
  br label %59

27:                                               ; preds = %13
  %28 = load i8*, i8** %9, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %9, align 8
  %33 = call i64 @strcasecmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %9, align 8
  %37 = call i64 @strcasecmp(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %31, %27
  store i32 1, i32* %10, align 4
  br label %58

40:                                               ; preds = %35
  %41 = load i8*, i8** %9, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8
  %46 = call i64 @strcasecmp(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %9, align 8
  %50 = call i64 @strcasecmp(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %44, %40
  store i32 0, i32* %10, align 4
  br label %57

53:                                               ; preds = %48
  %54 = load %struct.cmdq_item*, %struct.cmdq_item** %6, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @cmdq_error(%struct.cmdq_item* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %55)
  store i32 -1, i32* %5, align 4
  br label %66

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57, %39
  br label %59

59:                                               ; preds = %58, %18
  %60 = load %struct.options*, %struct.options** %8, align 8
  %61 = load %struct.options_table_entry*, %struct.options_table_entry** %7, align 8
  %62 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @options_set_number(%struct.options* %60, i32 %63, i32 %64)
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %59, %53
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @options_get_number(%struct.options*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, i8*) #1

declare dso_local i32 @options_set_number(%struct.options*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
