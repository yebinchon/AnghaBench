; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/conio/extr_getch.c__getch.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/conio/extr_getch.c__getch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@char_avail = common dso_local global i64 0, align 8
@ungot_char = common dso_local global i8 0, align 1
@stdin = common dso_local global %struct.TYPE_2__* null, align 8
@ENABLE_ECHO_INPUT = common dso_local global i32 0, align 4
@ENABLE_LINE_INPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_getch() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = load i64, i64* @char_avail, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i8, i8* @ungot_char, align 1
  store i8 %9, i8* %2, align 1
  store i64 0, i64* @char_avail, align 8
  br label %52

10:                                               ; preds = %0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stdin, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @_get_osfhandle(i32 %13)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @GetConsoleMode(i64 %15, i32* %5)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %10
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @ENABLE_ECHO_INPUT, align 4
  %21 = load i32, i32* @ENABLE_LINE_INPUT, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 0, %23
  br label %25

25:                                               ; preds = %18, %10
  %26 = phi i1 [ false, %10 ], [ %24, %18 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load i64, i64* %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @ENABLE_ECHO_INPUT, align 4
  %34 = load i32, i32* @ENABLE_LINE_INPUT, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = and i32 %32, %36
  %38 = call i32 @SetConsoleMode(i64 %31, i32 %37)
  br label %39

39:                                               ; preds = %30, %25
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stdin, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @_get_osfhandle(i32 %42)
  %44 = call i32 @ReadConsoleA(i64 %43, i8* %2, i32 1, i32* %1, i32* null)
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i64, i64* %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @SetConsoleMode(i64 %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %39
  br label %52

52:                                               ; preds = %51, %8
  %53 = load i8, i8* %2, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 10
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i8 13, i8* %2, align 1
  br label %57

57:                                               ; preds = %56, %52
  %58 = load i8, i8* %2, align 1
  %59 = sext i8 %58 to i32
  ret i32 %59
}

declare dso_local i64 @_get_osfhandle(i32) #1

declare dso_local i64 @GetConsoleMode(i64, i32*) #1

declare dso_local i32 @SetConsoleMode(i64, i32) #1

declare dso_local i32 @ReadConsoleA(i64, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
