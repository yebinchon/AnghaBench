; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_....packetizerav1_obu.h_AV1_OBUSize.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_....packetizerav1_obu.h_AV1_OBUSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i64*)* @AV1_OBUSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AV1_OBUSize(i64* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i64*, i64** %5, align 8
  %10 = call i32 @AV1_OBUHasSizeField(i64* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %3
  %13 = load i64*, i64** %5, align 8
  %14 = call i32 @AV1_OBUHasExtensionField(i64* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i64, i64* %6, align 8
  %18 = icmp ult i64 %17, 2
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %58

20:                                               ; preds = %16, %12
  %21 = load i64, i64* %6, align 8
  %22 = sub i64 %21, 1
  %23 = load i64*, i64** %5, align 8
  %24 = call i32 @AV1_OBUHasExtensionField(i64* %23)
  %25 = sext i32 %24 to i64
  %26 = sub i64 %22, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %4, align 4
  br label %58

28:                                               ; preds = %3
  %29 = load i64*, i64** %5, align 8
  %30 = call i32 @AV1_OBUHasExtensionField(i64* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load i64, i64* %6, align 8
  %34 = icmp eq i64 %33, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i64*, i64** %7, align 8
  store i64 0, i64* %36, align 8
  store i32 0, i32* %4, align 4
  br label %58

37:                                               ; preds = %32
  %38 = load i64*, i64** %5, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  store i64* %39, i64** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = sub i64 %40, 1
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %37, %28
  %43 = load i64*, i64** %5, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  %45 = load i64, i64* %6, align 8
  %46 = sub i64 %45, 1
  %47 = load i64*, i64** %7, align 8
  %48 = call i32 @leb128(i64* %44, i64 %46, i64* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @INT64_C(i32 1)
  %51 = shl i32 %50, 32
  %52 = sub nsw i32 %51, 1
  %53 = icmp sgt i32 %49, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = load i64*, i64** %7, align 8
  store i64 0, i64* %55, align 8
  store i32 0, i32* %4, align 4
  br label %58

56:                                               ; preds = %42
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %54, %35, %20, %19
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @AV1_OBUHasSizeField(i64*) #1

declare dso_local i32 @AV1_OBUHasExtensionField(i64*) #1

declare dso_local i32 @leb128(i64*, i64, i64*) #1

declare dso_local i32 @INT64_C(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
