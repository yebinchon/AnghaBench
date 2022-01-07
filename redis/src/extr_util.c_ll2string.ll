; ModuleID = '/home/carl/AnghaBench/redis/src/extr_util.c_ll2string.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_util.c_ll2string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ll2string.digits = internal constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@LLONG_MIN = common dso_local global i64 0, align 8
@LLONG_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ll2string(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @LLONG_MIN, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i64, i64* %7, align 8
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %9, align 8
  br label %26

23:                                               ; preds = %16
  %24 = load i64, i64* @LLONG_MAX, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %9, align 8
  br label %26

26:                                               ; preds = %23, %20
  store i32 1, i32* %8, align 4
  br label %29

27:                                               ; preds = %3
  %28 = load i64, i64* %7, align 8
  store i64 %28, i64* %9, align 8
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %27, %26
  %30 = load i64, i64* %9, align 8
  %31 = call i64 @digits10(i64 %30)
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = add i64 %31, %33
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp uge i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %113

39:                                               ; preds = %29
  %40 = load i64, i64* %10, align 8
  store i64 %40, i64* %11, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8 0, i8* %43, align 1
  %44 = load i64, i64* %11, align 8
  %45 = add i64 %44, -1
  store i64 %45, i64* %11, align 8
  br label %46

46:                                               ; preds = %49, %39
  %47 = load i64, i64* %9, align 8
  %48 = icmp uge i64 %47, 100
  br i1 %48, label %49, label %74

49:                                               ; preds = %46
  %50 = load i64, i64* %9, align 8
  %51 = urem i64 %50, 100
  %52 = mul i64 %51, 2
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %12, align 4
  %54 = load i64, i64* %9, align 8
  %55 = udiv i64 %54, 100
  store i64 %55, i64* %9, align 8
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [201 x i8], [201 x i8]* @ll2string.digits, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = load i8*, i8** %5, align 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8 %60, i8* %63, align 1
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [201 x i8], [201 x i8]* @ll2string.digits, i64 0, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = load i8*, i8** %5, align 8
  %69 = load i64, i64* %11, align 8
  %70 = sub i64 %69, 1
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8 %67, i8* %71, align 1
  %72 = load i64, i64* %11, align 8
  %73 = sub i64 %72, 2
  store i64 %73, i64* %11, align 8
  br label %46

74:                                               ; preds = %46
  %75 = load i64, i64* %9, align 8
  %76 = icmp ult i64 %75, 10
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load i64, i64* %9, align 8
  %79 = add i64 48, %78
  %80 = trunc i64 %79 to i8
  %81 = load i8*, i8** %5, align 8
  %82 = load i64, i64* %11, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8 %80, i8* %83, align 1
  br label %104

84:                                               ; preds = %74
  %85 = load i64, i64* %9, align 8
  %86 = mul i64 %85, 2
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [201 x i8], [201 x i8]* @ll2string.digits, i64 0, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = load i8*, i8** %5, align 8
  %94 = load i64, i64* %11, align 8
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  store i8 %92, i8* %95, align 1
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [201 x i8], [201 x i8]* @ll2string.digits, i64 0, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = load i8*, i8** %5, align 8
  %101 = load i64, i64* %11, align 8
  %102 = sub i64 %101, 1
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  store i8 %99, i8* %103, align 1
  br label %104

104:                                              ; preds = %84, %77
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  store i8 45, i8* %109, align 1
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i64, i64* %10, align 8
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %110, %38
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i64 @digits10(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
