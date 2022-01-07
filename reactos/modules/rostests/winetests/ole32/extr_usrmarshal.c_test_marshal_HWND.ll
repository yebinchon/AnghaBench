; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_usrmarshal.c_test_marshal_HWND.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_usrmarshal.c_test_marshal_HWND.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_marshal_HWND to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_marshal_HWND() #0 {
  %1 = alloca %struct.TYPE_7__, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = call i64 (...) @GetDesktopWindow()
  store i64 %10, i64* %7, align 8
  %11 = load i32, i32* @MSHCTX_LOCAL, align 4
  %12 = call i32 @init_user_marshal_cb(%struct.TYPE_7__* %1, i32* %2, i32* %3, i8* null, i32 0, i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %14 = call i32 @HWND_UserSize(i32* %13, i32 1, i64* %7)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp eq i64 %16, 28
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %6, align 4
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = call i32 (...) @GetProcessHeap()
  %22 = load i32, i32* %6, align 4
  %23 = call i8* @HeapAlloc(i32 %21, i32 0, i32 %22)
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @MSHCTX_LOCAL, align 4
  %27 = call i32 @init_user_marshal_cb(%struct.TYPE_7__* %1, i32* %2, i32* %3, i8* %24, i32 %25, i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = call i8* @HWND_UserMarshal(i32* %28, i8* %30, i64* %7)
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = icmp eq i8* %32, %36
  %38 = zext i1 %37 to i32
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %39, i8* %40)
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 4
  %44 = bitcast i8* %43 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %9, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @WDT_INPROC_CALL, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 %62, i32 %66)
  %68 = load i8*, i8** %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @MSHCTX_LOCAL, align 4
  %71 = call i32 @init_user_marshal_cb(%struct.TYPE_7__* %1, i32* %2, i32* %3, i8* %68, i32 %69, i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %73 = load i8*, i8** %4, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = call i8* @HWND_UserUnmarshal(i32* %72, i8* %74, i64* %8)
  store i8* %75, i8** %5, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = icmp eq i8* %76, %80
  %82 = zext i1 %81 to i32
  %83 = load i8*, i8** %5, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %83, i8* %84)
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %91 = call i32 (...) @GetProcessHeap()
  %92 = load i8*, i8** %4, align 8
  %93 = call i32 @HeapFree(i32 %91, i32 0, i8* %92)
  %94 = load i32, i32* @MSHCTX_LOCAL, align 4
  %95 = call i32 @init_user_marshal_cb(%struct.TYPE_7__* %1, i32* %2, i32* %3, i8* null, i32 0, i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %97 = call i32 @HWND_UserFree(i32* %96, i64* %8)
  ret void
}

declare dso_local i64 @GetDesktopWindow(...) #1

declare dso_local i32 @init_user_marshal_cb(%struct.TYPE_7__*, i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @HWND_UserSize(i32*, i32, i64*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i8* @HWND_UserMarshal(i32*, i8*, i64*) #1

declare dso_local i8* @HWND_UserUnmarshal(i32*, i8*, i64*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @HWND_UserFree(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
