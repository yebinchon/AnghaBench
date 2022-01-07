; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_CreateWindowEx.c_Test_Params.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_CreateWindowEx.c_Test_Params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i32] [i32 66, i32 85, i32 84, i32 84, i32 79, i32 78, i32 0], align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"hWnd = %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"error = %lu\0A\00", align 1
@ERROR_INVALID_WINDOW_HANDLE = common dso_local global i32* null, align 8
@WS_CHILD = common dso_local global i32 0, align 4
@ERROR_TLW_WITH_WSCHILD = common dso_local global i32* null, align 8
@WS_POPUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Test_Params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Test_Params() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32 @SetLastError(i32 4660)
  %4 = call i32* @CreateWindowExW(i32 0, i8* bitcast ([7 x i32]* @.str to i8*), i32* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32* null, i32* null, i32* null, i32* null)
  store i32* %4, i32** %1, align 8
  %5 = call i32* (...) @GetLastError()
  store i32* %5, i32** %2, align 8
  %6 = load i32*, i32** %1, align 8
  %7 = icmp ne i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %9)
  %11 = load i32*, i32** %2, align 8
  %12 = icmp eq i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %14)
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @DestroyWindow(i32* %16)
  %18 = call i32 @SetLastError(i32 4660)
  %19 = call i32* @CreateWindowExW(i32 0, i8* bitcast ([7 x i32]* @.str to i8*), i32* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32* inttoptr (i64 -1 to i32*), i32* null, i32* null, i32* null)
  store i32* %19, i32** %1, align 8
  %20 = call i32* (...) @GetLastError()
  store i32* %20, i32** %2, align 8
  %21 = load i32*, i32** %1, align 8
  %22 = icmp eq i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %24)
  %26 = load i32*, i32** %2, align 8
  %27 = load i32*, i32** @ERROR_INVALID_WINDOW_HANDLE, align 8
  %28 = icmp eq i32* %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %30)
  %32 = call i32 @SetLastError(i32 4660)
  %33 = load i32, i32* @WS_CHILD, align 4
  %34 = call i32* @CreateWindowExW(i32 0, i8* bitcast ([7 x i32]* @.str to i8*), i32* null, i32 %33, i32 0, i32 0, i32 0, i32 0, i32* null, i32* null, i32* null, i32* null)
  store i32* %34, i32** %1, align 8
  %35 = call i32* (...) @GetLastError()
  store i32* %35, i32** %2, align 8
  %36 = load i32*, i32** %1, align 8
  %37 = icmp eq i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %39)
  %41 = load i32*, i32** %2, align 8
  %42 = load i32*, i32** @ERROR_TLW_WITH_WSCHILD, align 8
  %43 = icmp eq i32* %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %45)
  %47 = call i32 @SetLastError(i32 4660)
  %48 = load i32, i32* @WS_CHILD, align 4
  %49 = call i32* @CreateWindowExW(i32 0, i8* bitcast ([7 x i32]* @.str to i8*), i32* null, i32 %48, i32 0, i32 0, i32 0, i32 0, i32* inttoptr (i64 -1 to i32*), i32* null, i32* null, i32* null)
  store i32* %49, i32** %1, align 8
  %50 = call i32* (...) @GetLastError()
  store i32* %50, i32** %2, align 8
  %51 = load i32*, i32** %1, align 8
  %52 = icmp eq i32* %51, null
  %53 = zext i1 %52 to i32
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @ok(i32 %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %54)
  %56 = load i32*, i32** %2, align 8
  %57 = load i32*, i32** @ERROR_INVALID_WINDOW_HANDLE, align 8
  %58 = icmp eq i32* %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %60)
  %62 = call i32 @SetLastError(i32 4660)
  %63 = load i32, i32* @WS_POPUP, align 4
  %64 = call i32* @CreateWindowExW(i32 0, i8* bitcast ([7 x i32]* @.str to i8*), i32* null, i32 %63, i32 0, i32 0, i32 0, i32 0, i32* null, i32* null, i32* null, i32* null)
  store i32* %64, i32** %1, align 8
  %65 = call i32* (...) @GetLastError()
  store i32* %65, i32** %2, align 8
  %66 = load i32*, i32** %1, align 8
  %67 = icmp ne i32* %66, null
  %68 = zext i1 %67 to i32
  %69 = load i32*, i32** %1, align 8
  %70 = call i32 @ok(i32 %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %69)
  %71 = load i32*, i32** %2, align 8
  %72 = icmp eq i32* %71, null
  %73 = zext i1 %72 to i32
  %74 = load i32*, i32** %2, align 8
  %75 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %74)
  %76 = load i32*, i32** %1, align 8
  %77 = call i32 @DestroyWindow(i32* %76)
  %78 = call i32 @SetLastError(i32 4660)
  %79 = load i32, i32* @WS_POPUP, align 4
  %80 = call i32* @CreateWindowExW(i32 0, i8* bitcast ([7 x i32]* @.str to i8*), i32* null, i32 %79, i32 0, i32 0, i32 0, i32 0, i32* inttoptr (i64 -1 to i32*), i32* null, i32* null, i32* null)
  store i32* %80, i32** %1, align 8
  %81 = call i32* (...) @GetLastError()
  store i32* %81, i32** %2, align 8
  %82 = load i32*, i32** %1, align 8
  %83 = icmp eq i32* %82, null
  %84 = zext i1 %83 to i32
  %85 = load i32*, i32** %1, align 8
  %86 = call i32 @ok(i32 %84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %85)
  %87 = load i32*, i32** %2, align 8
  %88 = load i32*, i32** @ERROR_INVALID_WINDOW_HANDLE, align 8
  %89 = icmp eq i32* %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i32*, i32** %2, align 8
  %92 = call i32 @ok(i32 %90, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %91)
  %93 = call i32 @SetLastError(i32 4660)
  %94 = load i32, i32* @WS_CHILD, align 4
  %95 = load i32, i32* @WS_POPUP, align 4
  %96 = or i32 %94, %95
  %97 = call i32* @CreateWindowExW(i32 0, i8* bitcast ([7 x i32]* @.str to i8*), i32* null, i32 %96, i32 0, i32 0, i32 0, i32 0, i32* null, i32* null, i32* null, i32* null)
  store i32* %97, i32** %1, align 8
  %98 = call i32* (...) @GetLastError()
  store i32* %98, i32** %2, align 8
  %99 = load i32*, i32** %1, align 8
  %100 = icmp ne i32* %99, null
  %101 = zext i1 %100 to i32
  %102 = load i32*, i32** %1, align 8
  %103 = call i32 @ok(i32 %101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %102)
  %104 = load i32*, i32** %2, align 8
  %105 = icmp eq i32* %104, null
  %106 = zext i1 %105 to i32
  %107 = load i32*, i32** %2, align 8
  %108 = call i32 @ok(i32 %106, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %107)
  %109 = load i32*, i32** %1, align 8
  %110 = call i32 @DestroyWindow(i32* %109)
  %111 = call i32 @SetLastError(i32 4660)
  %112 = load i32, i32* @WS_CHILD, align 4
  %113 = load i32, i32* @WS_POPUP, align 4
  %114 = or i32 %112, %113
  %115 = call i32* @CreateWindowExW(i32 0, i8* bitcast ([7 x i32]* @.str to i8*), i32* null, i32 %114, i32 0, i32 0, i32 0, i32 0, i32* inttoptr (i64 -1 to i32*), i32* null, i32* null, i32* null)
  store i32* %115, i32** %1, align 8
  %116 = call i32* (...) @GetLastError()
  store i32* %116, i32** %2, align 8
  %117 = load i32*, i32** %1, align 8
  %118 = icmp eq i32* %117, null
  %119 = zext i1 %118 to i32
  %120 = load i32*, i32** %1, align 8
  %121 = call i32 @ok(i32 %119, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %120)
  %122 = load i32*, i32** %2, align 8
  %123 = load i32*, i32** @ERROR_INVALID_WINDOW_HANDLE, align 8
  %124 = icmp eq i32* %122, %123
  %125 = zext i1 %124 to i32
  %126 = load i32*, i32** %2, align 8
  %127 = call i32 @ok(i32 %125, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %126)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32* @CreateWindowExW(i32, i8*, i32*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @GetLastError(...) #1

declare dso_local i32 @ok(i32, i8*, i32*) #1

declare dso_local i32 @DestroyWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
