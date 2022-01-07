; ModuleID = '/home/carl/AnghaBench/redis/src/extr_memtest.c_memtest_preserving_test.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_memtest.c_memtest_preserving_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEMTEST_BACKUP_WORDS = common dso_local global i32 0, align 4
@MEMTEST_DECACHE_SIZE = common dso_local global i64 0, align 8
@ULONG_ONEZERO = common dso_local global i32 0, align 4
@ULONG_ZEROONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memtest_preserving_test(i64* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* @MEMTEST_BACKUP_WORDS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i64, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load i64*, i64** %5, align 8
  store i64* %21, i64** %10, align 8
  %22 = load i64*, i64** %5, align 8
  %23 = bitcast i64* %22 to i8*
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @MEMTEST_DECACHE_SIZE, align 8
  %26 = sub i64 %24, %25
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = bitcast i8* %27 to i64*
  store i64* %28, i64** %11, align 8
  %29 = load i64, i64* %6, align 8
  store i64 %29, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %30 = load i64, i64* %6, align 8
  %31 = and i64 %30, 4095
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %172

34:                                               ; preds = %3
  %35 = load i64, i64* %6, align 8
  %36 = icmp ult i64 %35, 8192
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %172

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %159, %38
  %40 = load i64, i64* %12, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %170

42:                                               ; preds = %39
  %43 = load i64, i64* %12, align 8
  %44 = icmp eq i64 %43, 4096
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i64, i64* %12, align 8
  %47 = add i64 %46, 4096
  store i64 %47, i64* %12, align 8
  %48 = load i64*, i64** %10, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 -512
  store i64* %49, i64** %10, align 8
  br label %50

50:                                               ; preds = %45, %42
  store i32 0, i32* %15, align 4
  %51 = load i64, i64* %12, align 8
  %52 = mul nuw i64 8, %18
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = mul nuw i64 8, %18
  br label %58

56:                                               ; preds = %50
  %57 = load i64, i64* %12, align 8
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i64 [ %55, %54 ], [ %57, %56 ]
  store i64 %59, i64* %16, align 8
  %60 = load i64, i64* %16, align 8
  %61 = udiv i64 %60, 4096
  %62 = urem i64 %61, 2
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i64, i64* %16, align 8
  %66 = sub i64 %65, 4096
  store i64 %66, i64* %16, align 8
  br label %67

67:                                               ; preds = %64, %58
  %68 = load i64*, i64** %10, align 8
  %69 = load i64, i64* %16, align 8
  %70 = call i32 @memcpy(i64* %20, i64* %68, i64 %69)
  br label %71

71:                                               ; preds = %150, %67
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %159

75:                                               ; preds = %71
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %15, align 4
  %78 = load i64*, i64** %10, align 8
  %79 = load i64, i64* %16, align 8
  %80 = call i64 @memtest_addressing(i64* %78, i64 %79, i32 0)
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %13, align 4
  %85 = load i64*, i64** %10, align 8
  %86 = load i64, i64* %16, align 8
  %87 = call i32 @memtest_fill_random(i64* %85, i64 %86, i32 0)
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* @MEMTEST_DECACHE_SIZE, align 8
  %90 = icmp uge i64 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %75
  %92 = load i64*, i64** %5, align 8
  %93 = load i64, i64* @MEMTEST_DECACHE_SIZE, align 8
  %94 = load i32, i32* %15, align 4
  %95 = call i64 @memtest_compare_times(i64* %92, i64 %93, i32 %94, i32 1, i32 0)
  %96 = load i64*, i64** %11, align 8
  %97 = load i64, i64* @MEMTEST_DECACHE_SIZE, align 8
  %98 = load i32, i32* %15, align 4
  %99 = call i64 @memtest_compare_times(i64* %96, i64 %97, i32 %98, i32 1, i32 0)
  br label %100

100:                                              ; preds = %91, %75
  %101 = load i64*, i64** %10, align 8
  %102 = load i64, i64* %16, align 8
  %103 = load i32, i32* %15, align 4
  %104 = call i64 @memtest_compare_times(i64* %101, i64 %102, i32 %103, i32 4, i32 0)
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %106, %104
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %13, align 4
  %109 = load i64*, i64** %10, align 8
  %110 = load i64, i64* %16, align 8
  %111 = call i32 @memtest_fill_value(i64* %109, i64 %110, i32 0, i64 -1, i8 signext 83, i32 0)
  %112 = load i64, i64* %6, align 8
  %113 = load i64, i64* @MEMTEST_DECACHE_SIZE, align 8
  %114 = icmp uge i64 %112, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %100
  %116 = load i64*, i64** %5, align 8
  %117 = load i64, i64* @MEMTEST_DECACHE_SIZE, align 8
  %118 = load i32, i32* %15, align 4
  %119 = call i64 @memtest_compare_times(i64* %116, i64 %117, i32 %118, i32 1, i32 0)
  %120 = load i64*, i64** %11, align 8
  %121 = load i64, i64* @MEMTEST_DECACHE_SIZE, align 8
  %122 = load i32, i32* %15, align 4
  %123 = call i64 @memtest_compare_times(i64* %120, i64 %121, i32 %122, i32 1, i32 0)
  br label %124

124:                                              ; preds = %115, %100
  %125 = load i64*, i64** %10, align 8
  %126 = load i64, i64* %16, align 8
  %127 = load i32, i32* %15, align 4
  %128 = call i64 @memtest_compare_times(i64* %125, i64 %126, i32 %127, i32 4, i32 0)
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %13, align 4
  %133 = load i64*, i64** %10, align 8
  %134 = load i64, i64* %16, align 8
  %135 = load i32, i32* @ULONG_ONEZERO, align 4
  %136 = load i64, i64* @ULONG_ZEROONE, align 8
  %137 = call i32 @memtest_fill_value(i64* %133, i64 %134, i32 %135, i64 %136, i8 signext 67, i32 0)
  %138 = load i64, i64* %6, align 8
  %139 = load i64, i64* @MEMTEST_DECACHE_SIZE, align 8
  %140 = icmp uge i64 %138, %139
  br i1 %140, label %141, label %150

141:                                              ; preds = %124
  %142 = load i64*, i64** %5, align 8
  %143 = load i64, i64* @MEMTEST_DECACHE_SIZE, align 8
  %144 = load i32, i32* %15, align 4
  %145 = call i64 @memtest_compare_times(i64* %142, i64 %143, i32 %144, i32 1, i32 0)
  %146 = load i64*, i64** %11, align 8
  %147 = load i64, i64* @MEMTEST_DECACHE_SIZE, align 8
  %148 = load i32, i32* %15, align 4
  %149 = call i64 @memtest_compare_times(i64* %146, i64 %147, i32 %148, i32 1, i32 0)
  br label %150

150:                                              ; preds = %141, %124
  %151 = load i64*, i64** %10, align 8
  %152 = load i64, i64* %16, align 8
  %153 = load i32, i32* %15, align 4
  %154 = call i64 @memtest_compare_times(i64* %151, i64 %152, i32 %153, i32 4, i32 0)
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %156, %154
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %13, align 4
  br label %71

159:                                              ; preds = %71
  %160 = load i64*, i64** %10, align 8
  %161 = load i64, i64* %16, align 8
  %162 = call i32 @memcpy(i64* %160, i64* %20, i64 %161)
  %163 = load i64, i64* %16, align 8
  %164 = load i64, i64* %12, align 8
  %165 = sub i64 %164, %163
  store i64 %165, i64* %12, align 8
  %166 = load i64, i64* %16, align 8
  %167 = udiv i64 %166, 8
  %168 = load i64*, i64** %10, align 8
  %169 = getelementptr inbounds i64, i64* %168, i64 %167
  store i64* %169, i64** %10, align 8
  br label %39

170:                                              ; preds = %39
  %171 = load i32, i32* %13, align 4
  store i32 %171, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %172

172:                                              ; preds = %170, %37, %33
  %173 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %173)
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #2

declare dso_local i64 @memtest_addressing(i64*, i64, i32) #2

declare dso_local i32 @memtest_fill_random(i64*, i64, i32) #2

declare dso_local i64 @memtest_compare_times(i64*, i64, i32, i32, i32) #2

declare dso_local i32 @memtest_fill_value(i64*, i64, i32, i64, i8 signext, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
