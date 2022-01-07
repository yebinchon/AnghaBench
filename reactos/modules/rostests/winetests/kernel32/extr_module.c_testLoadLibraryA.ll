; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_module.c_testLoadLibraryA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_module.c_testLoadLibraryA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"kernel32.dll\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"kernel32.dll should be loadable\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"GetLastError should be 0xdeadbeef but is %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"CreateFileA\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"CreateFileA should be there\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"kernel32   \00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"\22kernel32   \22 should be loadable\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Loaded wrong module\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testLoadLibraryA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testLoadLibraryA() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32 @SetLastError(i32 -559038737)
  %5 = call i32* @LoadLibraryA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %5, i32** %1, align 8
  %6 = load i32*, i32** %1, align 8
  %7 = icmp ne i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 (i32, i8*, ...) @ok(i32 %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 (...) @GetLastError()
  %11 = icmp eq i32 %10, -559038737
  %12 = zext i1 %11 to i32
  %13 = call i32 (...) @GetLastError()
  %14 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = call i32* @GetProcAddress(i32* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32* %16, i32** %3, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %21 = call i32 (...) @GetLastError()
  %22 = icmp eq i32 %21, -559038737
  %23 = zext i1 %22 to i32
  %24 = call i32 (...) @GetLastError()
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = call i32 @SetLastError(i32 -559038737)
  %27 = call i32* @LoadLibraryA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32* %27, i32** %2, align 8
  %28 = load i32*, i32** %2, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %32 = call i32 (...) @GetLastError()
  %33 = icmp eq i32 %32, -559038737
  %34 = zext i1 %33 to i32
  %35 = call i32 (...) @GetLastError()
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %1, align 8
  %38 = load i32*, i32** %2, align 8
  %39 = icmp eq i32* %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @FreeLibrary(i32* %42)
  %44 = load i32*, i32** %1, align 8
  %45 = call i32 @FreeLibrary(i32* %44)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32* @LoadLibraryA(i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32* @GetProcAddress(i32*, i8*) #1

declare dso_local i32 @FreeLibrary(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
