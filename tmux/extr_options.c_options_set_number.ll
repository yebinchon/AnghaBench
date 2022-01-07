; ModuleID = '/home/carl/AnghaBench/tmux/extr_options.c_options_set_number.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_options.c_options_set_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.options = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"user option %s must be a string\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"option %s is not a number\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.options_entry* @options_set_number(%struct.options* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.options_entry*, align 8
  %5 = alloca %struct.options*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.options_entry*, align 8
  store %struct.options* %0, %struct.options** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 64
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @fatalx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %13, %3
  %17 = load %struct.options*, %struct.options** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call %struct.options_entry* @options_get_only(%struct.options* %17, i8* %18)
  store %struct.options_entry* %19, %struct.options_entry** %8, align 8
  %20 = load %struct.options_entry*, %struct.options_entry** %8, align 8
  %21 = icmp eq %struct.options_entry* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load %struct.options*, %struct.options** %5, align 8
  %24 = load %struct.options*, %struct.options** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @options_parent_table_entry(%struct.options* %24, i8* %25)
  %27 = call %struct.options_entry* @options_default(%struct.options* %23, i32 %26)
  store %struct.options_entry* %27, %struct.options_entry** %8, align 8
  %28 = load %struct.options_entry*, %struct.options_entry** %8, align 8
  %29 = icmp eq %struct.options_entry* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store %struct.options_entry* null, %struct.options_entry** %4, align 8
  br label %45

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %16
  %33 = load %struct.options_entry*, %struct.options_entry** %8, align 8
  %34 = call i32 @OPTIONS_IS_NUMBER(%struct.options_entry* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @fatalx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %36, %32
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.options_entry*, %struct.options_entry** %8, align 8
  %42 = getelementptr inbounds %struct.options_entry, %struct.options_entry* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i64 %40, i64* %43, align 8
  %44 = load %struct.options_entry*, %struct.options_entry** %8, align 8
  store %struct.options_entry* %44, %struct.options_entry** %4, align 8
  br label %45

45:                                               ; preds = %39, %30
  %46 = load %struct.options_entry*, %struct.options_entry** %4, align 8
  ret %struct.options_entry* %46
}

declare dso_local i32 @fatalx(i8*, i8*) #1

declare dso_local %struct.options_entry* @options_get_only(%struct.options*, i8*) #1

declare dso_local %struct.options_entry* @options_default(%struct.options*, i32) #1

declare dso_local i32 @options_parent_table_entry(%struct.options*, i8*) #1

declare dso_local i32 @OPTIONS_IS_NUMBER(%struct.options_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
