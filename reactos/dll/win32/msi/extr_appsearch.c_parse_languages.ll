; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_appsearch.c_parse_languages.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_appsearch.c_parse_languages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64*, i32*)* @parse_languages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_languages(i64* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  store i64* %0, i64** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 1, i32* %7, align 4
  %12 = load i64*, i64** %4, align 8
  %13 = call i64* @strdupW(i64* %12)
  store i64* %13, i64** %8, align 8
  %14 = load i64*, i64** %8, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %72

17:                                               ; preds = %2
  %18 = load i64*, i64** %8, align 8
  store i64* %18, i64** %10, align 8
  store i64* %18, i64** %9, align 8
  br label %19

19:                                               ; preds = %26, %17
  %20 = load i64*, i64** %10, align 8
  %21 = call i64* @strchrW(i64* %20, i8 signext 44)
  store i64* %21, i64** %10, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %23
  %27 = load i64*, i64** %10, align 8
  %28 = getelementptr inbounds i64, i64* %27, i32 1
  store i64* %28, i64** %10, align 8
  br label %19

29:                                               ; preds = %19
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = call i32* @msi_alloc(i32 %33)
  store i32* %34, i32** %11, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i64*, i64** %8, align 8
  %38 = call i32 @msi_free(i64* %37)
  store i32* null, i32** %3, align 8
  br label %72

39:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %61, %39
  %41 = load i64*, i64** %9, align 8
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %40
  %45 = load i64*, i64** %9, align 8
  %46 = call i64* @strchrW(i64* %45, i8 signext 44)
  store i64* %46, i64** %10, align 8
  %47 = load i64*, i64** %10, align 8
  %48 = icmp ne i64* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i64*, i64** %10, align 8
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %49, %44
  %52 = load i64*, i64** %9, align 8
  %53 = call i32 @atoiW(i64* %52)
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %57, align 4
  %58 = load i64*, i64** %10, align 8
  %59 = icmp ne i64* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %51
  br label %66

61:                                               ; preds = %51
  %62 = load i64*, i64** %10, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 1
  store i64* %63, i64** %9, align 8
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %40

66:                                               ; preds = %60, %40
  %67 = load i64*, i64** %8, align 8
  %68 = call i32 @msi_free(i64* %67)
  %69 = load i32, i32* %7, align 4
  %70 = load i32*, i32** %5, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32*, i32** %11, align 8
  store i32* %71, i32** %3, align 8
  br label %72

72:                                               ; preds = %66, %36, %16
  %73 = load i32*, i32** %3, align 8
  ret i32* %73
}

declare dso_local i64* @strdupW(i64*) #1

declare dso_local i64* @strchrW(i64*, i8 signext) #1

declare dso_local i32* @msi_alloc(i32) #1

declare dso_local i32 @msi_free(i64*) #1

declare dso_local i32 @atoiW(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
