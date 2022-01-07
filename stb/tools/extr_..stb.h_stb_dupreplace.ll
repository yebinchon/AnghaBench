; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_dupreplace.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_dupreplace.c"
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
  %28 = call i8* @stb_p_strdup(i8* %27)
  store i8* %28, i8** %4, align 8
  br label %128

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
  br label %128

60:                                               ; preds = %41
  %61 = load i8*, i8** %12, align 8
  store i8* %61, i8** %13, align 8
  %62 = load i8*, i8** %5, align 8
  store i8* %62, i8** %11, align 8
  br label %63

63:                                               ; preds = %102, %60
  %64 = load i8*, i8** %11, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i8* @strstr(i8* %64, i8* %65)
  store i8* %66, i8** %14, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %102

69:                                               ; preds = %63
  %70 = load i8*, i8** %13, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @strlen(i8* %71)
  %73 = sext i32 %72 to i64
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %8, align 8
  %78 = sub i64 %76, %77
  %79 = mul i64 %75, %78
  %80 = add i64 %73, %79
  %81 = add i64 %80, 1
  %82 = trunc i64 %81 to i32
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @stb_p_strcpy_s(i8* %70, i32 %82, i8* %83)
  %85 = load i8*, i8** %12, align 8
  %86 = call i32 @strlen(i8* %85)
  %87 = sext i32 %86 to i64
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @strlen(i8* %88)
  %90 = sext i32 %89 to i64
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* %8, align 8
  %95 = sub i64 %93, %94
  %96 = mul i64 %92, %95
  %97 = add i64 %90, %96
  %98 = icmp eq i64 %87, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  %101 = load i8*, i8** %12, align 8
  store i8* %101, i8** %4, align 8
  br label %128

102:                                              ; preds = %63
  %103 = load i8*, i8** %13, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = load i8*, i8** %14, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = ptrtoint i8* %105 to i64
  %108 = ptrtoint i8* %106 to i64
  %109 = sub i64 %107, %108
  %110 = call i32 @memcpy(i8* %103, i8* %104, i64 %109)
  %111 = load i8*, i8** %14, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = ptrtoint i8* %111 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = load i8*, i8** %13, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 %115
  store i8* %117, i8** %13, align 8
  %118 = load i8*, i8** %13, align 8
  %119 = load i8*, i8** %7, align 8
  %120 = load i64, i64* %9, align 8
  %121 = call i32 @memcpy(i8* %118, i8* %119, i64 %120)
  %122 = load i64, i64* %9, align 8
  %123 = load i8*, i8** %13, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 %122
  store i8* %124, i8** %13, align 8
  %125 = load i8*, i8** %14, align 8
  %126 = load i64, i64* %8, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  store i8* %127, i8** %11, align 8
  br label %63

128:                                              ; preds = %69, %58, %26
  %129 = load i8*, i8** %4, align 8
  ret i8* %129
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @stb_p_strdup(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @stb_p_strcpy_s(i8*, i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
