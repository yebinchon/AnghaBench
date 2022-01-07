; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_dhcp6-option.c_dhcp6_option_append.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_dhcp6-option.c_dhcp6_option_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dhcp6_option_append(i32** %0, i64* %1, i32 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i8*, i8** %11, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %5
  %16 = load i64, i64* %10, align 8
  %17 = icmp eq i64 %16, 0
  br label %18

18:                                               ; preds = %15, %5
  %19 = phi i1 [ true, %5 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  %23 = call i32 @assert_return(i32 %20, i32 %22)
  %24 = load i32**, i32*** %7, align 8
  %25 = load i64*, i64** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @option_append_hdr(i32** %24, i64* %25, i32 %26, i64 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %6, align 4
  br label %47

33:                                               ; preds = %18
  %34 = load i32**, i32*** %7, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @memcpy_safe(i32* %35, i8* %36, i64 %37)
  %39 = load i64, i64* %10, align 8
  %40 = load i32**, i32*** %7, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 %39
  store i32* %42, i32** %40, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = load i64, i64* %44, align 8
  %46 = sub i64 %45, %43
  store i64 %46, i64* %44, align 8
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %33, %31
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @assert_return(i32, i32) #1

declare dso_local i32 @option_append_hdr(i32**, i64*, i32, i64) #1

declare dso_local i32 @memcpy_safe(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
