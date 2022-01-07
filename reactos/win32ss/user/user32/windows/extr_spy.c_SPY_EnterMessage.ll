; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_spy.c_SPY_EnterMessage.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_spy.c_SPY_EnterMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"%*s(%p) %-16s [%04x] %s dispatched  wp=%08lx lp=%08lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"self\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"tid %04ld\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"%*s(%p) %-16s [%04x] %s sent from %s wp=%08lx lp=%08lx\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"%*s(%p)  DefWindowProc:[%04x] %s  wp=%08lx lp=%08lx\0A\00", align 1
@SPY_INDENT_UNIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SPY_EnterMessage(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [20 x i8], align 16
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = call i32 (...) @GetLastError()
  store i32 %16, i32* %13, align 4
  %17 = call i32 (...) @spy_init()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @exclude_msg(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %5
  br label %102

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 5
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 4
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %10, align 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = call i32 @SPY_GetWndName(%struct.TYPE_5__* %11)
  %34 = call i32 @SPY_GetMsgStuff(%struct.TYPE_5__* %11)
  %35 = call i32 (...) @get_indent_level()
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %6, align 4
  switch i32 %36, label %94 [
    i32 129, label %37
    i32 128, label %51
    i32 130, label %79
  ]

37:                                               ; preds = %24
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @debugstr_w(i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = load i32, i32* %10, align 4
  %50 = call i32 (i8*, i32, i8*, i32, i32, i32, i32, i8*, ...) @TRACE(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %38, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %42, i32 %43, i32 %45, i8* %48, i32 %49)
  br label %94

51:                                               ; preds = %24
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @GetWindowThreadProcessId(i32 %52, i32* null)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = call i32 (...) @GetCurrentThreadId()
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %59 = call i32 @strcpy(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %64

60:                                               ; preds = %51
  %61 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %62 = call i32 (...) @GetCurrentThreadId()
  %63 = call i32 @sprintf(i8* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %60, %57
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %7, align 4
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @debugstr_w(i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 (i8*, i32, i8*, i32, i32, i32, i32, i8*, ...) @TRACE(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %65, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %69, i32 %70, i32 %72, i8* %73, i32 %74, i32 %75)
  %77 = load i32, i32* @TRUE, align 4
  %78 = call i32 @SPY_DumpStructure(%struct.TYPE_5__* %11, i32 %77)
  br label %94

79:                                               ; preds = %24
  %80 = call i32 (...) @exclude_dwp()
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %102

83:                                               ; preds = %79
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %8, align 4
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i8*
  %93 = call i32 (i8*, i32, i8*, i32, i32, i32, i32, i8*, ...) @TRACE(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %84, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %86, i32 %88, i32 %89, i8* %92)
  br label %94

94:                                               ; preds = %24, %83, %64, %37
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* @SPY_INDENT_UNIT, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @set_indent_level(i64 %98)
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @SetLastError(i32 %100)
  br label %102

102:                                              ; preds = %94, %82, %23
  ret void
}

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @spy_init(...) #1

declare dso_local i64 @exclude_msg(i32) #1

declare dso_local i32 @SPY_GetWndName(%struct.TYPE_5__*) #1

declare dso_local i32 @SPY_GetMsgStuff(%struct.TYPE_5__*) #1

declare dso_local i32 @get_indent_level(...) #1

declare dso_local i32 @TRACE(i8*, i32, i8*, i32, i32, i32, i32, i8*, ...) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @GetWindowThreadProcessId(i32, i32*) #1

declare dso_local i32 @GetCurrentThreadId(...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @SPY_DumpStructure(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @exclude_dwp(...) #1

declare dso_local i32 @set_indent_level(i64) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
