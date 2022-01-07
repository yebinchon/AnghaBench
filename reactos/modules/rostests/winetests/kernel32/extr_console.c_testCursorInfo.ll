; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_console.c_testCursorInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_console.c_testCursorInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Expected failure\0A\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"GetLastError: expecting %u got %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Expected no change for dwSize\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Expected success\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Expected 12 or 25, got %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Expected the cursor to be visible\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @testCursorInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testCursorInfo(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 4
  store i32* %0, i32** %2, align 8
  %5 = call i32 @SetLastError(i32 -559038737)
  %6 = call i32 @GetConsoleCursorInfo(i32* null, %struct.TYPE_3__* null)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 (...) @GetLastError()
  %13 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %14 = icmp eq i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %17 = call i32 (...) @GetLastError()
  %18 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %17)
  %19 = call i32 @SetLastError(i32 -559038737)
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 -1, i32* %20, align 4
  %21 = call i32 @GetConsoleCursorInfo(i32* null, %struct.TYPE_3__* %4)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, -1
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %32 = call i32 (...) @GetLastError()
  %33 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %37 = call i32 (...) @GetLastError()
  %38 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37)
  %39 = call i32 @SetLastError(i32 -559038737)
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @GetConsoleCursorInfo(i32* %40, %struct.TYPE_3__* %4)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 25
  br i1 %46, label %51, label %47

47:                                               ; preds = %1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 12
  br label %51

51:                                               ; preds = %47, %1
  %52 = phi i1 [ true, %1 ], [ %50, %47 ]
  %53 = zext i1 %52 to i32
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %60 = call i32 (...) @GetLastError()
  %61 = icmp eq i32 %60, -559038737
  %62 = zext i1 %61 to i32
  %63 = call i32 (...) @GetLastError()
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 -559038737, i32 %63)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @GetConsoleCursorInfo(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
