; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_dupreplace.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_dupreplace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @stb_dupreplace(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %8, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @strstr(i8* %21, i8* %22)
  store i8* %23, i8** %11, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i8*, i8** %5, align 8
  %28 = call i8* @strdup(i8* %27)
  store i8* %28, i8** %4, align 8
  br label %116

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %38, %29
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  %33 = load i8*, i8** %11, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8*, i8** %6, align 8
  %37 = call i8* @strstr(i8* %35, i8* %36)
  store i8* %37, i8** %11, align 8
  br label %38

38:                                               ; preds = %30
  %39 = load i8*, i8** %11, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %30, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = sext i32 %43 to i64
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %8, align 8
  %49 = sub i64 %47, %48
  %50 = mul i64 %46, %49
  %51 = add i64 %44, %50
  %52 = add i64 %51, 1
  %53 = trunc i64 %52 to i32
  %54 = call i64 @malloc(i32 %53)
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** %12, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %41
  %59 = load i8*, i8** %12, align 8
  store i8* %59, i8** %4, align 8
  br label %116

60:                                               ; preds = %41
  %61 = load i8*, i8** %12, align 8
  store i8* %61, i8** %13, align 8
  %62 = load i8*, i8** %5, align 8
  store i8* %62, i8** %11, align 8
  br label %63

63:                                               ; preds = %90, %60
  %64 = load i8*, i8** %11, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i8* @strstr(i8* %64, i8* %65)
  store i8* %66, i8** %14, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %90

69:                                               ; preds = %63
  %70 = load i8*, i8** %13, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = call i32 @strcpy(i8* %70, i8* %71)
  %73 = load i8*, i8** %12, align 8
  %74 = call i32 @strlen(i8* %73)
  %75 = sext i32 %74 to i64
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = sext i32 %77 to i64
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %8, align 8
  %83 = sub i64 %81, %82
  %84 = mul i64 %80, %83
  %85 = add i64 %78, %84
  %86 = icmp eq i64 %75, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load i8*, i8** %12, align 8
  store i8* %89, i8** %4, align 8
  br label %116

90:                                               ; preds = %63
  %91 = load i8*, i8** %13, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = load i8*, i8** %14, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = call i32 @memcpy(i8* %91, i8* %92, i64 %97)
  %99 = load i8*, i8** %14, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = load i8*, i8** %13, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 %103
  store i8* %105, i8** %13, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = load i64, i64* %9, align 8
  %109 = call i32 @memcpy(i8* %106, i8* %107, i64 %108)
  %110 = load i64, i64* %9, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 %110
  store i8* %112, i8** %13, align 8
  %113 = load i8*, i8** %14, align 8
  %114 = load i64, i64* %8, align 8
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  store i8* %115, i8** %11, align 8
  br label %63

116:                                              ; preds = %69, %58, %26
  %117 = load i8*, i8** %4, align 8
  ret i8* %117
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
