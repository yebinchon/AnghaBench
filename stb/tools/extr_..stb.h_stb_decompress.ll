; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_decompress.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stb__barrier2 = common dso_local global i32* null, align 8
@stb__barrier3 = common dso_local global i32* null, align 8
@stb__barrier = common dso_local global i32* null, align 8
@stb__barrier4 = common dso_local global i32* null, align 8
@stb__dout = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb_decompress(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call i32 @stb__in4(i32 0)
  %11 = icmp ne i32 %10, 1471938560
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %93

13:                                               ; preds = %3
  %14 = call i32 @stb__in4(i32 4)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %93

17:                                               ; preds = %13
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @stb_decompress_length(i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32*, i32** %6, align 8
  store i32* %20, i32** @stb__barrier2, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32* %24, i32** @stb__barrier3, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32* %28, i32** @stb__barrier, align 8
  %29 = load i32*, i32** %5, align 8
  store i32* %29, i32** @stb__barrier4, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 16
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %5, align 8
  store i32* %32, i32** @stb__dout, align 8
  br label %33

33:                                               ; preds = %17, %92
  %34 = load i32*, i32** %6, align 8
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32* @stb_decompress_token(i32* %35)
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = icmp eq i32* %37, %38
  br i1 %39, label %40, label %76

40:                                               ; preds = %33
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 5
  br i1 %43, label %44, label %74

44:                                               ; preds = %40
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 250
  br i1 %48, label %49, label %74

49:                                               ; preds = %44
  %50 = load i32*, i32** @stb__dout, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = icmp eq i32* %50, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i32*, i32** @stb__dout, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = icmp ne i32* %58, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %93

65:                                               ; preds = %49
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @stb_adler32(i32 1, i32* %66, i32 %67)
  %69 = call i32 @stb__in4(i32 2)
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %93

72:                                               ; preds = %65
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %4, align 4
  br label %93

74:                                               ; preds = %44, %40
  %75 = call i32 @assert(i32 0)
  store i32 0, i32* %4, align 4
  br label %93

76:                                               ; preds = %33
  %77 = load i32*, i32** @stb__dout, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = icmp ule i32* %77, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load i32*, i32** @stb__dout, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = icmp ugt i32* %85, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %93

92:                                               ; preds = %76
  br label %33

93:                                               ; preds = %91, %74, %72, %71, %64, %16, %12
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @stb__in4(i32) #1

declare dso_local i32 @stb_decompress_length(i32*) #1

declare dso_local i32* @stb_decompress_token(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @stb_adler32(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
