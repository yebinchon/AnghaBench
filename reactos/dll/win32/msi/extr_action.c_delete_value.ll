; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_delete_value.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_delete_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@KEY_SET_VALUE = common dso_local global i32 0, align 4
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to delete value %s (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"removing empty key %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32*)* @delete_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_value(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* @FALSE, align 4
  %17 = load i32, i32* @KEY_SET_VALUE, align 4
  %18 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @open_key(i32* %13, i32 %14, i32* %15, i32 %16, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @RegDeleteValueW(i32 %23, i32* %24)
  store i32 %25, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @debugstr_w(i32* %28)
  %30 = load i32, i32* %9, align 4
  %31 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @RegQueryInfoKeyW(i32 %33, i32* null, i32* null, i32* null, i32* %11, i32* null, i32* null, i32* %12, i32* null, i32* null, i32* null, i32* null)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @RegCloseKey(i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %42
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @debugstr_w(i32* %46)
  %48 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @delete_key(i32* %49, i32 %50, i32* %51)
  br label %53

53:                                               ; preds = %45, %42, %39, %32
  br label %54

54:                                               ; preds = %53, %4
  ret void
}

declare dso_local i32 @open_key(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @RegDeleteValueW(i32, i32*) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @RegQueryInfoKeyW(i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @delete_key(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
