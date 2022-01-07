; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_replaceinplace.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_replaceinplace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stb_replaceinplace(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %7, align 8
  %21 = sub i64 %19, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp sle i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %85

30:                                               ; preds = %3
  %31 = load i8*, i8** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i8* @strstr(i8* %31, i8* %32)
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %85

37:                                               ; preds = %30
  %38 = load i8*, i8** %11, align 8
  store i8* %38, i8** %12, align 8
  store i8* %38, i8** %10, align 8
  br label %39

39:                                               ; preds = %65, %37
  %40 = load i8*, i8** %10, align 8
  %41 = load i8, i8* %40, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %43, label %83

43:                                               ; preds = %39
  %44 = load i8*, i8** %12, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @memcpy(i8* %44, i8* %45, i64 %46)
  %48 = load i64, i64* %7, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 %48
  store i8* %50, i8** %11, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 %51
  store i8* %53, i8** %12, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = call i8* @strstr(i8* %54, i8* %55)
  store i8* %56, i8** %10, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %43
  %60 = load i8*, i8** %11, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  store i8* %64, i8** %10, align 8
  br label %65

65:                                               ; preds = %59, %43
  %66 = load i8*, i8** %12, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = trunc i64 %72 to i32
  %74 = call i32 @memmove(i8* %66, i8* %67, i32 %73)
  %75 = load i8*, i8** %10, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = load i8*, i8** %12, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 %79
  store i8* %81, i8** %12, align 8
  %82 = load i8*, i8** %10, align 8
  store i8* %82, i8** %11, align 8
  br label %39

83:                                               ; preds = %39
  %84 = load i8*, i8** %12, align 8
  store i8 0, i8* %84, align 1
  br label %85

85:                                               ; preds = %83, %36, %29
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
