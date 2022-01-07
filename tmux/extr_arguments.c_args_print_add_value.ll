; ModuleID = '/home/carl/AnghaBench/tmux/extr_arguments.c_args_print_add_value.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_arguments.c_args_print_add_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.args_entry = type { i8* }
%struct.args_value = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c" -%c \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"-%c \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i64*, %struct.args_entry*, %struct.args_value*)* @args_print_add_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @args_print_add_value(i8** %0, i64* %1, %struct.args_entry* %2, %struct.args_value* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.args_entry*, align 8
  %8 = alloca %struct.args_value*, align 8
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.args_entry* %2, %struct.args_entry** %7, align 8
  store %struct.args_value* %3, %struct.args_value** %8, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load i8**, i8*** %5, align 8
  %17 = load i64*, i64** %6, align 8
  %18 = load %struct.args_entry*, %struct.args_entry** %7, align 8
  %19 = getelementptr inbounds %struct.args_entry, %struct.args_entry* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @args_print_add(i8** %16, i64* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %29

22:                                               ; preds = %4
  %23 = load i8**, i8*** %5, align 8
  %24 = load i64*, i64** %6, align 8
  %25 = load %struct.args_entry*, %struct.args_entry** %7, align 8
  %26 = getelementptr inbounds %struct.args_entry, %struct.args_entry* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @args_print_add(i8** %23, i64* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %22, %15
  %30 = load %struct.args_value*, %struct.args_value** %8, align 8
  %31 = getelementptr inbounds %struct.args_value, %struct.args_value* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @args_escape(i32 %32)
  store i8* %33, i8** %9, align 8
  %34 = load i8**, i8*** %5, align 8
  %35 = load i64*, i64** %6, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @args_print_add(i8** %34, i64* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @free(i8* %38)
  ret void
}

declare dso_local i32 @args_print_add(i8**, i64*, i8*, i8*) #1

declare dso_local i8* @args_escape(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
