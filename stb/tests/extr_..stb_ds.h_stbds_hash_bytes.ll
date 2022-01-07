; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_..stb_ds.h_stbds_hash_bytes.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_..stb_ds.h_stbds_hash_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @stbds_hash_bytes(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp eq i64 %12, 4
  br i1 %13, label %14, label %75

14:                                               ; preds = %3
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = shl i32 %22, 8
  %24 = or i32 %18, %23
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl i32 %28, 16
  %30 = or i32 %24, %29
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 3
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl i32 %34, 24
  %36 = or i32 %30, %35
  store i32 %36, i32* %9, align 4
  %37 = load i64, i64* %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = xor i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = xor i32 %42, 61
  %44 = load i32, i32* %9, align 4
  %45 = lshr i32 %44, 16
  %46 = xor i32 %43, %45
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = shl i32 %48, 3
  %50 = add i32 %47, %49
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = lshr i32 %52, 4
  %54 = xor i32 %51, %53
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = mul i32 %55, 668265261
  store i32 %56, i32* %9, align 4
  %57 = load i64, i64* %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = xor i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = lshr i32 %63, 15
  %65 = xor i32 %62, %64
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = zext i32 %66 to i64
  %68 = shl i64 %67, 16
  %69 = shl i64 %68, 16
  %70 = load i32, i32* %9, align 4
  %71 = zext i32 %70 to i64
  %72 = or i64 %69, %71
  %73 = load i64, i64* %7, align 8
  %74 = xor i64 %72, %73
  store i64 %74, i64* %4, align 8
  br label %171

75:                                               ; preds = %3
  %76 = load i64, i64* %6, align 8
  %77 = icmp eq i64 %76, 8
  br i1 %77, label %78, label %166

78:                                               ; preds = %75
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = shl i32 %86, 8
  %88 = or i32 %82, %87
  %89 = load i8*, i8** %8, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 2
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = shl i32 %92, 16
  %94 = or i32 %88, %93
  %95 = load i8*, i8** %8, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 3
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = shl i32 %98, 24
  %100 = or i32 %94, %99
  %101 = sext i32 %100 to i64
  store i64 %101, i64* %10, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 4
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = load i8*, i8** %8, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 5
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = shl i32 %109, 8
  %111 = or i32 %105, %110
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 6
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = shl i32 %115, 16
  %117 = or i32 %111, %116
  %118 = load i8*, i8** %8, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 7
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = shl i32 %121, 24
  %123 = or i32 %117, %122
  %124 = sext i32 %123 to i64
  %125 = shl i64 %124, 16
  %126 = shl i64 %125, 16
  %127 = load i64, i64* %10, align 8
  %128 = or i64 %127, %126
  store i64 %128, i64* %10, align 8
  %129 = load i64, i64* %7, align 8
  %130 = load i64, i64* %10, align 8
  %131 = xor i64 %130, %129
  store i64 %131, i64* %10, align 8
  %132 = load i64, i64* %10, align 8
  %133 = xor i64 %132, -1
  %134 = load i64, i64* %10, align 8
  %135 = shl i64 %134, 21
  %136 = add i64 %133, %135
  store i64 %136, i64* %10, align 8
  %137 = load i64, i64* %10, align 8
  %138 = call i64 @STBDS_ROTATE_RIGHT(i64 %137, i32 24)
  %139 = load i64, i64* %10, align 8
  %140 = xor i64 %139, %138
  store i64 %140, i64* %10, align 8
  %141 = load i64, i64* %10, align 8
  %142 = mul i64 %141, 265
  store i64 %142, i64* %10, align 8
  %143 = load i64, i64* %10, align 8
  %144 = call i64 @STBDS_ROTATE_RIGHT(i64 %143, i32 14)
  %145 = load i64, i64* %10, align 8
  %146 = xor i64 %145, %144
  store i64 %146, i64* %10, align 8
  %147 = load i64, i64* %7, align 8
  %148 = load i64, i64* %10, align 8
  %149 = xor i64 %148, %147
  store i64 %149, i64* %10, align 8
  %150 = load i64, i64* %10, align 8
  %151 = mul i64 %150, 21
  store i64 %151, i64* %10, align 8
  %152 = load i64, i64* %10, align 8
  %153 = call i64 @STBDS_ROTATE_RIGHT(i64 %152, i32 28)
  %154 = load i64, i64* %10, align 8
  %155 = xor i64 %154, %153
  store i64 %155, i64* %10, align 8
  %156 = load i64, i64* %10, align 8
  %157 = shl i64 %156, 31
  %158 = load i64, i64* %10, align 8
  %159 = add i64 %158, %157
  store i64 %159, i64* %10, align 8
  %160 = load i64, i64* %10, align 8
  %161 = xor i64 %160, -1
  %162 = load i64, i64* %10, align 8
  %163 = shl i64 %162, 18
  %164 = add i64 %161, %163
  store i64 %164, i64* %10, align 8
  %165 = load i64, i64* %10, align 8
  store i64 %165, i64* %4, align 8
  br label %171

166:                                              ; preds = %75
  %167 = load i8*, i8** %5, align 8
  %168 = load i64, i64* %6, align 8
  %169 = load i64, i64* %7, align 8
  %170 = call i64 @stbds_siphash_bytes(i8* %167, i64 %168, i64 %169)
  store i64 %170, i64* %4, align 8
  br label %171

171:                                              ; preds = %166, %78, %14
  %172 = load i64, i64* %4, align 8
  ret i64 %172
}

declare dso_local i64 @STBDS_ROTATE_RIGHT(i64, i32) #1

declare dso_local i64 @stbds_siphash_bytes(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
