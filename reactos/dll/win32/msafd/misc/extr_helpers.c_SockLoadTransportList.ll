; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msafd/misc/extr_helpers.c_SockLoadTransportList.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msafd/misc/extr_helpers.c_SockLoadTransportList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Called\0A\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i32] [i32 83, i32 89, i32 83, i32 84, i32 69, i32 77, i32 92, i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 83, i32 101, i32 116, i32 92, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 115, i32 92, i32 87, i32 105, i32 110, i32 115, i32 111, i32 99, i32 107, i32 92, i32 80, i32 97, i32 114, i32 97, i32 109, i32 101, i32 116, i32 101, i32 114, i32 115, i32 0], align 4
@KEY_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Error reading transport list registry\0A\00", align 1
@WSAEINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i32] [i32 84, i32 114, i32 97, i32 110, i32 115, i32 112, i32 111, i32 114, i32 116, i32 115, i32 0], align 4
@GlobalHeap = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Buffer allocation failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SockLoadTransportList(i32** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32** %0, i32*** %3, align 8
  %7 = call i32 @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %9 = load i32, i32* @KEY_READ, align 4
  %10 = call i64 @RegOpenKeyExW(i32 %8, i8* bitcast ([53 x i32]* @.str.1 to i8*), i32 0, i32 %9, i32* %5)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = call i32 @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %15 = load i32, i32* @WSAEINVAL, align 4
  store i32 %15, i32* %2, align 4
  br label %52

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @RegQueryValueExW(i32 %17, i8* bitcast ([11 x i32]* @.str.3 to i8*), i32* null, i32* null, i32* null, i32* %4)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = call i32 @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32, i32* @WSAEINVAL, align 4
  store i32 %23, i32* %2, align 4
  br label %52

24:                                               ; preds = %16
  %25 = load i32, i32* @GlobalHeap, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32* @HeapAlloc(i32 %25, i32 0, i32 %26)
  %28 = load i32**, i32*** %3, align 8
  store i32* %27, i32** %28, align 8
  %29 = load i32**, i32*** %3, align 8
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %34 = load i32, i32* @WSAEINVAL, align 4
  store i32 %34, i32* %2, align 4
  br label %52

35:                                               ; preds = %24
  %36 = load i32, i32* %5, align 4
  %37 = load i32**, i32*** %3, align 8
  %38 = load i32*, i32** %37, align 8
  %39 = call i64 @RegQueryValueExW(i32 %36, i8* bitcast ([11 x i32]* @.str.3 to i8*), i32* null, i32* null, i32* %38, i32* %4)
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = call i32 @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @GlobalHeap, align 4
  %45 = load i32**, i32*** %3, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @HeapFree(i32 %44, i32 0, i32* %46)
  %48 = load i32, i32* @WSAEINVAL, align 4
  store i32 %48, i32* %2, align 4
  br label %52

49:                                               ; preds = %35
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @RegCloseKey(i32 %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %42, %32, %21, %13
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i64 @RegQueryValueExW(i32, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
