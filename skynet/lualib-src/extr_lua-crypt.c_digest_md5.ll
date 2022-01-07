; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-crypt.c_digest_md5.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-crypt.c_digest_md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@k = common dso_local global i64* null, align 8
@r = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*)* @digest_md5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @digest_md5(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  store i64 1732584193, i64* %5, align 8
  store i64 4023233417, i64* %6, align 8
  store i64 2562383102, i64* %7, align 8
  store i64 271733878, i64* %8, align 8
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %101, %2
  %14 = load i32, i32* %12, align 4
  %15 = icmp slt i32 %14, 64
  br i1 %15, label %16, label %104

16:                                               ; preds = %13
  %17 = load i32, i32* %12, align 4
  %18 = icmp slt i32 %17, 16
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = and i64 %20, %21
  %23 = load i64, i64* %6, align 8
  %24 = xor i64 %23, -1
  %25 = load i64, i64* %8, align 8
  %26 = and i64 %24, %25
  %27 = or i64 %22, %26
  store i64 %27, i64* %9, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %10, align 8
  br label %74

30:                                               ; preds = %16
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 32
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %6, align 8
  %36 = and i64 %34, %35
  %37 = load i64, i64* %8, align 8
  %38 = xor i64 %37, -1
  %39 = load i64, i64* %7, align 8
  %40 = and i64 %38, %39
  %41 = or i64 %36, %40
  store i64 %41, i64* %9, align 8
  %42 = load i32, i32* %12, align 4
  %43 = mul nsw i32 5, %42
  %44 = add nsw i32 %43, 1
  %45 = srem i32 %44, 16
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %10, align 8
  br label %73

47:                                               ; preds = %30
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 48
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = xor i64 %51, %52
  %54 = load i64, i64* %8, align 8
  %55 = xor i64 %53, %54
  store i64 %55, i64* %9, align 8
  %56 = load i32, i32* %12, align 4
  %57 = mul nsw i32 3, %56
  %58 = add nsw i32 %57, 5
  %59 = srem i32 %58, 16
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %10, align 8
  br label %72

61:                                               ; preds = %47
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* %8, align 8
  %65 = xor i64 %64, -1
  %66 = or i64 %63, %65
  %67 = xor i64 %62, %66
  store i64 %67, i64* %9, align 8
  %68 = load i32, i32* %12, align 4
  %69 = mul nsw i32 7, %68
  %70 = srem i32 %69, 16
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %10, align 8
  br label %72

72:                                               ; preds = %61, %50
  br label %73

73:                                               ; preds = %72, %33
  br label %74

74:                                               ; preds = %73, %19
  %75 = load i64, i64* %8, align 8
  store i64 %75, i64* %11, align 8
  %76 = load i64, i64* %7, align 8
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* %6, align 8
  store i64 %77, i64* %7, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* %5, align 8
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %79, %80
  %82 = load i64*, i64** @k, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %81, %86
  %88 = load i64*, i64** %3, align 8
  %89 = load i64, i64* %10, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %87, %91
  %93 = load i32*, i32** @r, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @LEFTROTATE(i64 %92, i32 %97)
  %99 = add i64 %78, %98
  store i64 %99, i64* %6, align 8
  %100 = load i64, i64* %11, align 8
  store i64 %100, i64* %5, align 8
  br label %101

101:                                              ; preds = %74
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %13

104:                                              ; preds = %13
  %105 = load i64, i64* %5, align 8
  %106 = load i64*, i64** %4, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  store i64 %105, i64* %107, align 8
  %108 = load i64, i64* %6, align 8
  %109 = load i64*, i64** %4, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 1
  store i64 %108, i64* %110, align 8
  %111 = load i64, i64* %7, align 8
  %112 = load i64*, i64** %4, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 2
  store i64 %111, i64* %113, align 8
  %114 = load i64, i64* %8, align 8
  %115 = load i64*, i64** %4, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 3
  store i64 %114, i64* %116, align 8
  ret void
}

declare dso_local i64 @LEFTROTATE(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
