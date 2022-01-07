; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_text.c_test_DrawState.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_text.c_test_DrawState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_DrawState.text = internal constant [19 x i8] c"Sample text string\00", align 16
@.str = private unnamed_addr constant [7 x i8] c"static\00", align 1
@WS_POPUP = common dso_local global i32 0, align 4
@DKGRAY_BRUSH = common dso_local global i32 0, align 4
@DST_TEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"DrawState error %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"DrawState succeeded\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"not expected error %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_DrawState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_DrawState() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @WS_POPUP, align 4
  %5 = call i32 @CreateWindowExA(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null, i32 %4, i32 0, i32 0, i32 200, i32 200, i32 0, i32 0, i32 0, i32* null)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @assert(i32 %6)
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @GetDC(i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @assert(i32 %10)
  %12 = call i32 @SetLastError(i32 -559038737)
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @DKGRAY_BRUSH, align 4
  %15 = call i32 @GetStockObject(i32 %14)
  %16 = call i32 @strlen(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @test_DrawState.text, i64 0, i64 0))
  %17 = load i32, i32* @DST_TEXT, align 4
  %18 = call i32 @DrawStateA(i32 %13, i32 %15, i32* null, i32 ptrtoint ([19 x i8]* @test_DrawState.text to i32), i32 %16, i32 0, i32 0, i32 10, i32 10, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 (...) @GetLastError()
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = call i32 @SetLastError(i32 -559038737)
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @DKGRAY_BRUSH, align 4
  %25 = call i32 @GetStockObject(i32 %24)
  %26 = load i32, i32* @DST_TEXT, align 4
  %27 = call i32 @DrawStateA(i32 %23, i32 %25, i32* null, i32 ptrtoint ([19 x i8]* @test_DrawState.text to i32), i32 0, i32 0, i32 0, i32 10, i32 10, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 (...) @GetLastError()
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = call i32 @SetLastError(i32 -559038737)
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @DKGRAY_BRUSH, align 4
  %34 = call i32 @GetStockObject(i32 %33)
  %35 = call i32 @strlen(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @test_DrawState.text, i64 0, i64 0))
  %36 = load i32, i32* @DST_TEXT, align 4
  %37 = call i32 @DrawStateA(i32 %32, i32 %34, i32* null, i32 0, i32 %35, i32 0, i32 0, i32 10, i32 10, i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %0
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @broken(i32 %41)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %40, %0
  %45 = phi i1 [ true, %0 ], [ %43, %40 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %48 = call i32 (...) @GetLastError()
  %49 = icmp eq i32 %48, -559038737
  %50 = zext i1 %49 to i32
  %51 = call i32 (...) @GetLastError()
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = call i32 @SetLastError(i32 -559038737)
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* @DKGRAY_BRUSH, align 4
  %56 = call i32 @GetStockObject(i32 %55)
  %57 = load i32, i32* @DST_TEXT, align 4
  %58 = call i32 @DrawStateA(i32 %54, i32 %56, i32* null, i32 0, i32 0, i32 0, i32 0, i32 10, i32 10, i32 %57)
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %44
  %62 = load i32, i32* %3, align 4
  %63 = call i64 @broken(i32 %62)
  %64 = icmp ne i64 %63, 0
  br label %65

65:                                               ; preds = %61, %44
  %66 = phi i1 [ true, %44 ], [ %64, %61 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %69 = call i32 (...) @GetLastError()
  %70 = icmp eq i32 %69, -559038737
  %71 = zext i1 %70 to i32
  %72 = call i32 (...) @GetLastError()
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %1, align 4
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @ReleaseDC(i32 %74, i32 %75)
  %77 = load i32, i32* %1, align 4
  %78 = call i32 @DestroyWindow(i32 %77)
  ret void
}

declare dso_local i32 @CreateWindowExA(i32, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @DrawStateA(i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GetStockObject(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @DestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
