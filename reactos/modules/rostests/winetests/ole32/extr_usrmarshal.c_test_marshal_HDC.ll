; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_usrmarshal.c_test_marshal_HDC.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_usrmarshal.c_test_marshal_HDC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@MSHCTX_LOCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Wrong size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"got %p buffer %p\0A\00", align 1
@WDT_INPROC_CALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Context should be WDT_INPROC_CALL instead of 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Marshaled value should be %p instead of %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Didn't unmarshal properly\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_marshal_HDC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_marshal_HDC() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = call i64 @GetDC(i32 0)
  store i64 %10, i64* %2, align 8
  %11 = load i32, i32* @MSHCTX_LOCAL, align 4
  %12 = call i32 @init_user_marshal_cb(%struct.TYPE_7__* %4, i32* %1, i32* %5, i8* null, i32 0, i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %14 = call i32 @HDC_UserSize(i32* %13, i32 1, i64* %2)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp eq i64 %16, 28
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %9, align 4
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = call i32 (...) @GetProcessHeap()
  %22 = load i32, i32* %9, align 4
  %23 = call i8* @HeapAlloc(i32 %21, i32 0, i32 %22)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @MSHCTX_LOCAL, align 4
  %27 = call i32 @init_user_marshal_cb(%struct.TYPE_7__* %4, i32* %1, i32* %5, i8* %24, i32 %25, i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = call i8* @HDC_UserMarshal(i32* %28, i8* %30, i64* %2)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 4
  %35 = getelementptr inbounds i8, i8* %34, i64 24
  %36 = icmp eq i8* %32, %35
  %37 = zext i1 %36 to i32
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %38, i8* %39)
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 4
  %43 = bitcast i8* %42 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %8, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @WDT_INPROC_CALL, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %2, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i64, i64* %2, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 %61, i32 %65)
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @MSHCTX_LOCAL, align 4
  %70 = call i32 @init_user_marshal_cb(%struct.TYPE_7__* %4, i32* %1, i32* %5, i8* %67, i32 %68, i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = call i8* @HDC_UserUnmarshal(i32* %71, i8* %73, i64* %3)
  store i8* %74, i8** %7, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 4
  %78 = getelementptr inbounds i8, i8* %77, i64 24
  %79 = icmp eq i8* %75, %78
  %80 = zext i1 %79 to i32
  %81 = load i8*, i8** %7, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %81, i8* %82)
  %84 = load i64, i64* %2, align 8
  %85 = load i64, i64* %3, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %89 = call i32 (...) @GetProcessHeap()
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @HeapFree(i32 %89, i32 0, i8* %90)
  %92 = load i32, i32* @MSHCTX_LOCAL, align 4
  %93 = call i32 @init_user_marshal_cb(%struct.TYPE_7__* %4, i32* %1, i32* %5, i8* null, i32 0, i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %95 = call i32 @HDC_UserFree(i32* %94, i64* %3)
  %96 = load i64, i64* %2, align 8
  %97 = call i32 @ReleaseDC(i32 0, i64 %96)
  ret void
}

declare dso_local i64 @GetDC(i32) #1

declare dso_local i32 @init_user_marshal_cb(%struct.TYPE_7__*, i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @HDC_UserSize(i32*, i32, i64*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i8* @HDC_UserMarshal(i32*, i8*, i64*) #1

declare dso_local i8* @HDC_UserUnmarshal(i32*, i8*, i64*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @HDC_UserFree(i32*, i64*) #1

declare dso_local i32 @ReleaseDC(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
