; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_msft.c_ctl2_encode_string.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_msft.c_ctl2_encode_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctl2_encode_string.converted_string = internal global [260 x i8] zeroinitializer, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @ctl2_encode_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl2_encode_string(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @strlen(i8* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @memcpy(i8* getelementptr inbounds ([260 x i8], [260 x i8]* @ctl2_encode_string.converted_string, i64 0, i64 2), i8* %9, i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 255
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* getelementptr inbounds ([260 x i8], [260 x i8]* @ctl2_encode_string.converted_string, i64 0, i64 0), align 16
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 8
  %17 = and i32 %16, 255
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* getelementptr inbounds ([260 x i8], [260 x i8]* @ctl2_encode_string.converted_string, i64 0, i64 1), align 1
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 3
  br i1 %20, label %21, label %38

21:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %32, %21
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %26, %27
  %29 = add nsw i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [260 x i8], [260 x i8]* @ctl2_encode_string.converted_string, i64 0, i64 %30
  store i8 87, i8* %31, align 1
  br label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %22

35:                                               ; preds = %22
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %35, %2
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 2
  %41 = sub nsw i32 4, %40
  %42 = and i32 %41, 3
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %53, %38
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %47, %48
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [260 x i8], [260 x i8]* @ctl2_encode_string.converted_string, i64 0, i64 %51
  store i8 87, i8* %52, align 1
  br label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %6, align 4
  br label %43

56:                                               ; preds = %43
  %57 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([260 x i8], [260 x i8]* @ctl2_encode_string.converted_string, i64 0, i64 0), i8** %57, align 8
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 5
  %60 = and i32 %59, -4
  ret i32 %60
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
