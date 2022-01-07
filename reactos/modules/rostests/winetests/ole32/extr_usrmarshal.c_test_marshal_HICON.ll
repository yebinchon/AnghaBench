; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_usrmarshal.c_test_marshal_HICON.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_usrmarshal.c_test_marshal_HICON.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@test_marshal_HICON.bmp_bits = internal constant [1024 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [19 x i8] c"CreateIcon failed\0A\00", align 1
@MSHCTX_LOCAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Wrong size %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"got %p buffer %p\0A\00", align 1
@WDT_INPROC_CALL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"Context should be WDT_INPROC_CALL instead of 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Marshaled value should be %p instead of %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Didn't unmarshal properly\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_marshal_HICON to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_marshal_HICON() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = call i64 @CreateIcon(i32 0, i32 16, i32 16, i32 1, i32 1, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @test_marshal_HICON.bmp_bits, i64 0, i64 0), i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @test_marshal_HICON.bmp_bits, i64 0, i64 0))
  store i64 %10, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @MSHCTX_LOCAL, align 4
  %16 = call i32 @init_user_marshal_cb(%struct.TYPE_7__* %4, i32* %1, i32* %5, i8* null, i32 0, i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %18 = call i32 @HICON_UserSize(i32* %17, i32 1, i64* %2)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp eq i64 %20, 28
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %9, align 4
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = call i32 (...) @GetProcessHeap()
  %26 = load i32, i32* %9, align 4
  %27 = call i8* @HeapAlloc(i32 %25, i32 0, i32 %26)
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @MSHCTX_LOCAL, align 4
  %31 = call i32 @init_user_marshal_cb(%struct.TYPE_7__* %4, i32* %1, i32* %5, i8* %28, i32 %29, i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = call i8* @HICON_UserMarshal(i32* %32, i8* %34, i64* %2)
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 4
  %39 = getelementptr inbounds i8, i8* %38, i64 24
  %40 = icmp eq i8* %36, %39
  %41 = zext i1 %40 to i32
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %42, i8* %43)
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 4
  %47 = bitcast i8* %46 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %8, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @WDT_INPROC_CALL, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %2, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i64, i64* %2, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i64 %65, i32 %69)
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @MSHCTX_LOCAL, align 4
  %74 = call i32 @init_user_marshal_cb(%struct.TYPE_7__* %4, i32* %1, i32* %5, i8* %71, i32 %72, i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = call i8* @HICON_UserUnmarshal(i32* %75, i8* %77, i64* %3)
  store i8* %78, i8** %7, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 4
  %82 = getelementptr inbounds i8, i8* %81, i64 24
  %83 = icmp eq i8* %79, %82
  %84 = zext i1 %83 to i32
  %85 = load i8*, i8** %7, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %85, i8* %86)
  %88 = load i64, i64* %2, align 8
  %89 = load i64, i64* %3, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %93 = call i32 (...) @GetProcessHeap()
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @HeapFree(i32 %93, i32 0, i8* %94)
  %96 = load i32, i32* @MSHCTX_LOCAL, align 4
  %97 = call i32 @init_user_marshal_cb(%struct.TYPE_7__* %4, i32* %1, i32* %5, i8* null, i32 0, i32 %96)
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %99 = call i32 @HICON_UserFree(i32* %98, i64* %3)
  %100 = load i64, i64* %2, align 8
  %101 = call i32 @DestroyIcon(i64 %100)
  ret void
}

declare dso_local i64 @CreateIcon(i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @init_user_marshal_cb(%struct.TYPE_7__*, i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @HICON_UserSize(i32*, i32, i64*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i8* @HICON_UserMarshal(i32*, i8*, i64*) #1

declare dso_local i8* @HICON_UserUnmarshal(i32*, i8*, i64*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @HICON_UserFree(i32*, i64*) #1

declare dso_local i32 @DestroyIcon(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
