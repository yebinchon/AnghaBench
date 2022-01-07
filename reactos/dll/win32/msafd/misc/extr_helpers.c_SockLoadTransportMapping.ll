; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msafd/misc/extr_helpers.c_SockLoadTransportMapping.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msafd/misc/extr_helpers.c_SockLoadTransportMapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"TransportName %ws\0A\00", align 1
@GlobalHeap = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Buffer allocation failed\0A\00", align 1
@WSAEINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i32] [i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 92, i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 83, i32 101, i32 116, i32 92, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 115, i32 92, i32 0], align 4
@.str.3 = private unnamed_addr constant [20 x i32] [i32 92, i32 80, i32 97, i32 114, i32 97, i32 109, i32 101, i32 116, i32 101, i32 114, i32 115, i32 92, i32 87, i32 105, i32 110, i32 115, i32 111, i32 99, i32 107, i32 0], align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"Error reading transport mapping registry\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i32] [i32 77, i32 97, i32 112, i32 112, i32 105, i32 110, i32 103, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SockLoadTransportMapping(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i32, i32* @GlobalHeap, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @wcslen(i8* %13)
  %15 = add nsw i32 54, %14
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = call i8* @HeapAlloc(i32 %12, i32 0, i32 %18)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @WSAEINVAL, align 4
  store i32 %24, i32* %3, align 4
  br label %82

25:                                               ; preds = %2
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @wcscpy(i8* %26, i8* bitcast ([35 x i32]* @.str.2 to i8*))
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @wcscat(i8* %28, i8* %29)
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @wcscat(i8* %31, i8* bitcast ([20 x i32]* @.str.3 to i8*))
  %33 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* @KEY_READ, align 4
  %36 = call i64 @RegOpenKeyExW(i32 %33, i8* %34, i32 0, i32 %35, i32* %7)
  store i64 %36, i64* %9, align 8
  %37 = load i32, i32* @GlobalHeap, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @HeapFree(i32 %37, i32 0, i8* %38)
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %25
  %43 = call i32 @ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %44 = load i32, i32* @WSAEINVAL, align 4
  store i32 %44, i32* %3, align 4
  br label %82

45:                                               ; preds = %25
  %46 = load i32, i32* %7, align 4
  %47 = call i64 @RegQueryValueExW(i32 %46, i8* bitcast ([8 x i32]* @.str.5 to i8*), i32* null, i32* null, i32* null, i32* %8)
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = call i32 @ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %52 = load i32, i32* @WSAEINVAL, align 4
  store i32 %52, i32* %3, align 4
  br label %82

53:                                               ; preds = %45
  %54 = load i32, i32* @GlobalHeap, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i8* @HeapAlloc(i32 %54, i32 0, i32 %55)
  %57 = load i8**, i8*** %5, align 8
  store i8* %56, i8** %57, align 8
  %58 = load i8**, i8*** %5, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @WSAEINVAL, align 4
  store i32 %63, i32* %3, align 4
  br label %82

64:                                               ; preds = %53
  %65 = load i32, i32* %7, align 4
  %66 = load i8**, i8*** %5, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = bitcast i8* %67 to i32*
  %69 = call i64 @RegQueryValueExW(i32 %65, i8* bitcast ([8 x i32]* @.str.5 to i8*), i32* null, i32* null, i32* %68, i32* %8)
  store i64 %69, i64* %9, align 8
  %70 = load i64, i64* %9, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %64
  %73 = call i32 @ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %74 = load i32, i32* @GlobalHeap, align 4
  %75 = load i8**, i8*** %5, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @HeapFree(i32 %74, i32 0, i8* %76)
  %78 = load i32, i32* @WSAEINVAL, align 4
  store i32 %78, i32* %3, align 4
  br label %82

79:                                               ; preds = %64
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @RegCloseKey(i32 %80)
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %79, %72, %61, %50, %42, %22
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @TRACE(i8*, i8*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @wcslen(i8*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @wcscpy(i8*, i8*) #1

declare dso_local i32 @wcscat(i8*, i8*) #1

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i64 @RegQueryValueExW(i32, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
