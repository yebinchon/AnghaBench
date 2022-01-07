; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_utf8.c_decode_utf8_char.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_utf8.c_decode_utf8_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@utf8_length = common dso_local global i32* null, align 8
@utf8_mask = common dso_local global i8* null, align 8
@utf8_minval = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8**, i8*)* @decode_utf8_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_utf8_char(i8 zeroext %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8 %0, i8* %5, align 1
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32*, i32** @utf8_length, align 8
  %12 = load i8, i8* %5, align 1
  %13 = zext i8 %12 to i32
  %14 = sub nsw i32 %13, 128
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i8, i8* %5, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8*, i8** @utf8_mask, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %19, %25
  store i32 %26, i32* %9, align 4
  %27 = load i8**, i8*** %6, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ugt i8* %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %106

36:                                               ; preds = %3
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %105 [
    i32 3, label %38
    i32 2, label %57
    i32 1, label %76
  ]

38:                                               ; preds = %36
  %39 = load i8*, i8** %10, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 -3
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = xor i32 %42, 128
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %5, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp sge i32 %45, 64
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %105

48:                                               ; preds = %38
  %49 = load i32, i32* %9, align 4
  %50 = shl i32 %49, 6
  %51 = load i8, i8* %5, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %50, %52
  store i32 %53, i32* %9, align 4
  %54 = load i8**, i8*** %6, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %54, align 8
  br label %57

57:                                               ; preds = %36, %48
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 -2
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = xor i32 %61, 128
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %5, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp sge i32 %64, 64
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %105

67:                                               ; preds = %57
  %68 = load i32, i32* %9, align 4
  %69 = shl i32 %68, 6
  %70 = load i8, i8* %5, align 1
  %71 = zext i8 %70 to i32
  %72 = or i32 %69, %71
  store i32 %72, i32* %9, align 4
  %73 = load i8**, i8*** %6, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %73, align 8
  br label %76

76:                                               ; preds = %36, %67
  %77 = load i8*, i8** %10, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 -1
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = xor i32 %80, 128
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %5, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp sge i32 %83, 64
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %105

86:                                               ; preds = %76
  %87 = load i32, i32* %9, align 4
  %88 = shl i32 %87, 6
  %89 = load i8, i8* %5, align 1
  %90 = zext i8 %89 to i32
  %91 = or i32 %88, %90
  store i32 %91, i32* %9, align 4
  %92 = load i8**, i8*** %6, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %92, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32*, i32** @utf8_minval, align 8
  %97 = load i32, i32* %8, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp ult i32 %95, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %86
  br label %105

103:                                              ; preds = %86
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %4, align 4
  br label %106

105:                                              ; preds = %36, %102, %85, %66, %47
  store i32 -1, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %103, %35
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
