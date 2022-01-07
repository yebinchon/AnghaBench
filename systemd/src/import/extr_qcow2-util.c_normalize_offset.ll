; ModuleID = '/home/carl/AnghaBench/systemd/src/import/extr_qcow2-util.c_normalize_offset.c'
source_filename = "/home/carl/AnghaBench/systemd/src/import/extr_qcow2-util.c_normalize_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QCOW2_COMPRESSED = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@QCOW2_ZERO = common dso_local global i32 0, align 4
@QCOW2_COPIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*, i32*)* @normalize_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @normalize_offset(i32* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @be64toh(i32 %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* @QCOW2_COMPRESSED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %65

22:                                               ; preds = %5
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %89

28:                                               ; preds = %22
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @HEADER_CLUSTER_BITS(i32* %29)
  %31 = sub nsw i32 %30, 8
  %32 = sub nsw i32 62, %31
  store i32 %32, i32* %14, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @HEADER_CLUSTER_BITS(i32* %33)
  %35 = sub nsw i32 %34, 8
  %36 = zext i32 %35 to i64
  %37 = shl i64 1, %36
  %38 = sub i64 %37, 1
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %14, align 4
  %42 = ashr i32 %40, %41
  %43 = load i32, i32* %15, align 4
  %44 = and i32 %42, %43
  %45 = add nsw i32 %44, 1
  %46 = mul nsw i32 %45, 512
  %47 = load i32, i32* %12, align 4
  %48 = and i32 %47, 511
  %49 = sub nsw i32 %46, %48
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %14, align 4
  %51 = zext i32 %50 to i64
  %52 = shl i64 1, %51
  %53 = sub i64 %52, 1
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = and i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %12, align 4
  %58 = load i32*, i32** %11, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %28
  %61 = load i32, i32* %13, align 4
  %62 = load i32*, i32** %11, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %28
  %64 = load i32*, i32** %10, align 8
  store i32 1, i32* %64, align 4
  br label %83

65:                                               ; preds = %5
  %66 = load i32*, i32** %10, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32*, i32** %10, align 8
  store i32 0, i32* %69, align 4
  %70 = load i32*, i32** %11, align 8
  store i32 0, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @QCOW2_ZERO, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32*, i32** %9, align 8
  store i32 0, i32* %77, align 4
  store i32 0, i32* %6, align 4
  br label %89

78:                                               ; preds = %71
  %79 = load i32, i32* @QCOW2_COPIED, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %12, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %78, %63
  %84 = load i32, i32* %12, align 4
  %85 = load i32*, i32** %9, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp sgt i32 %86, 0
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %83, %76, %25
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @be64toh(i32) #1

declare dso_local i32 @HEADER_CLUSTER_BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
