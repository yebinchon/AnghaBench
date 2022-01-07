; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_vlc_vaapi.c_IsVaProfileSupported.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_vlc_vaapi.c_IsVaProfileSupported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VAProfileNone = common dso_local global i64 0, align 8
@VA_STATUS_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @IsVaProfileSupported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IsVaProfileSupported(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @VAProfileNone, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %58

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @vaMaxNumProfiles(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %58

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = call i64* @calloc(i32 %22, i32 8)
  store i64* %23, i64** %7, align 8
  %24 = load i64*, i64** %7, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %58

27:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i64*, i64** %7, align 8
  %30 = call i64 @vaQueryConfigProfiles(i32 %28, i64* %29, i32* %6)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @VA_STATUS_SUCCESS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %54

35:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %50, %35
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load i64*, i64** %7, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 1, i32* %8, align 4
  br label %53

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %36

53:                                               ; preds = %48, %36
  br label %54

54:                                               ; preds = %53, %34
  %55 = load i64*, i64** %7, align 8
  %56 = call i32 @free(i64* %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %26, %20, %14
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @vaMaxNumProfiles(i32) #1

declare dso_local i64* @calloc(i32, i32) #1

declare dso_local i64 @vaQueryConfigProfiles(i32, i64*, i32*) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
