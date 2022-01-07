; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtl.c_test_LdrAddRefDll.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtl.c_test_LdrAddRefDll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"comctl32.dll\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@LDR_ADDREF_DLL_PIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_LdrAddRefDll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_LdrAddRefDll() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = call i32* @LoadLibraryA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %5, i32** %1, align 8
  %6 = load i32*, i32** %1, align 8
  %7 = icmp ne i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %9)
  %11 = load i32*, i32** %1, align 8
  %12 = call i32* @FreeLibrary(i32* %11)
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = ptrtoint i32* %13 to i32
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %15)
  %17 = call i32* @GetModuleHandleA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %2, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = icmp eq i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %21)
  %23 = call i32* @LoadLibraryA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %23, i32** %1, align 8
  %24 = load i32*, i32** %1, align 8
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %27)
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @pLdrAddRefDll(i32 0, i32* %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @STATUS_SUCCESS, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i32*
  %38 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %37)
  %39 = load i32*, i32** %1, align 8
  %40 = call i32* @FreeLibrary(i32* %39)
  store i32* %40, i32** %4, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = ptrtoint i32* %41 to i32
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %43)
  %45 = call i32* @GetModuleHandleA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %45, i32** %2, align 8
  %46 = load i32*, i32** %2, align 8
  %47 = icmp ne i32* %46, null
  %48 = zext i1 %47 to i32
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %49)
  %51 = load i32*, i32** %1, align 8
  %52 = call i32* @FreeLibrary(i32* %51)
  store i32* %52, i32** %4, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = ptrtoint i32* %53 to i32
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %55)
  %57 = call i32* @GetModuleHandleA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %57, i32** %2, align 8
  %58 = load i32*, i32** %2, align 8
  %59 = icmp eq i32* %58, null
  %60 = zext i1 %59 to i32
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %61)
  %63 = call i32* @LoadLibraryA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %63, i32** %1, align 8
  %64 = load i32*, i32** %1, align 8
  %65 = icmp ne i32* %64, null
  %66 = zext i1 %65 to i32
  %67 = load i32*, i32** %1, align 8
  %68 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %67)
  %69 = load i32, i32* @LDR_ADDREF_DLL_PIN, align 4
  %70 = load i32*, i32** %1, align 8
  %71 = call i32 @pLdrAddRefDll(i32 %69, i32* %70)
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @STATUS_SUCCESS, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i32*
  %79 = call i32 @ok(i32 %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %78)
  %80 = load i32*, i32** %1, align 8
  %81 = call i32* @FreeLibrary(i32* %80)
  store i32* %81, i32** %4, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = ptrtoint i32* %82 to i32
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @ok(i32 %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %84)
  %86 = load i32*, i32** %1, align 8
  %87 = call i32* @FreeLibrary(i32* %86)
  store i32* %87, i32** %4, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = ptrtoint i32* %88 to i32
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @ok(i32 %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %90)
  %92 = load i32*, i32** %1, align 8
  %93 = call i32* @FreeLibrary(i32* %92)
  store i32* %93, i32** %4, align 8
  %94 = load i32*, i32** %4, align 8
  %95 = ptrtoint i32* %94 to i32
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @ok(i32 %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %96)
  %98 = load i32*, i32** %1, align 8
  %99 = call i32* @FreeLibrary(i32* %98)
  store i32* %99, i32** %4, align 8
  %100 = load i32*, i32** %4, align 8
  %101 = ptrtoint i32* %100 to i32
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 @ok(i32 %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %102)
  %104 = call i32* @GetModuleHandleA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %104, i32** %2, align 8
  %105 = load i32*, i32** %2, align 8
  %106 = icmp ne i32* %105, null
  %107 = zext i1 %106 to i32
  %108 = load i32*, i32** %2, align 8
  %109 = call i32 @ok(i32 %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %108)
  ret void
}

declare dso_local i32* @LoadLibraryA(i8*) #1

declare dso_local i32 @ok(i32, i8*, i32*) #1

declare dso_local i32* @FreeLibrary(i32*) #1

declare dso_local i32* @GetModuleHandleA(i8*) #1

declare dso_local i32 @pLdrAddRefDll(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
