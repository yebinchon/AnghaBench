; ModuleID = '/home/carl/AnghaBench/sway/swaymsg/extr_main.c_pretty_print_workspace.c'
source_filename = "/home/carl/AnghaBench/sway/swaymsg/extr_main.c_pretty_print_workspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"rect\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"urgent\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"layout\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"representation\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"focused\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"Workspace %s%s%s%s\0A  Output: %s\0A  Layout: %s\0A  Representation: %s\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c" (focused)\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [14 x i8] c" (off-screen)\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c" (urgent)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @pretty_print_workspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pretty_print_workspace(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @json_object_object_get_ex(i32* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32** %3)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @json_object_object_get_ex(i32* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32** %4)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @json_object_object_get_ex(i32* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32** %5)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @json_object_object_get_ex(i32* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32** %6)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @json_object_object_get_ex(i32* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32** %7)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @json_object_object_get_ex(i32* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32** %8)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @json_object_object_get_ex(i32* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32** %9)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @json_object_object_get_ex(i32* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32** %10)
  %27 = load i32*, i32** %3, align 8
  %28 = call i8* @json_object_get_string(i32* %27)
  %29 = load i32*, i32** %10, align 8
  %30 = call i64 @json_object_get_boolean(i32* %29)
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %34 = load i32*, i32** %5, align 8
  %35 = call i64 @json_object_get_boolean(i32* %34)
  %36 = icmp ne i64 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %40 = load i32*, i32** %7, align 8
  %41 = call i64 @json_object_get_boolean(i32* %40)
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %45 = load i32*, i32** %6, align 8
  %46 = call i8* @json_object_get_string(i32* %45)
  %47 = load i32*, i32** %8, align 8
  %48 = call i8* @json_object_get_string(i32* %47)
  %49 = load i32*, i32** %9, align 8
  %50 = call i8* @json_object_get_string(i32* %49)
  %51 = call i32 @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.8, i64 0, i64 0), i8* %28, i8* %33, i8* %39, i8* %44, i8* %46, i8* %48, i8* %50)
  ret void
}

declare dso_local i32 @json_object_object_get_ex(i32*, i8*, i32**) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @json_object_get_string(i32*) #1

declare dso_local i64 @json_object_get_boolean(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
