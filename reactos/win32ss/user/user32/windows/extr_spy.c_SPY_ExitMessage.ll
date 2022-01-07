; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_spy.c_SPY_ExitMessage.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_spy.c_SPY_ExitMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@message = common dso_local global i32 0, align 4
@SPY_INDENT_UNIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c" %*s(%p)  DefWindowProc: [%04x] %s returned %08lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [41 x i8] c" %*s(%p) %-16s [%04x] %s returned %08lx\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SPY_ExitMessage(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = call i32 (...) @GetLastError()
  store i32 %16, i32* %15, align 4
  %17 = load i32, i32* @message, align 4
  %18 = call i32 @TRACE_ON(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %6
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @exclude_msg(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = call i64 (...) @exclude_dwp()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 129
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %20, %6
  br label %78

31:                                               ; preds = %27, %24
  %32 = load i32, i32* %9, align 4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 5
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 4
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %12, align 4
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %11, align 4
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  %40 = call i32 @SPY_GetWndName(%struct.TYPE_5__* %13)
  %41 = call i32 @SPY_GetMsgStuff(%struct.TYPE_5__* %13)
  %42 = call i32 (...) @get_indent_level()
  store i32 %42, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %31
  %45 = load i64, i64* @SPY_INDENT_UNIT, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @set_indent_level(i32 %50)
  br label %52

52:                                               ; preds = %44, %31
  %53 = load i32, i32* %7, align 4
  switch i32 %53, label %75 [
    i32 129, label %54
    i32 128, label %62
  ]

54:                                               ; preds = %52
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 (i8*, i32, i8*, i32, i32, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %55, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57, i32 %59, i32 %60)
  br label %75

62:                                               ; preds = %52
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %8, align 4
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @debugstr_w(i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 (i8*, i32, i8*, i32, i32, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %63, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %67, i32 %68, i32 %70, i32 %71)
  %73 = load i32, i32* @FALSE, align 4
  %74 = call i32 @SPY_DumpStructure(%struct.TYPE_5__* %13, i32 %73)
  br label %75

75:                                               ; preds = %52, %62, %54
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @SetLastError(i32 %76)
  br label %78

78:                                               ; preds = %75, %30
  ret void
}

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @TRACE_ON(i32) #1

declare dso_local i64 @exclude_msg(i32) #1

declare dso_local i64 @exclude_dwp(...) #1

declare dso_local i32 @SPY_GetWndName(%struct.TYPE_5__*) #1

declare dso_local i32 @SPY_GetMsgStuff(%struct.TYPE_5__*) #1

declare dso_local i32 @get_indent_level(...) #1

declare dso_local i32 @set_indent_level(i32) #1

declare dso_local i32 @TRACE(i8*, i32, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @SPY_DumpStructure(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
