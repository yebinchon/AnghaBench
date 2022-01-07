; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_string.c_ME_ToUnicode.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_string.c_ME_ToUnicode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CP_UNICODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ME_ToUnicode(i64 %0, i32* %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load i8**, i8*** %7, align 8
  store i8* null, i8** %10, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %48

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @CP_UNICODE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32*, i32** %6, align 8
  %20 = call i8* @lstrlenW(i32* %19)
  %21 = load i8**, i8*** %7, align 8
  store i8* %20, i8** %21, align 8
  %22 = load i32*, i32** %6, align 8
  store i32* %22, i32** %4, align 8
  br label %48

23:                                               ; preds = %14
  %24 = load i64, i64* %5, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i8* @MultiByteToWideChar(i64 %24, i32 0, i32* %25, i32 -1, i32* null, i32 0)
  %27 = ptrtoint i8* %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  store i32* null, i32** %4, align 8
  br label %48

31:                                               ; preds = %23
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = call i32* @heap_alloc(i32 %35)
  store i32* %36, i32** %8, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load i64, i64* %5, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i8* @MultiByteToWideChar(i64 %39, i32 0, i32* %40, i32 -1, i32* %41, i32 %42)
  %44 = getelementptr i8, i8* %43, i64 -1
  %45 = load i8**, i8*** %7, align 8
  store i8* %44, i8** %45, align 8
  br label %46

46:                                               ; preds = %38, %31
  %47 = load i32*, i32** %8, align 8
  store i32* %47, i32** %4, align 8
  br label %48

48:                                               ; preds = %46, %30, %18, %13
  %49 = load i32*, i32** %4, align 8
  ret i32* %49
}

declare dso_local i8* @lstrlenW(i32*) #1

declare dso_local i8* @MultiByteToWideChar(i64, i32, i32*, i32, i32*, i32) #1

declare dso_local i32* @heap_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
