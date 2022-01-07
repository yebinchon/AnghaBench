; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_utf8_copy.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_utf8_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@utf8_copy.limits = internal constant [4 x i32] [i32 255, i32 127, i32 2047, i32 65535], align 16
@MAXUNICODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @utf8_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf8_copy(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load i64, i64* %7, align 8
  %17 = icmp ult i64 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %92

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  store i8 %22, i8* %24, align 1
  %25 = load i32, i32* %8, align 4
  %26 = icmp ult i32 %25, 128
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 1, i32* %4, align 4
  br label %92

28:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %50, %28
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, 64
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %67

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  store i32 %40, i32* %11, align 4
  %41 = load i64, i64* %7, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ule i64 %41, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %33
  %46 = load i32, i32* %11, align 4
  %47 = and i32 %46, 192
  %48 = icmp ne i32 %47, 128
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %33
  store i32 0, i32* %4, align 4
  br label %92

50:                                               ; preds = %45
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  store i8 %55, i8* %59, align 1
  %60 = load i32, i32* %9, align 4
  %61 = shl i32 %60, 6
  %62 = load i32, i32* %11, align 4
  %63 = and i32 %62, 63
  %64 = or i32 %61, %63
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %8, align 4
  %66 = shl i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %29

67:                                               ; preds = %29
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %68, 127
  %70 = load i32, i32* %10, align 4
  %71 = mul nsw i32 %70, 5
  %72 = shl i32 %69, %71
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp sgt i32 %75, 3
  br i1 %76, label %88, label %77

77:                                               ; preds = %67
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @MAXUNICODE, align 4
  %80 = icmp ugt i32 %78, %79
  br i1 %80, label %88, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* @utf8_copy.limits, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp ule i32 %82, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %81, %77, %67
  store i32 0, i32* %4, align 4
  br label %92

89:                                               ; preds = %81
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %89, %88, %49, %27, %18
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
