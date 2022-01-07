; ModuleID = '/home/carl/AnghaBench/redis/src/extr_listpack.c_lpCurrentEncodedSize.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_listpack.c_lpCurrentEncodedSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LP_EOF = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpCurrentEncodedSize(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 0
  %6 = load i8, i8* %5, align 1
  %7 = call i64 @LP_ENCODING_IS_7BIT_UINT(i8 zeroext %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %85

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = call i64 @LP_ENCODING_IS_6BIT_STR(i8 zeroext %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @LP_ENCODING_6BIT_STR_LEN(i8* %17)
  %19 = add nsw i32 1, %18
  store i32 %19, i32* %2, align 4
  br label %85

20:                                               ; preds = %10
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = call i64 @LP_ENCODING_IS_13BIT_INT(i8 zeroext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 2, i32* %2, align 4
  br label %85

27:                                               ; preds = %20
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @LP_ENCODING_IS_16BIT_INT(i8 zeroext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 3, i32* %2, align 4
  br label %85

34:                                               ; preds = %27
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = call i64 @LP_ENCODING_IS_24BIT_INT(i8 zeroext %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 4, i32* %2, align 4
  br label %85

41:                                               ; preds = %34
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @LP_ENCODING_IS_32BIT_INT(i8 zeroext %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 5, i32* %2, align 4
  br label %85

48:                                               ; preds = %41
  %49 = load i8*, i8** %3, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = call i64 @LP_ENCODING_IS_64BIT_INT(i8 zeroext %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 9, i32* %2, align 4
  br label %85

55:                                               ; preds = %48
  %56 = load i8*, i8** %3, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = call i64 @LP_ENCODING_IS_12BIT_STR(i8 zeroext %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 @LP_ENCODING_12BIT_STR_LEN(i8* %62)
  %64 = add nsw i32 2, %63
  store i32 %64, i32* %2, align 4
  br label %85

65:                                               ; preds = %55
  %66 = load i8*, i8** %3, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = call i64 @LP_ENCODING_IS_32BIT_STR(i8 zeroext %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i8*, i8** %3, align 8
  %73 = call i32 @LP_ENCODING_32BIT_STR_LEN(i8* %72)
  %74 = add nsw i32 5, %73
  store i32 %74, i32* %2, align 4
  br label %85

75:                                               ; preds = %65
  %76 = load i8*, i8** %3, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8, i8* @LP_EOF, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  store i32 1, i32* %2, align 4
  br label %85

84:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %83, %71, %61, %54, %47, %40, %33, %26, %16, %9
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i64 @LP_ENCODING_IS_7BIT_UINT(i8 zeroext) #1

declare dso_local i64 @LP_ENCODING_IS_6BIT_STR(i8 zeroext) #1

declare dso_local i32 @LP_ENCODING_6BIT_STR_LEN(i8*) #1

declare dso_local i64 @LP_ENCODING_IS_13BIT_INT(i8 zeroext) #1

declare dso_local i64 @LP_ENCODING_IS_16BIT_INT(i8 zeroext) #1

declare dso_local i64 @LP_ENCODING_IS_24BIT_INT(i8 zeroext) #1

declare dso_local i64 @LP_ENCODING_IS_32BIT_INT(i8 zeroext) #1

declare dso_local i64 @LP_ENCODING_IS_64BIT_INT(i8 zeroext) #1

declare dso_local i64 @LP_ENCODING_IS_12BIT_STR(i8 zeroext) #1

declare dso_local i32 @LP_ENCODING_12BIT_STR_LEN(i8*) #1

declare dso_local i64 @LP_ENCODING_IS_32BIT_STR(i8 zeroext) #1

declare dso_local i32 @LP_ENCODING_32BIT_STR_LEN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
