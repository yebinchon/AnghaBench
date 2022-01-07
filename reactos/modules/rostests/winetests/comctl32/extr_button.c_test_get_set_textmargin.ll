; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_button.c_test_get_set_textmargin.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_button.c_test_get_set_textmargin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BS_PUSHBUTTON = common dso_local global i64 0, align 8
@BS_DEFCOMMANDLINK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Expect hwnd not null\0A\00", align 1
@BCM_GETTEXTMARGIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Expect ret to be true\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Expect margin empty\0A\00", align 1
@BCM_SETTEXTMARGIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Expect margins to be equal\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Expect ret to be false\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_get_set_textmargin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_get_set_textmargin() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = call i32 @SetRect(i32* %2, i32 2, i32 1, i32 3, i32 4)
  %7 = load i64, i64* @BS_PUSHBUTTON, align 8
  store i64 %7, i64* %5, align 8
  br label %8

8:                                                ; preds = %75, %0
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @BS_DEFCOMMANDLINK, align 8
  %11 = icmp sle i64 %9, %10
  br i1 %11, label %12, label %78

12:                                               ; preds = %8
  %13 = load i64, i64* %5, align 8
  %14 = call i32* @create_button(i64 %13, i32* null)
  store i32* %14, i32** %1, align 8
  %15 = load i32*, i32** %1, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %1, align 8
  %20 = load i32, i32* @BCM_GETTEXTMARGIN, align 4
  %21 = ptrtoint i32* %3 to i32
  %22 = call i32 @SendMessageA(i32* %19, i32 %20, i32 0, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @IsRectEmpty(i32* %3)
  %26 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32*, i32** %1, align 8
  %28 = load i32, i32* @BCM_SETTEXTMARGIN, align 4
  %29 = ptrtoint i32* %2 to i32
  %30 = call i32 @SendMessageA(i32* %27, i32 %28, i32 0, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @SetRectEmpty(i32* %3)
  %34 = load i32*, i32** %1, align 8
  %35 = load i32, i32* @BCM_GETTEXTMARGIN, align 4
  %36 = ptrtoint i32* %3 to i32
  %37 = call i32 @SendMessageA(i32* %34, i32 %35, i32 0, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @EqualRect(i32* %2, i32* %3)
  %41 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32*, i32** %1, align 8
  %43 = load i32, i32* @BCM_SETTEXTMARGIN, align 4
  %44 = call i32 @SendMessageA(i32* %42, i32 %43, i32 0, i32 0)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %50 = call i32 @SetRectEmpty(i32* %3)
  %51 = load i32*, i32** %1, align 8
  %52 = load i32, i32* @BCM_GETTEXTMARGIN, align 4
  %53 = ptrtoint i32* %3 to i32
  %54 = call i32 @SendMessageA(i32* %51, i32 %52, i32 0, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %57 = call i32 @EqualRect(i32* %2, i32* %3)
  %58 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32*, i32** %1, align 8
  %60 = load i32, i32* @BCM_SETTEXTMARGIN, align 4
  %61 = ptrtoint i32* %2 to i32
  %62 = call i32 @SendMessageA(i32* %59, i32 %60, i32 0, i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32*, i32** %1, align 8
  %66 = load i32, i32* @BCM_GETTEXTMARGIN, align 4
  %67 = call i32 @SendMessageA(i32* %65, i32 %66, i32 0, i32 0)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32*, i32** %1, align 8
  %74 = call i32 @DestroyWindow(i32* %73)
  br label %75

75:                                               ; preds = %12
  %76 = load i64, i64* %5, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %5, align 8
  br label %8

78:                                               ; preds = %8
  ret void
}

declare dso_local i32 @SetRect(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @create_button(i64, i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @SendMessageA(i32*, i32, i32, i32) #1

declare dso_local i32 @IsRectEmpty(i32*) #1

declare dso_local i32 @SetRectEmpty(i32*) #1

declare dso_local i32 @EqualRect(i32*, i32*) #1

declare dso_local i32 @DestroyWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
