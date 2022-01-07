; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb__wildmatch_raw.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb__wildmatch_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb__wildmatch_raw(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [256 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @strchr(i8* %14, i8 signext 59)
  store i8* %15, i8** %11, align 8
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %12, align 8
  br label %17

17:                                               ; preds = %56, %4
  %18 = load i8*, i8** %11, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %61

20:                                               ; preds = %17
  %21 = load i8*, i8** %11, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = ptrtoint i8* %21 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  %26 = icmp slt i64 %25, 256
  br i1 %26, label %27, label %43

27:                                               ; preds = %20
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %29 = load i8*, i8** %12, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = add nsw i64 %34, 1
  %36 = trunc i64 %35 to i32
  %37 = call i32 @stb_strncpy(i8* %28, i8* %29, i32 %36)
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @stb__wildmatch_raw2(i8* %38, i8* %39, i32 %40, i32 %41)
  store i32 %42, i32* %13, align 4
  br label %51

43:                                               ; preds = %20
  %44 = load i8*, i8** %11, align 8
  store i8 0, i8* %44, align 1
  %45 = load i8*, i8** %12, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @stb__wildmatch_raw2(i8* %45, i8* %46, i32 %47, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i8*, i8** %11, align 8
  store i8 59, i8* %50, align 1
  br label %51

51:                                               ; preds = %43, %27
  %52 = load i32, i32* %13, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %5, align 4
  br label %67

56:                                               ; preds = %51
  %57 = load i8*, i8** %11, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8* %58, i8** %12, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = call i8* @strchr(i8* %59, i8 signext 59)
  store i8* %60, i8** %11, align 8
  br label %17

61:                                               ; preds = %17
  %62 = load i8*, i8** %12, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @stb__wildmatch_raw2(i8* %62, i8* %63, i32 %64, i32 %65)
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %61, %54
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @stb_strncpy(i8*, i8*, i32) #1

declare dso_local i32 @stb__wildmatch_raw2(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
