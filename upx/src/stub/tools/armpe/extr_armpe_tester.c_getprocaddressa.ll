; ModuleID = '/home/carl/AnghaBench/upx/src/stub/tools/armpe/extr_armpe_tester.c_getprocaddressa.c'
source_filename = "/home/carl/AnghaBench/upx/src/stub/tools/armpe/extr_armpe_tester.c_getprocaddressa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"getprocaddressa called %c%c%c, ordinal %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"getprocaddressa called %c%c%c, name %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @getprocaddressa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getprocaddressa(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ult i32 %9, 65536
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = lshr i32 %13, 8
  %15 = load i32, i32* %4, align 4
  %16 = lshr i32 %15, 16
  %17 = load i32, i32* %6, align 4
  %18 = call i32 (i8*, i32, i32, i32, ...) @print(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %14, i32 %16, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %6, align 4
  %21 = mul i32 %20, 65536
  %22 = add i32 %19, %21
  store i32 %22, i32* %3, align 4
  br label %44

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = lshr i32 %25, 8
  %27 = load i32, i32* %4, align 4
  %28 = lshr i32 %27, 16
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 (i8*, i32, i32, i32, ...) @print(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %26, i32 %28, i8* %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = mul nsw i32 %35, 65536
  %37 = add i32 %31, %36
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = mul nsw i32 %41, 16777216
  %43 = add i32 %37, %42
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %23, %11
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @print(i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
