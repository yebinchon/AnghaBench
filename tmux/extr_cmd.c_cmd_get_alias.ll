; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd.c_cmd_get_alias.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd.c_cmd_get_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_entry = type { i32 }
%struct.options_array_item = type { i32 }
%union.options_value = type { i8* }

@global_options = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"command-alias\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cmd_get_alias(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.options_entry*, align 8
  %5 = alloca %struct.options_array_item*, align 8
  %6 = alloca %union.options_value*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i32, i32* @global_options, align 4
  %11 = call %struct.options_entry* @options_get_only(i32 %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.options_entry* %11, %struct.options_entry** %4, align 8
  %12 = load %struct.options_entry*, %struct.options_entry** %4, align 8
  %13 = icmp eq %struct.options_entry* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %60

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strlen(i8* %16)
  store i64 %17, i64* %7, align 8
  %18 = load %struct.options_entry*, %struct.options_entry** %4, align 8
  %19 = call %struct.options_array_item* @options_array_first(%struct.options_entry* %18)
  store %struct.options_array_item* %19, %struct.options_array_item** %5, align 8
  br label %20

20:                                               ; preds = %56, %15
  %21 = load %struct.options_array_item*, %struct.options_array_item** %5, align 8
  %22 = icmp ne %struct.options_array_item* %21, null
  br i1 %22, label %23, label %59

23:                                               ; preds = %20
  %24 = load %struct.options_array_item*, %struct.options_array_item** %5, align 8
  %25 = call %union.options_value* @options_array_item_value(%struct.options_array_item* %24)
  store %union.options_value* %25, %union.options_value** %6, align 8
  %26 = load %union.options_value*, %union.options_value** %6, align 8
  %27 = bitcast %union.options_value* %26 to i8**
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @strchr(i8* %28, i8 signext 61)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %56

32:                                               ; preds = %23
  %33 = load i8*, i8** %9, align 8
  %34 = load %union.options_value*, %union.options_value** %6, align 8
  %35 = bitcast %union.options_value* %34 to i8**
  %36 = load i8*, i8** %35, align 8
  %37 = ptrtoint i8* %33 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %32
  %44 = load i8*, i8** %3, align 8
  %45 = load %union.options_value*, %union.options_value** %6, align 8
  %46 = bitcast %union.options_value* %45 to i8**
  %47 = load i8*, i8** %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i64 @strncmp(i8* %44, i8* %47, i64 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = call i8* @xstrdup(i8* %53)
  store i8* %54, i8** %2, align 8
  br label %60

55:                                               ; preds = %43, %32
  br label %56

56:                                               ; preds = %55, %23
  %57 = load %struct.options_array_item*, %struct.options_array_item** %5, align 8
  %58 = call %struct.options_array_item* @options_array_next(%struct.options_array_item* %57)
  store %struct.options_array_item* %58, %struct.options_array_item** %5, align 8
  br label %20

59:                                               ; preds = %20
  store i8* null, i8** %2, align 8
  br label %60

60:                                               ; preds = %59, %51, %14
  %61 = load i8*, i8** %2, align 8
  ret i8* %61
}

declare dso_local %struct.options_entry* @options_get_only(i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.options_array_item* @options_array_first(%struct.options_entry*) #1

declare dso_local %union.options_value* @options_array_item_value(%struct.options_array_item*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local %struct.options_array_item* @options_array_next(%struct.options_array_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
