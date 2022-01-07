; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_usrmarshal.c_test_marshal_HBRUSH.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_usrmarshal.c_test_marshal_HBRUSH.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64, i32 }

@BS_SOLID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"CreateBrushIndirect failed\0A\00", align 1
@MSHCTX_LOCAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Wrong size %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"got %p buffer %p\0A\00", align 1
@WDT_INPROC_CALL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"Context should be WDT_INPROC_CALL instead of 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Marshaled value should be %p instead of %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Didn't unmarshal properly\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_marshal_HBRUSH to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_marshal_HBRUSH() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = load i32, i32* @BS_SOLID, align 4
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = call i32 @RGB(i32 0, i32 0, i32 0)
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = call i64 @CreateBrushIndirect(%struct.TYPE_10__* %8)
  store i64 %16, i64* %2, align 8
  %17 = load i64, i64* %2, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @MSHCTX_LOCAL, align 4
  %22 = call i32 @init_user_marshal_cb(%struct.TYPE_9__* %4, i32* %1, i32* %5, i8* null, i32 0, i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %24 = call i32 @HBRUSH_UserSize(i32* %23, i32 1, i64* %2)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp eq i64 %26, 28
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = call i32 (...) @GetProcessHeap()
  %32 = load i32, i32* %10, align 4
  %33 = call i8* @HeapAlloc(i32 %31, i32 0, i32 %32)
  store i8* %33, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @MSHCTX_LOCAL, align 4
  %37 = call i32 @init_user_marshal_cb(%struct.TYPE_9__* %4, i32* %1, i32* %5, i8* %34, i32 %35, i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = call i8* @HBRUSH_UserMarshal(i32* %38, i8* %40, i64* %2)
  store i8* %41, i8** %7, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 4
  %45 = getelementptr inbounds i8, i8* %44, i64 24
  %46 = icmp eq i8* %42, %45
  %47 = zext i1 %46 to i32
  %48 = load i8*, i8** %7, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %48, i8* %49)
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 4
  %53 = bitcast i8* %52 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %9, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @WDT_INPROC_CALL, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %2, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i64, i64* %2, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i64 %71, i32 %75)
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @MSHCTX_LOCAL, align 4
  %80 = call i32 @init_user_marshal_cb(%struct.TYPE_9__* %4, i32* %1, i32* %5, i8* %77, i32 %78, i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = call i8* @HBRUSH_UserUnmarshal(i32* %81, i8* %83, i64* %3)
  store i8* %84, i8** %7, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 4
  %88 = getelementptr inbounds i8, i8* %87, i64 24
  %89 = icmp eq i8* %85, %88
  %90 = zext i1 %89 to i32
  %91 = load i8*, i8** %7, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %91, i8* %92)
  %94 = load i64, i64* %2, align 8
  %95 = load i64, i64* %3, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %99 = call i32 (...) @GetProcessHeap()
  %100 = load i8*, i8** %6, align 8
  %101 = call i32 @HeapFree(i32 %99, i32 0, i8* %100)
  %102 = load i32, i32* @MSHCTX_LOCAL, align 4
  %103 = call i32 @init_user_marshal_cb(%struct.TYPE_9__* %4, i32* %1, i32* %5, i8* null, i32 0, i32 %102)
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %105 = call i32 @HBRUSH_UserFree(i32* %104, i64* %3)
  %106 = load i64, i64* %2, align 8
  %107 = call i32 @DeleteObject(i64 %106)
  ret void
}

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i64 @CreateBrushIndirect(%struct.TYPE_10__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @init_user_marshal_cb(%struct.TYPE_9__*, i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @HBRUSH_UserSize(i32*, i32, i64*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i8* @HBRUSH_UserMarshal(i32*, i8*, i64*) #1

declare dso_local i8* @HBRUSH_UserUnmarshal(i32*, i8*, i64*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @HBRUSH_UserFree(i32*, i64*) #1

declare dso_local i32 @DeleteObject(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
