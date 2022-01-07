; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_dhcp6-option.c_dhcp6_option_parse.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_dhcp6-option.c_dhcp6_option_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dhcp6_option_parse(i32** %0, i64* %1, i32* %2, i64* %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32** %4, i32*** %11, align 8
  %13 = load i32**, i32*** %7, align 8
  %14 = icmp ne i32** %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %5
  %16 = load i64*, i64** %8, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i64*, i64** %10, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32**, i32*** %11, align 8
  %26 = icmp ne i32** %25, null
  br label %27

27:                                               ; preds = %24, %21, %18, %15, %5
  %28 = phi i1 [ false, %21 ], [ false, %18 ], [ false, %15 ], [ false, %5 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i32 @assert_return(i32 %29, i32 %31)
  %33 = load i32**, i32*** %7, align 8
  %34 = load i64*, i64** %8, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i64*, i64** %10, align 8
  %37 = call i32 @option_parse_hdr(i32** %33, i64* %34, i32* %35, i64* %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %6, align 4
  br label %65

42:                                               ; preds = %27
  %43 = load i64*, i64** %10, align 8
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %8, align 8
  %46 = load i64, i64* %45, align 8
  %47 = icmp ugt i64 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @ENOBUFS, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %65

51:                                               ; preds = %42
  %52 = load i32**, i32*** %7, align 8
  %53 = load i32*, i32** %52, align 8
  %54 = load i32**, i32*** %11, align 8
  store i32* %53, i32** %54, align 8
  %55 = load i64*, i64** %10, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %8, align 8
  %58 = load i64, i64* %57, align 8
  %59 = sub i64 %58, %56
  store i64 %59, i64* %57, align 8
  %60 = load i64*, i64** %10, align 8
  %61 = load i64, i64* %60, align 8
  %62 = load i32**, i32*** %7, align 8
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 %61
  store i32* %64, i32** %62, align 8
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %51, %48, %40
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @assert_return(i32, i32) #1

declare dso_local i32 @option_parse_hdr(i32**, i64*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
