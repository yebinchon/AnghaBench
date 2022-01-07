; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_hash_fast.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_hash_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb_hash_fast(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %159

18:                                               ; preds = %14
  %19 = load i8*, i8** %6, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = trunc i64 %20 to i32
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %49, %24
  %26 = load i32, i32* %5, align 4
  %27 = icmp sgt i32 %26, 3
  br i1 %27, label %28, label %52

28:                                               ; preds = %25
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @stb__get16(i8* %29)
  %31 = load i32, i32* %7, align 4
  %32 = add i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  %35 = call i32 @stb__get16(i8* %34)
  %36 = shl i32 %35, 11
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = shl i32 %37, 16
  %39 = load i32, i32* %7, align 4
  %40 = xor i32 %38, %39
  %41 = load i32, i32* %8, align 4
  %42 = xor i32 %40, %41
  store i32 %42, i32* %7, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 4
  store i8* %44, i8** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = lshr i32 %45, 11
  %47 = load i32, i32* %7, align 4
  %48 = add i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %28
  %50 = load i32, i32* %5, align 4
  %51 = sub nsw i32 %50, 4
  store i32 %51, i32* %5, align 4
  br label %25

52:                                               ; preds = %25
  br label %82

53:                                               ; preds = %18
  br label %54

54:                                               ; preds = %78, %53
  %55 = load i32, i32* %5, align 4
  %56 = icmp sgt i32 %55, 3
  br i1 %56, label %57, label %81

57:                                               ; preds = %54
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @stb__get16_slow(i8* %58)
  %60 = load i32, i32* %7, align 4
  %61 = add i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  %64 = call i32 @stb__get16_slow(i8* %63)
  %65 = shl i32 %64, 11
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %7, align 4
  %67 = shl i32 %66, 16
  %68 = load i32, i32* %7, align 4
  %69 = xor i32 %67, %68
  %70 = load i32, i32* %9, align 4
  %71 = xor i32 %69, %70
  store i32 %71, i32* %7, align 4
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 4
  store i8* %73, i8** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = lshr i32 %74, 11
  %76 = load i32, i32* %7, align 4
  %77 = add i32 %76, %75
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %57
  %79 = load i32, i32* %5, align 4
  %80 = sub nsw i32 %79, 4
  store i32 %80, i32* %5, align 4
  br label %54

81:                                               ; preds = %54
  br label %82

82:                                               ; preds = %81, %52
  %83 = load i32, i32* %5, align 4
  switch i32 %83, label %133 [
    i32 3, label %84
    i32 2, label %104
    i32 1, label %117
    i32 0, label %132
  ]

84:                                               ; preds = %82
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @stb__get16_slow(i8* %85)
  %87 = load i32, i32* %7, align 4
  %88 = add i32 %87, %86
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = shl i32 %89, 16
  %91 = load i32, i32* %7, align 4
  %92 = xor i32 %91, %90
  store i32 %92, i32* %7, align 4
  %93 = load i8*, i8** %6, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 2
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = shl i32 %96, 18
  %98 = load i32, i32* %7, align 4
  %99 = xor i32 %98, %97
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = lshr i32 %100, 11
  %102 = load i32, i32* %7, align 4
  %103 = add i32 %102, %101
  store i32 %103, i32* %7, align 4
  br label %133

104:                                              ; preds = %82
  %105 = load i8*, i8** %6, align 8
  %106 = call i32 @stb__get16_slow(i8* %105)
  %107 = load i32, i32* %7, align 4
  %108 = add i32 %107, %106
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = shl i32 %109, 11
  %111 = load i32, i32* %7, align 4
  %112 = xor i32 %111, %110
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = lshr i32 %113, 17
  %115 = load i32, i32* %7, align 4
  %116 = add i32 %115, %114
  store i32 %116, i32* %7, align 4
  br label %133

117:                                              ; preds = %82
  %118 = load i8*, i8** %6, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = load i32, i32* %7, align 4
  %123 = add i32 %122, %121
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = shl i32 %124, 10
  %126 = load i32, i32* %7, align 4
  %127 = xor i32 %126, %125
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = lshr i32 %128, 1
  %130 = load i32, i32* %7, align 4
  %131 = add i32 %130, %129
  store i32 %131, i32* %7, align 4
  br label %133

132:                                              ; preds = %82
  br label %133

133:                                              ; preds = %82, %132, %117, %104, %84
  %134 = load i32, i32* %7, align 4
  %135 = shl i32 %134, 3
  %136 = load i32, i32* %7, align 4
  %137 = xor i32 %136, %135
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = lshr i32 %138, 5
  %140 = load i32, i32* %7, align 4
  %141 = add i32 %140, %139
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = shl i32 %142, 4
  %144 = load i32, i32* %7, align 4
  %145 = xor i32 %144, %143
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = lshr i32 %146, 17
  %148 = load i32, i32* %7, align 4
  %149 = add i32 %148, %147
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = shl i32 %150, 25
  %152 = load i32, i32* %7, align 4
  %153 = xor i32 %152, %151
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %7, align 4
  %155 = lshr i32 %154, 6
  %156 = load i32, i32* %7, align 4
  %157 = add i32 %156, %155
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %133, %17
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @stb__get16(i8*) #1

declare dso_local i32 @stb__get16_slow(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
