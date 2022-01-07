; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/usp10/extr_usp10.c_test_ScriptString_pSize.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/usp10/extr_usp10.c_test_ScriptString_pSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i64, i64, i64 }

@test_ScriptString_pSize.textW = internal constant [2 x i8] c"A\00", align 1
@SSA_GLYPHS = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"ScriptStringAnalyse failed, hr %#x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Unexpected size pointer.\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Unexpected tmHeight.\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Unexpected cx size %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Unexpected cy size %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to free ssa, hr %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_ScriptString_pSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ScriptString_pSize(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @SSA_GLYPHS, align 4
  %10 = call i64 @ScriptStringAnalyse(i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_ScriptString_pSize.textW, i64 0, i64 0), i32 1, i32 16, i32 -1, i32 %9, i32 0, i32* null, i32* null, i32* null, i32* null, i32* null, i32** %3)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @S_OK, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* %6, align 8
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = call %struct.TYPE_9__* @ScriptString_pSize(i32* null)
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %4, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = icmp eq %struct.TYPE_9__* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = icmp ne %struct.TYPE_9__* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i64 @broken(i32 %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %20, %1
  %27 = phi i1 [ true, %1 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* %2, align 4
  %31 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_ScriptString_pSize.textW, i64 0, i64 0), align 1
  %32 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_ScriptString_pSize.textW, i64 0, i64 0), align 1
  %33 = call i32 @GetCharABCWidthsW(i32 %30, i8 signext %31, i8 signext %32, %struct.TYPE_10__* %7)
  %34 = call i32 @memset(%struct.TYPE_8__* %5, i32 0, i32 8)
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @GetTextMetricsW(i32 %35, %struct.TYPE_8__* %5)
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32*, i32** %3, align 8
  %43 = call %struct.TYPE_9__* @ScriptString_pSize(i32* %42)
  store %struct.TYPE_9__* %43, %struct.TYPE_9__** %4, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = icmp ne %struct.TYPE_9__* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %52, %54
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %55, %57
  %59 = icmp eq i64 %50, %58
  %60 = zext i1 %59 to i32
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %67, %69
  %71 = zext i1 %70 to i32
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %74)
  %76 = call i64 @ScriptStringFree(i32** %3)
  store i64 %76, i64* %6, align 8
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* @S_OK, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i64, i64* %6, align 8
  %82 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 %81)
  ret void
}

declare dso_local i64 @ScriptStringAnalyse(i32, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local %struct.TYPE_9__* @ScriptString_pSize(i32*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @GetCharABCWidthsW(i32, i8 signext, i8 signext, %struct.TYPE_10__*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @GetTextMetricsW(i32, %struct.TYPE_8__*) #1

declare dso_local i64 @ScriptStringFree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
