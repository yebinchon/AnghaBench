; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_crypt-sha2.c_transform256.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_crypt-sha2.c_transform256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA256_K = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @transform256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transform256(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [16 x i32], align 16
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** @SHA256_K, align 8
  store i32* %9, i32** %5, align 8
  %10 = call i32 (...) @isbigendian()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %27, %12
  %14 = load i32, i32* %8, align 4
  %15 = icmp ult i32 %14, 16
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %8, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bswap32(i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %22, i32* %26, align 4
  br label %27

27:                                               ; preds = %16
  %28 = load i32, i32* %8, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %13

30:                                               ; preds = %13
  br label %31

31:                                               ; preds = %30, %2
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @memcpy(i32* %32, i32* %33, i32 32)
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %55, %31
  %36 = load i32, i32* %8, align 4
  %37 = icmp ult i32 %36, 64
  br i1 %37, label %38, label %58

38:                                               ; preds = %35
  %39 = call i32 @R(i32 0)
  %40 = call i32 @R(i32 1)
  %41 = call i32 @R(i32 2)
  %42 = call i32 @R(i32 3)
  %43 = call i32 @R(i32 4)
  %44 = call i32 @R(i32 5)
  %45 = call i32 @R(i32 6)
  %46 = call i32 @R(i32 7)
  %47 = call i32 @R(i32 8)
  %48 = call i32 @R(i32 9)
  %49 = call i32 @R(i32 10)
  %50 = call i32 @R(i32 11)
  %51 = call i32 @R(i32 12)
  %52 = call i32 @R(i32 13)
  %53 = call i32 @R(i32 14)
  %54 = call i32 @R(i32 15)
  br label %55

55:                                               ; preds = %38
  %56 = load i32, i32* %8, align 4
  %57 = add i32 %56, 16
  store i32 %57, i32* %8, align 4
  br label %35

58:                                               ; preds = %35
  %59 = call i64 @a(i32 0)
  %60 = load i32*, i32** %3, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = zext i32 %62 to i64
  %64 = add nsw i64 %63, %59
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 4
  %66 = call i64 @b(i32 0)
  %67 = load i32*, i32** %3, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = zext i32 %69 to i64
  %71 = add nsw i64 %70, %66
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %68, align 4
  %73 = call i64 @c(i32 0)
  %74 = load i32*, i32** %3, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = zext i32 %76 to i64
  %78 = add nsw i64 %77, %73
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 4
  %80 = call i64 @d(i32 0)
  %81 = load i32*, i32** %3, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  %83 = load i32, i32* %82, align 4
  %84 = zext i32 %83 to i64
  %85 = add nsw i64 %84, %80
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 4
  %87 = call i64 @e(i32 0)
  %88 = load i32*, i32** %3, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 4
  %90 = load i32, i32* %89, align 4
  %91 = zext i32 %90 to i64
  %92 = add nsw i64 %91, %87
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %89, align 4
  %94 = call i64 @f(i32 0)
  %95 = load i32*, i32** %3, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 5
  %97 = load i32, i32* %96, align 4
  %98 = zext i32 %97 to i64
  %99 = add nsw i64 %98, %94
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %96, align 4
  %101 = call i64 @g(i32 0)
  %102 = load i32*, i32** %3, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 6
  %104 = load i32, i32* %103, align 4
  %105 = zext i32 %104 to i64
  %106 = add nsw i64 %105, %101
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %103, align 4
  %108 = call i64 @h(i32 0)
  %109 = load i32*, i32** %3, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 7
  %111 = load i32, i32* %110, align 4
  %112 = zext i32 %111 to i64
  %113 = add nsw i64 %112, %108
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %110, align 4
  ret void
}

declare dso_local i32 @isbigendian(...) #1

declare dso_local i32 @bswap32(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @R(i32) #1

declare dso_local i64 @a(i32) #1

declare dso_local i64 @b(i32) #1

declare dso_local i64 @c(i32) #1

declare dso_local i64 @d(i32) #1

declare dso_local i64 @e(i32) #1

declare dso_local i64 @f(i32) #1

declare dso_local i64 @g(i32) #1

declare dso_local i64 @h(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
