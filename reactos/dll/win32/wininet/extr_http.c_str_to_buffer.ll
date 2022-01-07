; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_str_to_buffer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_str_to_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i8*, i32*, i64)* @str_to_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_to_buffer(i64* %0, i8* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  store i64* %0, i64** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %55

15:                                               ; preds = %4
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to i64*
  store i64* %17, i64** %11, align 8
  %18 = load i64*, i64** %6, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i64*, i64** %6, align 8
  %22 = call i32 @strlenW(i64* %21)
  store i32 %22, i32* %10, align 4
  br label %24

23:                                               ; preds = %15
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 8
  %32 = icmp ult i64 %27, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 8
  %38 = trunc i64 %37 to i32
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  store i32 %40, i32* %5, align 4
  br label %91

41:                                               ; preds = %24
  %42 = load i64*, i64** %6, align 8
  %43 = icmp ne i64* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i64*, i64** %11, align 8
  %46 = load i64*, i64** %6, align 8
  %47 = call i32 @strcpyW(i64* %45, i64* %46)
  br label %51

48:                                               ; preds = %41
  %49 = load i64*, i64** %11, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i32, i32* %10, align 4
  %53 = load i32*, i32** %8, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %54, i32* %5, align 4
  br label %91

55:                                               ; preds = %4
  %56 = load i8*, i8** %7, align 8
  store i8* %56, i8** %12, align 8
  %57 = load i64*, i64** %6, align 8
  %58 = icmp ne i64* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32, i32* @CP_ACP, align 4
  %61 = load i64*, i64** %6, align 8
  %62 = call i32 @WideCharToMultiByte(i32 %60, i32 0, i64* %61, i32 -1, i8* null, i32 0, i32* null, i32* null)
  store i32 %62, i32* %10, align 4
  br label %64

63:                                               ; preds = %55
  store i32 1, i32* %10, align 4
  br label %64

64:                                               ; preds = %63, %59
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* %10, align 4
  %71 = load i32*, i32** %8, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  store i32 %72, i32* %5, align 4
  br label %91

73:                                               ; preds = %64
  %74 = load i64*, i64** %6, align 8
  %75 = icmp ne i64* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i32, i32* @CP_ACP, align 4
  %78 = load i64*, i64** %6, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @WideCharToMultiByte(i32 %77, i32 0, i64* %78, i32 -1, i8* %79, i32 %81, i32* null, i32* null)
  br label %86

83:                                               ; preds = %73
  %84 = load i8*, i8** %12, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  store i8 0, i8* %85, align 1
  br label %86

86:                                               ; preds = %83, %76
  %87 = load i32, i32* %10, align 4
  %88 = sub nsw i32 %87, 1
  %89 = load i32*, i32** %8, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %86, %69, %51, %33
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @strlenW(i64*) #1

declare dso_local i32 @strcpyW(i64*, i64*) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i64*, i32, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
