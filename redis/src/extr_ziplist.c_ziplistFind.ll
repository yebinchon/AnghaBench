; ModuleID = '/home/carl/AnghaBench/redis/src/extr_ziplist.c_ziplistFind.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_ziplist.c_ziplistFind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZIP_END = common dso_local global i8 0, align 1
@UCHAR_MAX = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ziplistFind(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8 0, i8* %11, align 1
  store i64 0, i64* %12, align 8
  br label %19

19:                                               ; preds = %101, %4
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @ZIP_END, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %106

27:                                               ; preds = %19
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @ZIP_DECODE_PREVLENSIZE(i8* %28, i32 %29)
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %13, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %16, align 4
  %38 = call i32 @ZIP_DECODE_LENGTH(i8* %34, i32 %35, i32 %36, i32 %37)
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %13, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i32, i32* %15, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  store i8* %45, i8** %17, align 8
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %98

48:                                               ; preds = %27
  %49 = load i32, i32* %14, align 4
  %50 = call i64 @ZIP_IS_STR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load i8*, i8** %17, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i64 @memcmp(i8* %57, i8* %58, i32 %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i8*, i8** %6, align 8
  store i8* %63, i8** %5, align 8
  br label %107

64:                                               ; preds = %56, %52
  br label %96

65:                                               ; preds = %48
  %66 = load i8, i8* %11, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @zipTryEncoding(i8* %70, i32 %71, i64* %12, i8* %11)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %69
  %75 = load i8, i8* @UCHAR_MAX, align 1
  store i8 %75, i8* %11, align 1
  br label %76

76:                                               ; preds = %74, %69
  %77 = load i8, i8* %11, align 1
  %78 = call i32 @assert(i8 zeroext %77)
  br label %79

79:                                               ; preds = %76, %65
  %80 = load i8, i8* %11, align 1
  %81 = zext i8 %80 to i32
  %82 = load i8, i8* @UCHAR_MAX, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp ne i32 %81, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %79
  %86 = load i8*, i8** %17, align 8
  %87 = load i32, i32* %14, align 4
  %88 = call i64 @zipLoadInteger(i8* %86, i32 %87)
  store i64 %88, i64* %18, align 8
  %89 = load i64, i64* %18, align 8
  %90 = load i64, i64* %12, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i8*, i8** %6, align 8
  store i8* %93, i8** %5, align 8
  br label %107

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94, %79
  br label %96

96:                                               ; preds = %95, %64
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %10, align 4
  br label %101

98:                                               ; preds = %27
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %98, %96
  %102 = load i8*, i8** %17, align 8
  %103 = load i32, i32* %16, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  store i8* %105, i8** %6, align 8
  br label %19

106:                                              ; preds = %19
  store i8* null, i8** %5, align 8
  br label %107

107:                                              ; preds = %106, %92, %62
  %108 = load i8*, i8** %5, align 8
  ret i8* %108
}

declare dso_local i32 @ZIP_DECODE_PREVLENSIZE(i8*, i32) #1

declare dso_local i32 @ZIP_DECODE_LENGTH(i8*, i32, i32, i32) #1

declare dso_local i64 @ZIP_IS_STR(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @zipTryEncoding(i8*, i32, i64*, i8*) #1

declare dso_local i32 @assert(i8 zeroext) #1

declare dso_local i64 @zipLoadInteger(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
