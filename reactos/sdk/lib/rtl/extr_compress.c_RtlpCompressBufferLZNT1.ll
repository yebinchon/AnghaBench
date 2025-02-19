; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_compress.c_RtlpCompressBufferLZNT1.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_compress.c_RtlpCompressBufferLZNT1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATUS_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, i32, i32*, i32*)* @RtlpCompressBufferLZNT1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RtlpCompressBufferLZNT1(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %21 = load i32*, i32** %9, align 8
  store i32* %21, i32** %16, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32* %25, i32** %17, align 8
  %26 = load i32*, i32** %11, align 8
  store i32* %26, i32** %18, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32* %30, i32** %19, align 8
  br label %31

31:                                               ; preds = %53, %7
  %32 = load i32*, i32** %16, align 8
  %33 = load i32*, i32** %17, align 8
  %34 = icmp ult i32* %32, %33
  br i1 %34, label %35, label %72

35:                                               ; preds = %31
  %36 = load i32*, i32** %17, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = ptrtoint i32* %36 to i64
  %39 = ptrtoint i32* %37 to i64
  %40 = sub i64 %38, %39
  %41 = sdiv exact i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i32 @min(i32 4096, i32 %42)
  store i32 %43, i32* %20, align 4
  %44 = load i32*, i32** %18, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = load i32, i32* %20, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32*, i32** %19, align 8
  %50 = icmp ugt i32* %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %35
  %52 = load i32, i32* @STATUS_BUFFER_TOO_SMALL, align 4
  store i32 %52, i32* %8, align 4
  br label %86

53:                                               ; preds = %35
  %54 = load i32, i32* %20, align 4
  %55 = sub nsw i32 %54, 1
  %56 = or i32 12288, %55
  %57 = load i32*, i32** %18, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32*, i32** %18, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  store i32* %59, i32** %18, align 8
  %60 = load i32*, i32** %18, align 8
  %61 = load i32*, i32** %16, align 8
  %62 = load i32, i32* %20, align 4
  %63 = call i32 @memcpy(i32* %60, i32* %61, i32 %62)
  %64 = load i32, i32* %20, align 4
  %65 = load i32*, i32** %18, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %18, align 8
  %68 = load i32, i32* %20, align 4
  %69 = load i32*, i32** %16, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %16, align 8
  br label %31

72:                                               ; preds = %31
  %73 = load i32*, i32** %14, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i32*, i32** %18, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = ptrtoint i32* %76 to i64
  %79 = ptrtoint i32* %77 to i64
  %80 = sub i64 %78, %79
  %81 = sdiv exact i64 %80, 4
  %82 = trunc i64 %81 to i32
  %83 = load i32*, i32** %14, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %75, %72
  %85 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %84, %51
  %87 = load i32, i32* %8, align 4
  ret i32 %87
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
