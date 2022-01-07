; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/regtests2xml/extr_regtests2xml.c_read_until.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/regtests2xml/extr_regtests2xml.c_read_until.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@file_pointer = common dso_local global i64 0, align 8
@file_size = common dso_local global i64 0, align 8
@file_buffer = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8*)* @read_until to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_until(i8 signext %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  %7 = load i64, i64* @file_pointer, align 8
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %6, align 4
  br label %9

9:                                                ; preds = %39, %2
  %10 = load i64, i64* @file_pointer, align 8
  %11 = load i64, i64* @file_size, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %9
  %14 = load i8*, i8** @file_buffer, align 8
  %15 = load i64, i64* @file_pointer, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = load i8, i8* %4, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %13
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** @file_buffer, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i64, i64* @file_pointer, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = sub i64 %28, %30
  %32 = call i32 @strncpy(i8* %23, i8* %27, i64 %31)
  %33 = load i8*, i8** %5, align 8
  %34 = load i64, i64* @file_pointer, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = sub i64 %34, %36
  %38 = getelementptr inbounds i8, i8* %33, i64 %37
  store i8 0, i8* %38, align 1
  store i32 1, i32* %3, align 4
  br label %43

39:                                               ; preds = %13
  %40 = load i64, i64* @file_pointer, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* @file_pointer, align 8
  br label %9

42:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %22
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
