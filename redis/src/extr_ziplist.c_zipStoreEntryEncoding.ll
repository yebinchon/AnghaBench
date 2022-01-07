; ModuleID = '/home/carl/AnghaBench/redis/src/extr_ziplist.c_zipStoreEntryEncoding.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_ziplist.c_zipStoreEntryEncoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZIP_STR_06B = common dso_local global i32 0, align 4
@ZIP_STR_14B = common dso_local global i32 0, align 4
@ZIP_STR_32B = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zipStoreEntryEncoding(i8* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca [5 x i8], align 1
  store i8* %0, i8** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  store i8 1, i8* %8, align 1
  %10 = load i8, i8* %6, align 1
  %11 = call i64 @ZIP_IS_STR(i8 zeroext %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %87

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp ule i32 %14, 63
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i8, i8* %8, align 1
  %21 = zext i8 %20 to i32
  store i32 %21, i32* %4, align 4
  br label %103

22:                                               ; preds = %16
  %23 = load i32, i32* @ZIP_STR_06B, align 4
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %23, %24
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  store i8 %26, i8* %27, align 1
  br label %86

28:                                               ; preds = %13
  %29 = load i32, i32* %7, align 4
  %30 = icmp ule i32 %29, 16383
  br i1 %30, label %31, label %53

31:                                               ; preds = %28
  %32 = load i8, i8* %8, align 1
  %33 = zext i8 %32 to i32
  %34 = add nsw i32 %33, 1
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %8, align 1
  %36 = load i8*, i8** %5, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i8, i8* %8, align 1
  %40 = zext i8 %39 to i32
  store i32 %40, i32* %4, align 4
  br label %103

41:                                               ; preds = %31
  %42 = load i32, i32* @ZIP_STR_14B, align 4
  %43 = load i32, i32* %7, align 4
  %44 = lshr i32 %43, 8
  %45 = and i32 %44, 63
  %46 = or i32 %42, %45
  %47 = trunc i32 %46 to i8
  %48 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  store i8 %47, i8* %48, align 1
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 255
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 1
  store i8 %51, i8* %52, align 1
  br label %85

53:                                               ; preds = %28
  %54 = load i8, i8* %8, align 1
  %55 = zext i8 %54 to i32
  %56 = add nsw i32 %55, 4
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %8, align 1
  %58 = load i8*, i8** %5, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %53
  %61 = load i8, i8* %8, align 1
  %62 = zext i8 %61 to i32
  store i32 %62, i32* %4, align 4
  br label %103

63:                                               ; preds = %53
  %64 = load i8, i8* @ZIP_STR_32B, align 1
  %65 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  store i8 %64, i8* %65, align 1
  %66 = load i32, i32* %7, align 4
  %67 = lshr i32 %66, 24
  %68 = and i32 %67, 255
  %69 = trunc i32 %68 to i8
  %70 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 1
  store i8 %69, i8* %70, align 1
  %71 = load i32, i32* %7, align 4
  %72 = lshr i32 %71, 16
  %73 = and i32 %72, 255
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 2
  store i8 %74, i8* %75, align 1
  %76 = load i32, i32* %7, align 4
  %77 = lshr i32 %76, 8
  %78 = and i32 %77, 255
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 3
  store i8 %79, i8* %80, align 1
  %81 = load i32, i32* %7, align 4
  %82 = and i32 %81, 255
  %83 = trunc i32 %82 to i8
  %84 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 4
  store i8 %83, i8* %84, align 1
  br label %85

85:                                               ; preds = %63, %41
  br label %86

86:                                               ; preds = %85, %22
  br label %96

87:                                               ; preds = %3
  %88 = load i8*, i8** %5, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load i8, i8* %8, align 1
  %92 = zext i8 %91 to i32
  store i32 %92, i32* %4, align 4
  br label %103

93:                                               ; preds = %87
  %94 = load i8, i8* %6, align 1
  %95 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  store i8 %94, i8* %95, align 1
  br label %96

96:                                               ; preds = %93, %86
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %99 = load i8, i8* %8, align 1
  %100 = call i32 @memcpy(i8* %97, i8* %98, i8 zeroext %99)
  %101 = load i8, i8* %8, align 1
  %102 = zext i8 %101 to i32
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %96, %90, %60, %38, %19
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i64 @ZIP_IS_STR(i8 zeroext) #1

declare dso_local i32 @memcpy(i8*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
