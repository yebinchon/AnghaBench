; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_console.c_testEmptyWrite.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_console.c_testEmptyWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@testEmptyWrite.emptybuf = internal constant [16 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [22 x i8] c"Cursor in upper-left\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"WriteConsole\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @testEmptyWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testEmptyWrite(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i64 0, i64* %5, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* %2, align 4
  %8 = bitcast %struct.TYPE_4__* %3 to { i64, i64 }*
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @SetConsoleCursorPosition(i32 %7, i64 %10, i64 %12)
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i64 @WriteConsoleA(i32 %17, i8* null, i32 0, i32* %4, i32* null)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br label %23

23:                                               ; preds = %20, %1
  %24 = phi i1 [ false, %1 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %2, align 4
  %28 = bitcast %struct.TYPE_4__* %3 to { i64, i64 }*
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %28, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @okCURSOR(i32 %27, i64 %30, i64 %32)
  store i32 -1, i32* %4, align 4
  %34 = load i32, i32* %2, align 4
  %35 = call i64 @WriteConsoleA(i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @testEmptyWrite.emptybuf, i64 0, i64 0), i32 0, i32* %4, i32* null)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %23
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, 0
  br label %40

40:                                               ; preds = %37, %23
  %41 = phi i1 [ false, %23 ], [ %39, %37 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* %2, align 4
  %45 = bitcast %struct.TYPE_4__* %3 to { i64, i64 }*
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %45, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @okCURSOR(i32 %44, i64 %47, i64 %49)
  store i32 -1, i32* %4, align 4
  %51 = load i32, i32* %2, align 4
  %52 = call i64 @WriteConsoleA(i32 %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @testEmptyWrite.emptybuf, i64 0, i64 0), i32 16, i32* %4, i32* null)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %40
  %55 = load i32, i32* %4, align 4
  %56 = icmp eq i32 %55, 16
  br label %57

57:                                               ; preds = %54, %40
  %58 = phi i1 [ false, %40 ], [ %56, %54 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 16
  store i64 %63, i64* %61, align 8
  %64 = load i32, i32* %2, align 4
  %65 = bitcast %struct.TYPE_4__* %3 to { i64, i64 }*
  %66 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %65, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @okCURSOR(i32 %64, i64 %67, i64 %69)
  ret void
}

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i64 @SetConsoleCursorPosition(i32, i64, i64) #1

declare dso_local i64 @WriteConsoleA(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @okCURSOR(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
