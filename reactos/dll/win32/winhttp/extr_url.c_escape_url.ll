; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_url.c_escape_url.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_url.c_escape_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64*, i32*)* @escape_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @escape_url(i64* %0, i32* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i64*, i64** %4, align 8
  %10 = call i64* @strrchrW(i64* %9, i8 signext 47)
  store i64* %10, i64** %8, align 8
  store i64* %10, i64** %7, align 8
  %11 = icmp ne i64* %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %26, %12
  %14 = load i64*, i64** %8, align 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load i64*, i64** %8, align 8
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @need_escape(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 2
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i64*, i64** %8, align 8
  %28 = getelementptr inbounds i64, i64* %27, i32 1
  store i64* %28, i64** %8, align 8
  br label %13

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = call i64* @heap_alloc(i32 %36)
  store i64* %37, i64** %6, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  store i64* null, i64** %3, align 8
  br label %78

40:                                               ; preds = %30
  %41 = load i64*, i64** %7, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i64*, i64** %6, align 8
  %45 = load i64*, i64** %4, align 8
  %46 = call i32 @strcpyW(i64* %44, i64* %45)
  br label %76

47:                                               ; preds = %40
  %48 = load i64*, i64** %6, align 8
  %49 = load i64*, i64** %4, align 8
  %50 = load i64*, i64** %7, align 8
  %51 = load i64*, i64** %4, align 8
  %52 = ptrtoint i64* %50 to i64
  %53 = ptrtoint i64* %51 to i64
  %54 = sub i64 %52, %53
  %55 = sdiv exact i64 %54, 8
  %56 = mul i64 %55, 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @memcpy(i64* %48, i64* %49, i32 %57)
  %59 = load i64*, i64** %6, align 8
  %60 = load i64*, i64** %7, align 8
  %61 = load i64*, i64** %4, align 8
  %62 = ptrtoint i64* %60 to i64
  %63 = ptrtoint i64* %61 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 8
  %66 = getelementptr inbounds i64, i64* %59, i64 %65
  %67 = load i64*, i64** %7, align 8
  %68 = load i64*, i64** %8, align 8
  %69 = load i64*, i64** %7, align 8
  %70 = ptrtoint i64* %68 to i64
  %71 = ptrtoint i64* %69 to i64
  %72 = sub i64 %70, %71
  %73 = sdiv exact i64 %72, 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @copy_escape(i64* %66, i64* %67, i32 %74)
  br label %76

76:                                               ; preds = %47, %43
  %77 = load i64*, i64** %6, align 8
  store i64* %77, i64** %3, align 8
  br label %78

78:                                               ; preds = %76, %39
  %79 = load i64*, i64** %3, align 8
  ret i64* %79
}

declare dso_local i64* @strrchrW(i64*, i8 signext) #1

declare dso_local i64 @need_escape(i64) #1

declare dso_local i64* @heap_alloc(i32) #1

declare dso_local i32 @strcpyW(i64*, i64*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @copy_escape(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
