; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_wal.c_walChecksumBytes.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_wal.c_walChecksumBytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32, i64*, i64*)* @walChecksumBytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walChecksumBytes(i32 %0, i32* %1, i32 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = bitcast i32* %15 to i64*
  store i64* %16, i64** %13, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = bitcast i32* %20 to i64*
  store i64* %21, i64** %14, align 8
  %22 = load i64*, i64** %9, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %5
  %25 = load i64*, i64** %9, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %11, align 8
  %28 = load i64*, i64** %9, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %12, align 8
  br label %32

31:                                               ; preds = %5
  store i64 0, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %32

32:                                               ; preds = %31, %24
  %33 = load i32, i32* %8, align 4
  %34 = icmp sge i32 %33, 8
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, 7
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = icmp sle i32 %42, 65536
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %32
  br label %49

49:                                               ; preds = %64, %48
  %50 = load i64*, i64** %13, align 8
  %51 = getelementptr inbounds i64, i64* %50, i32 1
  store i64* %51, i64** %13, align 8
  %52 = load i64, i64* %50, align 8
  %53 = load i64, i64* %12, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i64, i64* %11, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %11, align 8
  %57 = load i64*, i64** %13, align 8
  %58 = getelementptr inbounds i64, i64* %57, i32 1
  store i64* %58, i64** %13, align 8
  %59 = load i64, i64* %57, align 8
  %60 = load i64, i64* %11, align 8
  %61 = add nsw i64 %59, %60
  %62 = load i64, i64* %12, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %12, align 8
  br label %64

64:                                               ; preds = %49
  %65 = load i64*, i64** %13, align 8
  %66 = load i64*, i64** %14, align 8
  %67 = icmp ult i64* %65, %66
  br i1 %67, label %49, label %68

68:                                               ; preds = %64
  br label %94

69:                                               ; preds = %32
  br label %70

70:                                               ; preds = %89, %69
  %71 = load i64*, i64** %13, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @BYTESWAP32(i64 %73)
  %75 = load i64, i64* %12, align 8
  %76 = add nsw i64 %74, %75
  %77 = load i64, i64* %11, align 8
  %78 = add nsw i64 %77, %76
  store i64 %78, i64* %11, align 8
  %79 = load i64*, i64** %13, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 1
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @BYTESWAP32(i64 %81)
  %83 = load i64, i64* %11, align 8
  %84 = add nsw i64 %82, %83
  %85 = load i64, i64* %12, align 8
  %86 = add nsw i64 %85, %84
  store i64 %86, i64* %12, align 8
  %87 = load i64*, i64** %13, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 2
  store i64* %88, i64** %13, align 8
  br label %89

89:                                               ; preds = %70
  %90 = load i64*, i64** %13, align 8
  %91 = load i64*, i64** %14, align 8
  %92 = icmp ult i64* %90, %91
  br i1 %92, label %70, label %93

93:                                               ; preds = %89
  br label %94

94:                                               ; preds = %93, %68
  %95 = load i64, i64* %11, align 8
  %96 = load i64*, i64** %10, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 0
  store i64 %95, i64* %97, align 8
  %98 = load i64, i64* %12, align 8
  %99 = load i64*, i64** %10, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 1
  store i64 %98, i64* %100, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @BYTESWAP32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
