; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_EmptyClipboard.c_TestOwnership.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_EmptyClipboard.c_TestOwnership.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"OpenClipboard failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"EmptyClipboard failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"CloseClipboard failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Expected NULL owner\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i32] [i32 115, i32 116, i32 97, i32 116, i32 105, i32 99, i32 0], align 4
@WS_OVERLAPPEDWINDOW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"CreateWindowW failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Expected hWnd owner\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TestOwnership() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32 @OpenClipboard(i32* null)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = call i32 @ok(i32 %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 (...) @EmptyClipboard()
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 (...) @CloseClipboard()
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %13 = call i32* (...) @GetClipboardOwner()
  store i32* %13, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = icmp eq i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %18 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %19 = call i32* @CreateWindowW(i8* bitcast ([7 x i32]* @.str.4 to i8*), i8* bitcast ([7 x i32]* @.str.4 to i8*), i32 %18, i32 20, i32 20, i32 300, i32 300, i32* null, i32* null, i32 0, i32* null)
  store i32* %19, i32** %2, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @OpenClipboard(i32* %24)
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %28 = call i32* (...) @GetClipboardOwner()
  store i32* %28, i32** %3, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = icmp eq i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %33 = call i32 (...) @EmptyClipboard()
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* %1, align 4
  %35 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 (...) @CloseClipboard()
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* %1, align 4
  %38 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %39 = call i32* (...) @GetClipboardOwner()
  store i32* %39, i32** %3, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = load i32*, i32** %2, align 8
  %42 = icmp eq i32* %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @DestroyWindow(i32* %45)
  ret void
}

declare dso_local i32 @OpenClipboard(i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @EmptyClipboard(...) #1

declare dso_local i32 @CloseClipboard(...) #1

declare dso_local i32* @GetClipboardOwner(...) #1

declare dso_local i32* @CreateWindowW(i8*, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @DestroyWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
