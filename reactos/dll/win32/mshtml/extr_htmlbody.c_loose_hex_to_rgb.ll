; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlbody.c_loose_hex_to_rgb.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlbody.c_loose_hex_to_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @loose_hex_to_rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loose_hex_to_rgb(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @strlenW(i8* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 35
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %12, %1
  %18 = load i32, i32* %4, align 4
  %19 = icmp sle i32 %18, 3
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %51

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = sdiv i32 %22, 3
  %24 = load i32, i32* %4, align 4
  %25 = srem i32 %24, 3
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  %29 = add nsw i32 %23, %28
  %30 = call i32 @min(i32 %29, i32 4)
  store i32 %30, i32* %5, align 4
  %31 = load i8*, i8** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @comp_value(i8* %31, i32 %32)
  %34 = shl i32 %33, 16
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @comp_value(i8* %38, i32 %39)
  %41 = shl i32 %40, 8
  %42 = or i32 %34, %41
  %43 = load i8*, i8** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = mul nsw i32 2, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @comp_value(i8* %47, i32 %48)
  %50 = or i32 %42, %49
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %21, %20
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @comp_value(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
