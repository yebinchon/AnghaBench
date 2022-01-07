; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor-win32.c_convert_to_unix_path.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor-win32.c_convert_to_unix_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*, i32, i64)* @convert_to_unix_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @convert_to_unix_path(i8* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i8* null, i8** %10, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = udiv i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = call i32* @win32_83_path_to_long_path(i8* %16, i32* %17, i32 %21)
  store i32* %22, i32** %11, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = load i32*, i32** %11, align 8
  %27 = call i8* @g_utf16_to_utf8(i32* %26, i32 -1, i32* null, i32* null, i32* null)
  store i8* %27, i8** %10, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @g_free(i32* %28)
  br label %37

30:                                               ; preds = %15
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = udiv i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = call i8* @g_utf16_to_utf8(i32* %31, i32 %35, i32* null, i32* null, i32* null)
  store i8* %36, i8** %10, align 8
  br label %37

37:                                               ; preds = %30, %25
  br label %45

38:                                               ; preds = %4
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = udiv i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = call i8* @g_utf16_to_utf8(i32* %39, i32 %43, i32* null, i32* null, i32* null)
  store i8* %44, i8** %10, align 8
  br label %45

45:                                               ; preds = %38, %37
  %46 = load i8*, i8** %10, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i8* null, i8** %5, align 8
  br label %69

49:                                               ; preds = %45
  %50 = load i8*, i8** %10, align 8
  store i8* %50, i8** %12, align 8
  br label %51

51:                                               ; preds = %64, %49
  %52 = load i8*, i8** %12, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load i8*, i8** %12, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 92
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i8*, i8** %12, align 8
  store i8 47, i8* %62, align 1
  br label %63

63:                                               ; preds = %61, %56
  br label %64

64:                                               ; preds = %63
  %65 = load i8*, i8** %12, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %12, align 8
  br label %51

67:                                               ; preds = %51
  %68 = load i8*, i8** %10, align 8
  store i8* %68, i8** %5, align 8
  br label %69

69:                                               ; preds = %67, %48
  %70 = load i8*, i8** %5, align 8
  ret i8* %70
}

declare dso_local i32* @win32_83_path_to_long_path(i8*, i32*, i32) #1

declare dso_local i8* @g_utf16_to_utf8(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @g_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
