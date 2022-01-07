; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_misc.c_test_builtin_classes.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_misc.c_test_builtin_classes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"Button\00", align 1
@CS_PARENTDC = common dso_local global i32 0, align 4
@CS_DBLCLKS = common dso_local global i32 0, align 4
@CS_HREDRAW = common dso_local global i32 0, align 4
@CS_VREDRAW = common dso_local global i32 0, align 4
@CS_GLOBALCLASS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ComboBox\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Edit\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ListBox\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"ScrollBar\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Static\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"ComboLBox\00", align 1
@CS_SAVEBITS = common dso_local global i32 0, align 4
@CS_DROPSHADOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_builtin_classes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_builtin_classes() #0 {
  %1 = load i32, i32* @CS_PARENTDC, align 4
  %2 = load i32, i32* @CS_DBLCLKS, align 4
  %3 = or i32 %1, %2
  %4 = load i32, i32* @CS_HREDRAW, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @CS_VREDRAW, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @CS_GLOBALCLASS, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @FALSE, align 4
  %11 = call i32 @check_class(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1, i32 %9, i32 0, i32 %10)
  %12 = load i32, i32* @CS_PARENTDC, align 4
  %13 = load i32, i32* @CS_DBLCLKS, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @CS_HREDRAW, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @CS_VREDRAW, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @CS_GLOBALCLASS, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @FALSE, align 4
  %22 = call i32 @check_class(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 %20, i32 0, i32 %21)
  %23 = load i32, i32* @CS_PARENTDC, align 4
  %24 = load i32, i32* @CS_DBLCLKS, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @CS_GLOBALCLASS, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @FALSE, align 4
  %29 = call i32 @check_class(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 %27, i32 0, i32 %28)
  %30 = load i32, i32* @CS_PARENTDC, align 4
  %31 = load i32, i32* @CS_DBLCLKS, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @CS_GLOBALCLASS, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @FALSE, align 4
  %36 = call i32 @check_class(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 %34, i32 0, i32 %35)
  %37 = load i32, i32* @CS_PARENTDC, align 4
  %38 = load i32, i32* @CS_DBLCLKS, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @CS_HREDRAW, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @CS_VREDRAW, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @CS_GLOBALCLASS, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @FALSE, align 4
  %47 = call i32 @check_class(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 1, i32 %45, i32 0, i32 %46)
  %48 = load i32, i32* @CS_PARENTDC, align 4
  %49 = load i32, i32* @CS_DBLCLKS, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @CS_GLOBALCLASS, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @FALSE, align 4
  %54 = call i32 @check_class(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 1, i32 %52, i32 0, i32 %53)
  %55 = load i32, i32* @CS_SAVEBITS, align 4
  %56 = load i32, i32* @CS_DBLCLKS, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @CS_DROPSHADOW, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @CS_GLOBALCLASS, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @CS_DROPSHADOW, align 4
  %63 = load i32, i32* @FALSE, align 4
  %64 = call i32 @check_class(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 1, i32 %61, i32 %62, i32 %63)
  ret void
}

declare dso_local i32 @check_class(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
