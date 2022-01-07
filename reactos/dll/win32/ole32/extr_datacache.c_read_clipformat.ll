; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_datacache.c_read_clipformat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_datacache.c_read_clipformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@DV_E_CLIPFORMAT = common dso_local global i64 0, align 8
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*)* @read_clipformat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_clipformat(i32* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 (i32*, ...) @IStream_Read(i32* %12, i32* %6, i64 4, i32* %8)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @S_OK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 4
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %2
  %22 = load i64, i64* @DV_E_CLIPFORMAT, align 8
  store i64 %22, i64* %3, align 8
  br label %89

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* @S_OK, align 8
  store i64 %27, i64* %3, align 8
  br label %89

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 (i32*, ...) @IStream_Read(i32* %32, i32* %9, i64 4, i32* %8)
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @S_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ne i64 %39, 4
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %31
  %42 = load i64, i64* @DV_E_CLIPFORMAT, align 8
  store i64 %42, i64* %3, align 8
  br label %89

43:                                               ; preds = %37
  %44 = load i32, i32* %9, align 4
  %45 = load i32*, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  br label %87

46:                                               ; preds = %28
  %47 = call i32 (...) @GetProcessHeap()
  %48 = load i32, i32* %6, align 4
  %49 = call i8* @HeapAlloc(i32 %47, i32 0, i32 %48)
  store i8* %49, i8** %10, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %46
  %53 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %53, i64* %3, align 8
  br label %89

54:                                               ; preds = %46
  %55 = load i32*, i32** %4, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i64 (i32*, ...) @IStream_Read(i32* %55, i8* %56, i32 %57, i32* %8)
  store i64 %58, i64* %7, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* @S_OK, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %75, label %62

62:                                               ; preds = %54
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %75, label %66

66:                                               ; preds = %62
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %66, %62, %54
  %76 = call i32 (...) @GetProcessHeap()
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @HeapFree(i32 %76, i32 0, i8* %77)
  %79 = load i64, i64* @DV_E_CLIPFORMAT, align 8
  store i64 %79, i64* %3, align 8
  br label %89

80:                                               ; preds = %66
  %81 = load i8*, i8** %10, align 8
  %82 = call i32 @RegisterClipboardFormatA(i8* %81)
  %83 = load i32*, i32** %5, align 8
  store i32 %82, i32* %83, align 4
  %84 = call i32 (...) @GetProcessHeap()
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @HeapFree(i32 %84, i32 0, i8* %85)
  br label %87

87:                                               ; preds = %80, %43
  %88 = load i64, i64* @S_OK, align 8
  store i64 %88, i64* %3, align 8
  br label %89

89:                                               ; preds = %87, %75, %52, %41, %26, %21
  %90 = load i64, i64* %3, align 8
  ret i64 %90
}

declare dso_local i64 @IStream_Read(i32*, ...) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @RegisterClipboardFormatA(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
