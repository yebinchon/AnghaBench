; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/comctl32/extr_toolbar.c_TestSetButtonSize.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/comctl32/extr_toolbar.c_TestSetButtonSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOOLBARCLASSNAMEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i32] [i32 84, i32 101, i32 115, i32 116, i32 0], align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"CreateWindowEx failed\0A\00", align 1
@TB_GETBUTTONSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Expected 0x160017 got %lx\0A\00", align 1
@TB_SETBUTTONSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Expected 0x160018 got %lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Expected 0x170017 got %lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TestSetButtonSize() #0 {
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
  %10 = load i32, i32* @TB_GETBUTTONSIZE, align 4
  %11 = call i32 @SendMessageW(i32* %9, i32 %10, i32 0, i32 0)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp eq i32 %12, 1441815
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %2, align 4
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = load i32, i32* @TB_SETBUTTONSIZE, align 4
  %19 = call i32 @MAKELONG(i32 0, i32 0)
  %20 = call i32 @SendMessageW(i32* %17, i32 %18, i32 0, i32 %19)
  %21 = load i32*, i32** %1, align 8
  %22 = load i32, i32* @TB_GETBUTTONSIZE, align 4
  %23 = call i32 @SendMessageW(i32* %21, i32 %22, i32 0, i32 0)
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* %2, align 4
  %25 = icmp eq i32 %24, 1441816
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %2, align 4
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  %29 = load i32*, i32** %1, align 8
  %30 = load i32, i32* @TB_SETBUTTONSIZE, align 4
  %31 = call i32 @SendMessageW(i32* %29, i32 %30, i32 0, i32 65537)
  %32 = load i32*, i32** %1, align 8
  %33 = load i32, i32* @TB_GETBUTTONSIZE, align 4
  %34 = call i32 @SendMessageW(i32* %32, i32 %33, i32 0, i32 0)
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = icmp eq i32 %35, 1441815
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %2, align 4
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load i32*, i32** %1, align 8
  %41 = load i32, i32* @TB_SETBUTTONSIZE, align 4
  %42 = call i32 @SendMessageW(i32* %40, i32 %41, i32 0, i32 1048577)
  %43 = load i32*, i32** %1, align 8
  %44 = load i32, i32* @TB_GETBUTTONSIZE, align 4
  %45 = call i32 @SendMessageW(i32* %43, i32 %44, i32 0, i32 0)
  store i32 %45, i32* %2, align 4
  %46 = load i32, i32* %2, align 4
  %47 = icmp eq i32 %46, 1441815
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %2, align 4
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %1, align 8
  %52 = load i32, i32* @TB_SETBUTTONSIZE, align 4
  %53 = call i32 @SendMessageW(i32* %51, i32 %52, i32 0, i32 1441815)
  %54 = load i32*, i32** %1, align 8
  %55 = load i32, i32* @TB_GETBUTTONSIZE, align 4
  %56 = call i32 @SendMessageW(i32* %54, i32 %55, i32 0, i32 0)
  store i32 %56, i32* %2, align 4
  %57 = load i32, i32* %2, align 4
  %58 = icmp eq i32 %57, 1441815
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %2, align 4
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32*, i32** %1, align 8
  %63 = load i32, i32* @TB_SETBUTTONSIZE, align 4
  %64 = call i32 @SendMessageW(i32* %62, i32 %63, i32 0, i32 1507351)
  %65 = load i32*, i32** %1, align 8
  %66 = load i32, i32* @TB_GETBUTTONSIZE, align 4
  %67 = call i32 @SendMessageW(i32* %65, i32 %66, i32 0, i32 0)
  store i32 %67, i32* %2, align 4
  %68 = load i32, i32* %2, align 4
  %69 = icmp eq i32 %68, 1507351
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* %2, align 4
  %72 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  %73 = load i32*, i32** %1, align 8
  %74 = call i32 @DestroyWindow(i32* %73)
  ret void
}

declare dso_local i32* @CreateWindowExW(i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SendMessageW(i32*, i32, i32, i32) #1

declare dso_local i32 @MAKELONG(i32, i32) #1

declare dso_local i32 @DestroyWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
