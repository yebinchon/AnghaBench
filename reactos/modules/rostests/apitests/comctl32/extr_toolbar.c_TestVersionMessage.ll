; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/comctl32/extr_toolbar.c_TestVersionMessage.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/comctl32/extr_toolbar.c_TestVersionMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOOLBARCLASSNAMEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i32] [i32 84, i32 101, i32 115, i32 116, i32 0], align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"CreateWindowEx failed\0A\00", align 1
@CCM_GETVERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Got %d, expected 6\0A\00", align 1
@CCM_SETVERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TestVersionMessage() #0 {
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
  %10 = load i32, i32* @CCM_GETVERSION, align 4
  %11 = call i32 @SendMessageW(i32* %9, i32 %10, i32 0, i32 0)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp eq i32 %12, 6
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %2, align 4
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = load i32, i32* @CCM_SETVERSION, align 4
  %19 = call i32 @SendMessageW(i32* %17, i32 %18, i32 5, i32 0)
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = icmp eq i32 %20, 6
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %2, align 4
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = load i32, i32* @CCM_GETVERSION, align 4
  %27 = call i32 @SendMessageW(i32* %25, i32 %26, i32 0, i32 0)
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = icmp eq i32 %28, 6
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %2, align 4
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %1, align 8
  %34 = load i32, i32* @CCM_SETVERSION, align 4
  %35 = call i32 @SendMessageW(i32* %33, i32 %34, i32 7, i32 0)
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* %2, align 4
  %37 = icmp eq i32 %36, 6
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %2, align 4
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = load i32, i32* @CCM_GETVERSION, align 4
  %43 = call i32 @SendMessageW(i32* %41, i32 %42, i32 0, i32 0)
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* %2, align 4
  %45 = icmp eq i32 %44, 6
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %2, align 4
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32*, i32** %1, align 8
  %50 = load i32, i32* @CCM_SETVERSION, align 4
  %51 = call i32 @SendMessageW(i32* %49, i32 %50, i32 4, i32 0)
  store i32 %51, i32* %2, align 4
  %52 = load i32, i32* %2, align 4
  %53 = icmp eq i32 %52, 6
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* %2, align 4
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32*, i32** %1, align 8
  %58 = load i32, i32* @CCM_GETVERSION, align 4
  %59 = call i32 @SendMessageW(i32* %57, i32 %58, i32 0, i32 0)
  store i32 %59, i32* %2, align 4
  %60 = load i32, i32* %2, align 4
  %61 = icmp eq i32 %60, 6
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %2, align 4
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i32*, i32** %1, align 8
  %66 = call i32 @DestroyWindow(i32* %65)
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
