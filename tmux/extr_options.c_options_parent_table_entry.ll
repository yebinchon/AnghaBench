; ModuleID = '/home/carl/AnghaBench/tmux/extr_options.c_options_parent_table_entry.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_options.c_options_parent_table_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_table_entry = type { i32 }
%struct.options = type { i32* }
%struct.options_entry = type { %struct.options_table_entry* }

@.str = private unnamed_addr constant [25 x i8] c"no parent options for %s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s not in parent options\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.options_table_entry* (%struct.options*, i8*)* @options_parent_table_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.options_table_entry* @options_parent_table_entry(%struct.options* %0, i8* %1) #0 {
  %3 = alloca %struct.options*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.options_entry*, align 8
  store %struct.options* %0, %struct.options** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.options*, %struct.options** %3, align 8
  %7 = getelementptr inbounds %struct.options, %struct.options* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @fatalx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.options*, %struct.options** %3, align 8
  %15 = getelementptr inbounds %struct.options, %struct.options* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call %struct.options_entry* @options_get(i32* %16, i8* %17)
  store %struct.options_entry* %18, %struct.options_entry** %5, align 8
  %19 = load %struct.options_entry*, %struct.options_entry** %5, align 8
  %20 = icmp eq %struct.options_entry* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @fatalx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %21, %13
  %25 = load %struct.options_entry*, %struct.options_entry** %5, align 8
  %26 = getelementptr inbounds %struct.options_entry, %struct.options_entry* %25, i32 0, i32 0
  %27 = load %struct.options_table_entry*, %struct.options_table_entry** %26, align 8
  ret %struct.options_table_entry* %27
}

declare dso_local i32 @fatalx(i8*, i8*) #1

declare dso_local %struct.options_entry* @options_get(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
