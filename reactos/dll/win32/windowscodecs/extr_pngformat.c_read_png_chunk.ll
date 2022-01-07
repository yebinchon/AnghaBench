; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_pngformat.c_read_png_chunk.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_pngformat.c_read_png_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_FAIL = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32**, i32*)* @read_png_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_png_chunk(i32* %0, i32* %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [8 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %15 = call i32 @IStream_Read(i32* %13, i32* %14, i32 8, i32* %12)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = call i64 @FAILED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  %21 = icmp slt i32 %20, 8
  br i1 %21, label %22, label %30

22:                                               ; preds = %19, %4
  %23 = load i32, i32* %11, align 4
  %24 = call i64 @SUCCEEDED(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @E_FAIL, align 4
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %5, align 4
  br label %81

30:                                               ; preds = %19
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %32 = call i32 @read_ulong_be(i32* %31)
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 4
  %36 = call i32 @memcpy(i32* %34, i32* %35, i32 4)
  %37 = load i32**, i32*** %8, align 8
  %38 = icmp ne i32** %37, null
  br i1 %38, label %39, label %79

39:                                               ; preds = %30
  %40 = call i32 (...) @GetProcessHeap()
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32* @HeapAlloc(i32 %40, i32 0, i32 %42)
  %44 = load i32**, i32*** %8, align 8
  store i32* %43, i32** %44, align 8
  %45 = load i32**, i32*** %8, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %49, i32* %5, align 4
  br label %81

50:                                               ; preds = %39
  %51 = load i32*, i32** %6, align 8
  %52 = load i32**, i32*** %8, align 8
  %53 = load i32*, i32** %52, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @IStream_Read(i32* %51, i32* %53, i32 %55, i32* %12)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i64 @FAILED(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %12, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %60, %50
  %66 = load i32, i32* %11, align 4
  %67 = call i64 @SUCCEEDED(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @E_FAIL, align 4
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %69, %65
  %72 = call i32 (...) @GetProcessHeap()
  %73 = load i32**, i32*** %8, align 8
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @HeapFree(i32 %72, i32 0, i32* %74)
  %76 = load i32**, i32*** %8, align 8
  store i32* null, i32** %76, align 8
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %5, align 4
  br label %81

78:                                               ; preds = %60
  br label %79

79:                                               ; preds = %78, %30
  %80 = load i32, i32* @S_OK, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %79, %71, %48, %28
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @IStream_Read(i32*, i32*, i32, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @read_ulong_be(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
