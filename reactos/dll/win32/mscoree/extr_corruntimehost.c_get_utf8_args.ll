; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mscoree/extr_corruntimehost.c_get_utf8_args.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mscoree/extr_corruntimehost.c_get_utf8_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CP_UTF8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8***)* @get_utf8_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_utf8_args(i32* %0, i8*** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8***, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8*** %1, i8**** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = call i32 (...) @GetCommandLineW()
  %10 = load i32*, i32** %3, align 8
  %11 = call i32** @CommandLineToArgvW(i32 %9, i32* %10)
  store i32** %11, i32*** %5, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %33, %2
  %13 = load i32, i32* %7, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = add i64 %19, 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @CP_UTF8, align 4
  %23 = load i32**, i32*** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @WideCharToMultiByte(i32 %22, i32 0, i32* %27, i32 -1, i8* null, i32 0, i32* null, i32* null)
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %17
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %12

36:                                               ; preds = %12
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %38, 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %6, align 4
  %41 = call i32 (...) @GetProcessHeap()
  %42 = load i32, i32* %6, align 4
  %43 = call i8** @HeapAlloc(i32 %41, i32 0, i32 %42)
  %44 = load i8***, i8**** %4, align 8
  store i8** %43, i8*** %44, align 8
  %45 = load i8***, i8**** %4, align 8
  %46 = load i8**, i8*** %45, align 8
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %46, i64 %49
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  %52 = bitcast i8** %51 to i8*
  store i8* %52, i8** %8, align 8
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %76, %36
  %54 = load i32, i32* %7, align 4
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %53
  %59 = load i8*, i8** %8, align 8
  %60 = load i8***, i8**** %4, align 8
  %61 = load i8**, i8*** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  store i8* %59, i8** %64, align 8
  %65 = load i32, i32* @CP_UTF8, align 4
  %66 = load i32**, i32*** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i64 @WideCharToMultiByte(i32 %65, i32 0, i32* %70, i32 -1, i8* %71, i32 %72, i32* null, i32* null)
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 %73
  store i8* %75, i8** %8, align 8
  br label %76

76:                                               ; preds = %58
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %53

79:                                               ; preds = %53
  %80 = load i8***, i8**** %4, align 8
  %81 = load i8**, i8*** %80, align 8
  %82 = load i32*, i32** %3, align 8
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %81, i64 %84
  store i8* null, i8** %85, align 8
  %86 = call i32 (...) @GetProcessHeap()
  %87 = load i32**, i32*** %5, align 8
  %88 = call i32 @HeapFree(i32 %86, i32 0, i32** %87)
  ret void
}

declare dso_local i32** @CommandLineToArgvW(i32, i32*) #1

declare dso_local i32 @GetCommandLineW(...) #1

declare dso_local i64 @WideCharToMultiByte(i32, i32, i32*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i8** @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
