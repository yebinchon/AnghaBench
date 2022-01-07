; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_path.c_test_PathUnquoteSpaces.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_path.c_test_PathUnquoteSpaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@TEST_PATH_UNQUOTE_SPACES = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"%s (A): got %s expected %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%s (W): strings differ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_PathUnquoteSpaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_PathUnquoteSpaces() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %81, %0
  %6 = load i32, i32* %1, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_PATH_UNQUOTE_SPACES, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %84

10:                                               ; preds = %5
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_PATH_UNQUOTE_SPACES, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @strdupA(i32 %16)
  store i8* %17, i8** %2, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_PATH_UNQUOTE_SPACES, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32* @GetWideString(i32 %23)
  store i32* %24, i32** %3, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_PATH_UNQUOTE_SPACES, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @GetWideString(i32 %30)
  store i32* %31, i32** %4, align 8
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 @PathUnquoteSpacesA(i8* %32)
  %34 = load i8*, i8** %2, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_PATH_UNQUOTE_SPACES, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @strcmp(i8* %34, i32 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_PATH_UNQUOTE_SPACES, align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %2, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_PATH_UNQUOTE_SPACES, align 8
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, i32, ...) @ok(i32 %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %50, i8* %51, i32 %57)
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @PathUnquoteSpacesW(i32* %59)
  %61 = load i32*, i32** %3, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @lstrcmpW(i32* %61, i32* %62)
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TEST_PATH_UNQUOTE_SPACES, align 8
  %68 = load i32, i32* %1, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i32, i8*, i32, ...) @ok(i32 %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @FreeWideString(i32* %74)
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @FreeWideString(i32* %76)
  %78 = call i32 (...) @GetProcessHeap()
  %79 = load i8*, i8** %2, align 8
  %80 = call i32 @HeapFree(i32 %78, i32 0, i8* %79)
  br label %81

81:                                               ; preds = %10
  %82 = load i32, i32* %1, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %1, align 4
  br label %5

84:                                               ; preds = %5
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i8* @strdupA(i32) #1

declare dso_local i32* @GetWideString(i32) #1

declare dso_local i32 @PathUnquoteSpacesA(i8*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @PathUnquoteSpacesW(i32*) #1

declare dso_local i32 @lstrcmpW(i32*, i32*) #1

declare dso_local i32 @FreeWideString(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
