; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_ordinal.c_test_SHSetWindowBits.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_ordinal.c_test_SHSetWindowBits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32*, i32*, i32, i64, i32, i64, i64, i32, i64 }

@DefWindowProcA = common dso_local global i32 0, align 4
@IDC_ARROW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Shlwapi test class\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Test\00", align 1
@WS_VISIBLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to create window\0A\00", align 1
@GWL_STYLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"expected 0 retval, got %d\0A\00", align 1
@ERROR_INVALID_WINDOW_HANDLE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [46 x i8] c"expected ERROR_INVALID_WINDOW_HANDLE, got %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"expected old style\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"expected to keep old style\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"expected WS_VISIBLE\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"expected previous style, got %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"expected updated style\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SHSetWindowBits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SHSetWindowBits() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 9
  store i64 0, i64* %5, align 8
  %6 = load i32, i32* @DefWindowProcA, align 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 8
  store i32 %6, i32* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 7
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 6
  store i64 0, i64* %9, align 8
  %10 = call i32 @GetModuleHandleA(i32* null)
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 5
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = load i64, i64* @IDC_ARROW, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 @LoadCursorA(i32 0, i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  store i32* null, i32** %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %20 = call i32 @RegisterClassA(%struct.TYPE_3__* %4)
  %21 = load i32, i32* @WS_VISIBLE, align 4
  %22 = call i32 @GetModuleHandleA(i32* null)
  %23 = call i32* @CreateWindowA(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 0, i32 0, i32 100, i32 100, i32* null, i32* null, i32 %22, i32 0)
  store i32* %23, i32** %1, align 8
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @IsWindow(i32* %24)
  %26 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %27 = call i32 @SetLastError(i32 -559038737)
  %28 = load i32, i32* @GWL_STYLE, align 4
  %29 = call i32 @pSHSetWindowBits(i32* null, i32 %28, i32 0, i32 0)
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %2, align 4
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = call i64 (...) @GetLastError()
  %36 = load i64, i64* @ERROR_INVALID_WINDOW_HANDLE, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 (...) @GetLastError()
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i64 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = load i32, i32* @GWL_STYLE, align 4
  %43 = call i32 @GetWindowLongA(i32* %41, i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32*, i32** %1, align 8
  %45 = load i32, i32* @GWL_STYLE, align 4
  %46 = call i32 @pSHSetWindowBits(i32* %44, i32 %45, i32 0, i32 0)
  store i32 %46, i32* %2, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %2, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %52 = load i32, i32* %3, align 4
  %53 = load i32*, i32** %1, align 8
  %54 = load i32, i32* @GWL_STYLE, align 4
  %55 = call i32 @GetWindowLongA(i32* %53, i32 %54)
  %56 = icmp eq i32 %52, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %59 = load i32*, i32** %1, align 8
  %60 = load i32, i32* @GWL_STYLE, align 4
  %61 = call i32 @GetWindowLongA(i32* %59, i32 %60)
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @WS_VISIBLE, align 4
  %64 = and i32 %62, %63
  %65 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %66 = load i32*, i32** %1, align 8
  %67 = load i32, i32* @GWL_STYLE, align 4
  %68 = load i32, i32* @WS_VISIBLE, align 4
  %69 = call i32 @pSHSetWindowBits(i32* %66, i32 %67, i32 %68, i32 0)
  store i32 %69, i32* %2, align 4
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* %3, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %2, align 4
  %75 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %74)
  %76 = load i32*, i32** %1, align 8
  %77 = load i32, i32* @GWL_STYLE, align 4
  %78 = call i32 @GetWindowLongA(i32* %76, i32 %77)
  %79 = load i32, i32* @WS_VISIBLE, align 4
  %80 = and i32 %78, %79
  %81 = icmp eq i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %84 = load i32*, i32** %1, align 8
  %85 = load i32, i32* @GWL_STYLE, align 4
  %86 = call i32 @GetWindowLongA(i32* %84, i32 %85)
  store i32 %86, i32* %3, align 4
  %87 = load i32*, i32** %1, align 8
  %88 = load i32, i32* @GWL_STYLE, align 4
  %89 = load i32, i32* @WS_VISIBLE, align 4
  %90 = call i32 @pSHSetWindowBits(i32* %87, i32 %88, i32 %89, i32 0)
  store i32 %90, i32* %2, align 4
  %91 = load i32, i32* %2, align 4
  %92 = load i32, i32* %3, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %2, align 4
  %96 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %3, align 4
  %98 = load i32*, i32** %1, align 8
  %99 = load i32, i32* @GWL_STYLE, align 4
  %100 = call i32 @GetWindowLongA(i32* %98, i32 %99)
  %101 = icmp eq i32 %97, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %104 = load i32*, i32** %1, align 8
  %105 = load i32, i32* @GWL_STYLE, align 4
  %106 = call i32 @GetWindowLongA(i32* %104, i32 %105)
  store i32 %106, i32* %3, align 4
  %107 = load i32*, i32** %1, align 8
  %108 = load i32, i32* @GWL_STYLE, align 4
  %109 = load i32, i32* @WS_VISIBLE, align 4
  %110 = load i32, i32* @WS_VISIBLE, align 4
  %111 = call i32 @pSHSetWindowBits(i32* %107, i32 %108, i32 %109, i32 %110)
  store i32 %111, i32* %2, align 4
  %112 = load i32, i32* %2, align 4
  %113 = load i32, i32* %3, align 4
  %114 = icmp eq i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = load i32, i32* %2, align 4
  %117 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %116)
  %118 = load i32*, i32** %1, align 8
  %119 = load i32, i32* @GWL_STYLE, align 4
  %120 = call i32 @GetWindowLongA(i32* %118, i32 %119)
  %121 = load i32, i32* @WS_VISIBLE, align 4
  %122 = and i32 %120, %121
  %123 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %124 = load i32*, i32** %1, align 8
  %125 = load i32, i32* @GWL_STYLE, align 4
  %126 = load i32, i32* @WS_VISIBLE, align 4
  %127 = call i32 @pSHSetWindowBits(i32* %124, i32 %125, i32 %126, i32 0)
  %128 = load i32*, i32** %1, align 8
  %129 = load i32, i32* @GWL_STYLE, align 4
  %130 = call i32 @GetWindowLongA(i32* %128, i32 %129)
  %131 = load i32, i32* @WS_VISIBLE, align 4
  %132 = and i32 %130, %131
  %133 = icmp eq i32 %132, 0
  %134 = zext i1 %133 to i32
  %135 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %136 = load i32*, i32** %1, align 8
  %137 = load i32, i32* @GWL_STYLE, align 4
  %138 = call i32 @GetWindowLongA(i32* %136, i32 %137)
  store i32 %138, i32* %3, align 4
  %139 = load i32*, i32** %1, align 8
  %140 = load i32, i32* @GWL_STYLE, align 4
  %141 = load i32, i32* @WS_VISIBLE, align 4
  %142 = call i32 @pSHSetWindowBits(i32* %139, i32 %140, i32 0, i32 %141)
  store i32 %142, i32* %2, align 4
  %143 = load i32, i32* %2, align 4
  %144 = load i32, i32* %3, align 4
  %145 = icmp eq i32 %143, %144
  %146 = zext i1 %145 to i32
  %147 = load i32, i32* %2, align 4
  %148 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %147)
  %149 = load i32*, i32** %1, align 8
  %150 = load i32, i32* @GWL_STYLE, align 4
  %151 = call i32 @GetWindowLongA(i32* %149, i32 %150)
  %152 = load i32, i32* @WS_VISIBLE, align 4
  %153 = and i32 %151, %152
  %154 = icmp eq i32 %153, 0
  %155 = zext i1 %154 to i32
  %156 = call i32 (i32, i8*, ...) @ok(i32 %155, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %157 = load i32*, i32** %1, align 8
  %158 = call i32 @DestroyWindow(i32* %157)
  %159 = call i32 @GetModuleHandleA(i32* null)
  %160 = call i32 @UnregisterClassA(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %159)
  ret void
}

declare dso_local i32 @GetModuleHandleA(i32*) #1

declare dso_local i32 @LoadCursorA(i32, i32) #1

declare dso_local i32 @RegisterClassA(%struct.TYPE_3__*) #1

declare dso_local i32* @CreateWindowA(i8*, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IsWindow(i32*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @pSHSetWindowBits(i32*, i32, i32, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @GetWindowLongA(i32*, i32) #1

declare dso_local i32 @DestroyWindow(i32*) #1

declare dso_local i32 @UnregisterClassA(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
