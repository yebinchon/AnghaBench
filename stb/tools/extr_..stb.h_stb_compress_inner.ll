; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_compress_inner.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_compress_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stb__hashsize = common dso_local global i32 0, align 4
@stb__window = common dso_local global i32 0, align 4
@stb__running_adler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @stb_compress_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb_compress_inner(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @stb__hashsize, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 8
  %13 = trunc i64 %12 to i32
  %14 = call i64 @malloc(i32 %13)
  %15 = inttoptr i64 %14 to i32**
  store i32** %15, i32*** %9, align 8
  %16 = load i32**, i32*** %9, align 8
  %17 = icmp eq i32** %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

19:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %29, %19
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @stb__hashsize, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load i32**, i32*** %9, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %20

32:                                               ; preds = %20
  %33 = call i32 @stb_out(i32 87)
  %34 = call i32 @stb_out(i32 188)
  %35 = call i32 @stb_out2(i32 0)
  %36 = call i32 @stb_out4(i32 0)
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @stb_out4(i32 %37)
  %39 = load i32, i32* @stb__window, align 4
  %40 = call i32 @stb_out4(i32 %39)
  store i32 1, i32* @stb__running_adler, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %5, align 4
  %48 = load i32**, i32*** %9, align 8
  %49 = load i32, i32* @stb__hashsize, align 4
  %50 = sub nsw i32 %49, 1
  %51 = call i32 @stb_compress_chunk(i32* %41, i32* %42, i32* %46, i32 %47, i32* %6, i32** %48, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 0, %62
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @outliterals(i32* %64, i32 %65)
  %67 = load i32**, i32*** %9, align 8
  %68 = call i32 @free(i32** %67)
  %69 = call i32 @stb_out2(i32 1530)
  %70 = load i32, i32* @stb__running_adler, align 4
  %71 = call i32 @stb_out4(i32 %70)
  store i32 1, i32* %3, align 4
  br label %72

72:                                               ; preds = %32, %18
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @stb_out(i32) #1

declare dso_local i32 @stb_out2(i32) #1

declare dso_local i32 @stb_out4(i32) #1

declare dso_local i32 @stb_compress_chunk(i32*, i32*, i32*, i32, i32*, i32**, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @outliterals(i32*, i32) #1

declare dso_local i32 @free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
