; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_ftp.c_FTP_ParseDirectory.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_ftp.c_FTP_ParseDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@ERROR_NO_MORE_FILES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i32, i32**, i32*)* @FTP_ParseDirectory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @FTP_ParseDirectory(i32* %0, i32 %1, i32 %2, i32** %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32** %3, i32*** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i64, i64* @TRUE, align 8
  store i64 %17, i64* %12, align 8
  store i32 500, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %13, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 4, %20
  %22 = trunc i64 %21 to i32
  %23 = call i32* @heap_alloc_zero(i32 %22)
  %24 = load i32**, i32*** %10, align 8
  store i32* %23, i32** %24, align 8
  %25 = load i32**, i32*** %10, align 8
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %5
  %29 = load i64, i64* @FALSE, align 8
  store i64 %29, i64* %6, align 8
  br label %103

30:                                               ; preds = %5
  br label %31

31:                                               ; preds = %56, %30
  %32 = load i32, i32* %14, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* %13, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %31
  %37 = load i32, i32* %13, align 4
  %38 = mul nsw i32 %37, 2
  store i32 %38, i32* %13, align 4
  %39 = load i32**, i32*** %10, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 4, %42
  %44 = trunc i64 %43 to i32
  %45 = call i32* @heap_realloc_zero(i32* %40, i32 %44)
  store i32* %45, i32** %15, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = icmp eq i32* null, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = load i64, i64* @FALSE, align 8
  store i64 %49, i64* %12, align 8
  br label %66

50:                                               ; preds = %36
  %51 = load i32*, i32** %15, align 8
  %52 = load i32**, i32*** %10, align 8
  store i32* %51, i32** %52, align 8
  br label %53

53:                                               ; preds = %50, %31
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32**, i32*** %10, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = call i64 @FTP_ParseNextFile(i32 %57, i32 %58, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %31, label %66

66:                                               ; preds = %56, %48
  %67 = load i64, i64* %12, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %94

69:                                               ; preds = %66
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %69
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %13, align 4
  %75 = sub nsw i32 %74, 1
  %76 = icmp slt i32 %73, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %72
  %78 = load i32**, i32*** %10, align 8
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 4, %81
  %83 = trunc i64 %82 to i32
  %84 = call i32* @heap_realloc(i32* %79, i32 %83)
  store i32* %84, i32** %16, align 8
  %85 = load i32*, i32** %16, align 8
  %86 = icmp ne i32* null, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %77
  %88 = load i32*, i32** %16, align 8
  %89 = load i32**, i32*** %10, align 8
  store i32* %88, i32** %89, align 8
  br label %90

90:                                               ; preds = %87, %77
  br label %91

91:                                               ; preds = %90, %72
  %92 = load i32, i32* %14, align 4
  %93 = load i32*, i32** %11, align 8
  store i32 %92, i32* %93, align 4
  br label %101

94:                                               ; preds = %69, %66
  %95 = load i32**, i32*** %10, align 8
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @heap_free(i32* %96)
  %98 = load i32, i32* @ERROR_NO_MORE_FILES, align 4
  %99 = call i32 @INTERNET_SetLastError(i32 %98)
  %100 = load i64, i64* @FALSE, align 8
  store i64 %100, i64* %12, align 8
  br label %101

101:                                              ; preds = %94, %91
  %102 = load i64, i64* %12, align 8
  store i64 %102, i64* %6, align 8
  br label %103

103:                                              ; preds = %101, %28
  %104 = load i64, i64* %6, align 8
  ret i64 %104
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32* @heap_alloc_zero(i32) #1

declare dso_local i32* @heap_realloc_zero(i32*, i32) #1

declare dso_local i64 @FTP_ParseNextFile(i32, i32, i32*) #1

declare dso_local i32* @heap_realloc(i32*, i32) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i32 @INTERNET_SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
