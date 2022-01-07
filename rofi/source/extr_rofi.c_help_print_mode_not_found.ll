; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_rofi.c_help_print_mode_not_found.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_rofi.c_help_print_mode_not_found.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Mode %s is not found.\0AThe following modi are known:\0A\00", align 1
@num_available_modi = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@num_modi = common dso_local global i32 0, align 4
@modi = common dso_local global %struct.TYPE_3__** null, align 8
@available_modi = common dso_local global %struct.TYPE_3__** null, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"        * %s%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @help_print_mode_not_found to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @help_print_mode_not_found(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = call i32* @g_string_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @g_string_printf(i32* %8, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %9)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %53, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @num_available_modi, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %56

15:                                               ; preds = %11
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %36, %15
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @num_modi, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @modi, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %22, i64 %24
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @available_modi, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %27, i64 %29
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = icmp eq %struct.TYPE_3__* %26, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = load i64, i64* @TRUE, align 8
  store i64 %34, i64* %5, align 8
  br label %39

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %17

39:                                               ; preds = %33, %17
  %40 = load i32*, i32** %3, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %45 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @available_modi, align 8
  %46 = load i32, i32* %4, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %45, i64 %47
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @g_string_append_printf(i32* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %44, i32 %51)
  br label %53

53:                                               ; preds = %39
  %54 = load i32, i32* %4, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %11

56:                                               ; preds = %11
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @rofi_add_error_message(i32* %57)
  ret void
}

declare dso_local i32* @g_string_new(i8*) #1

declare dso_local i32 @g_string_printf(i32*, i8*, i8*) #1

declare dso_local i32 @g_string_append_printf(i32*, i8*, i8*, i32) #1

declare dso_local i32 @rofi_add_error_message(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
