; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_stringtable.c_test_StringTableAddStringEx.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_stringtable.c_test_StringTableAddStringEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"Failed to Initialize String Table\0A\00", align 1
@string = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to add string to String Table\0A\00", align 1
@String = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to add String to String Table\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"string handle %x != String handle %x in String Table\0A\00", align 1
@foo = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to add foo to String Table\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"foo and string share the same ID %x in String Table\0A\00", align 1
@ST_CASE_SENSITIVE_COMPARE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"String handle and string share same ID %x in Table\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"failed to add string, %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"got %d, extra %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_StringTableAddStringEx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_StringTableAddStringEx() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = call i32* (...) @pStringTableInitialize()
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* @string, align 4
  %15 = call i32 @pStringTableAddStringEx(i32* %13, i32 %14, i32 0, i32* null, i32 0)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, -1
  %18 = zext i1 %17 to i32
  %19 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* @String, align 4
  %22 = call i32 @pStringTableAddStringEx(i32* %20, i32 %21, i32 0, i32* null, i32 0)
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* %1, align 4
  %24 = icmp ne i32 %23, -1
  %25 = zext i1 %24 to i32
  %26 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* %1, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* %1, align 4
  %33 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* @foo, align 4
  %36 = call i32 @pStringTableAddStringEx(i32* %34, i32 %35, i32 0, i32* null, i32 0)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, -1
  %39 = zext i1 %38 to i32
  %40 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %2, align 4
  %43 = icmp ne i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %4, align 4
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* @String, align 4
  %49 = load i32, i32* @ST_CASE_SENSITIVE_COMPARE, align 4
  %50 = call i32 @pStringTableAddStringEx(i32* %47, i32 %48, i32 %49, i32* null, i32 0)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp ne i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* %2, align 4
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %55)
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @pStringTableDestroy(i32* %57)
  %59 = call i32* @pStringTableInitializeEx(i32 4, i32 0)
  store i32* %59, i32** %6, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = icmp ne i32* %60, null
  %62 = zext i1 %61 to i32
  %63 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 10, i32* %5, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* @string, align 4
  %66 = call i32 @pStringTableAddStringEx(i32* %64, i32 %65, i32 0, i32* %5, i32 4)
  store i32 %66, i32* %2, align 4
  %67 = load i32, i32* %2, align 4
  %68 = icmp ne i32 %67, -1
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %2, align 4
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %70)
  store i32 0, i32* %5, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %2, align 4
  %74 = call i32 @pStringTableGetExtraData(i32* %72, i32 %73, i32* %5, i32 4)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %0
  %78 = load i32, i32* %5, align 4
  %79 = icmp eq i32 %78, 10
  br label %80

80:                                               ; preds = %77, %0
  %81 = phi i1 [ false, %0 ], [ %79, %77 ]
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %83, i32 %84)
  store i32 11, i32* %5, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* @string, align 4
  %88 = call i32 @pStringTableAddStringEx(i32* %86, i32 %87, i32 0, i32* %5, i32 4)
  store i32 %88, i32* %2, align 4
  %89 = load i32, i32* %2, align 4
  %90 = icmp ne i32 %89, -1
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* %2, align 4
  %93 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %92)
  store i32 0, i32* %5, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %2, align 4
  %96 = call i32 @pStringTableGetExtraData(i32* %94, i32 %95, i32* %5, i32 4)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %80
  %100 = load i32, i32* %5, align 4
  %101 = icmp eq i32 %100, 10
  br label %102

102:                                              ; preds = %99, %80
  %103 = phi i1 [ false, %80 ], [ %101, %99 ]
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %105, i32 %106)
  %108 = load i32*, i32** %6, align 8
  %109 = call i32 @pStringTableDestroy(i32* %108)
  ret void
}

declare dso_local i32* @pStringTableInitialize(...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @pStringTableAddStringEx(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @pStringTableDestroy(i32*) #1

declare dso_local i32* @pStringTableInitializeEx(i32, i32) #1

declare dso_local i32 @pStringTableGetExtraData(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
