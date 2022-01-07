; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/comctl32/extr_toolbar.c_TestPadding.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/comctl32/extr_toolbar.c_TestPadding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOOLBARCLASSNAMEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i32] [i32 84, i32 101, i32 115, i32 116, i32 0], align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"CreateWindowEx failed\0A\00", align 1
@TB_GETPADDING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Expected 0x60007 got %lx\0A\00", align 1
@TB_SETPADDING = common dso_local global i32 0, align 4
@TB_SETBITMAPSIZE = common dso_local global i32 0, align 4
@TB_SETBUTTONSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Expected 0x10001 got %lx\0A\00", align 1
@TB_GETBUTTONSIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Expected 0x20002 got %lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TestPadding() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @TOOLBARCLASSNAMEW, align 4
  %4 = call i32* @CreateWindowExW(i32 0, i32 %3, i8* bitcast ([5 x i32]* @.str to i8*), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32* null)
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = icmp ne i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 (i32, i8*, ...) @ok(i32 %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32*, i32** %1, align 8
  %10 = load i32, i32* @TB_GETPADDING, align 4
  %11 = call i32 @SendMessageW(i32* %9, i32 %10, i32 0, i32 0)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp eq i32 %12, 393223
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %2, align 4
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = load i32, i32* @TB_SETPADDING, align 4
  %19 = call i32 @SendMessageW(i32* %17, i32 %18, i32 0, i32 65537)
  %20 = load i32*, i32** %1, align 8
  %21 = load i32, i32* @TB_SETBITMAPSIZE, align 4
  %22 = call i32 @SendMessageW(i32* %20, i32 %21, i32 0, i32 65537)
  %23 = load i32*, i32** %1, align 8
  %24 = load i32, i32* @TB_SETBUTTONSIZE, align 4
  %25 = call i32 @SendMessageW(i32* %23, i32 %24, i32 0, i32 65537)
  %26 = load i32*, i32** %1, align 8
  %27 = load i32, i32* @TB_GETPADDING, align 4
  %28 = call i32 @SendMessageW(i32* %26, i32 %27, i32 0, i32 0)
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %2, align 4
  %30 = icmp eq i32 %29, 65537
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %2, align 4
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  %34 = load i32*, i32** %1, align 8
  %35 = load i32, i32* @TB_GETBUTTONSIZE, align 4
  %36 = call i32 @SendMessageW(i32* %34, i32 %35, i32 0, i32 0)
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %2, align 4
  %38 = icmp eq i32 %37, 131074
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %2, align 4
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @DestroyWindow(i32* %42)
  ret void
}

declare dso_local i32* @CreateWindowExW(i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SendMessageW(i32*, i32, i32, i32) #1

declare dso_local i32 @DestroyWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
