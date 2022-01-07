; ModuleID = '/home/carl/AnghaBench/redis/src/extr_ziplist.c_zipLoadInteger.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_ziplist.c_zipLoadInteger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZIP_INT_8B = common dso_local global i8 0, align 1
@ZIP_INT_16B = common dso_local global i8 0, align 1
@ZIP_INT_32B = common dso_local global i8 0, align 1
@ZIP_INT_24B = common dso_local global i8 0, align 1
@ZIP_INT_64B = common dso_local global i8 0, align 1
@ZIP_INT_IMM_MIN = common dso_local global i8 0, align 1
@ZIP_INT_IMM_MAX = common dso_local global i8 0, align 1
@ZIP_INT_IMM_MASK = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zipLoadInteger(i8* %0, i8 zeroext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8 %1, i8* %4, align 1
  store i32 0, i32* %8, align 4
  %9 = load i8, i8* %4, align 1
  %10 = zext i8 %9 to i32
  %11 = load i8, i8* @ZIP_INT_8B, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i8*, i8** %3, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  br label %91

19:                                               ; preds = %2
  %20 = load i8, i8* %4, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* @ZIP_INT_16B, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @memcpy(i32* %5, i8* %26, i32 4)
  %28 = call i32 @memrev16ifbe(i32* %5)
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %8, align 4
  br label %90

30:                                               ; preds = %19
  %31 = load i8, i8* %4, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* @ZIP_INT_32B, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @memcpy(i32* %6, i8* %37, i32 4)
  %39 = call i32 @memrev32ifbe(i32* %6)
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %8, align 4
  br label %89

41:                                               ; preds = %30
  %42 = load i8, i8* %4, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* @ZIP_INT_24B, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  %48 = getelementptr inbounds i32, i32* %6, i64 1
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 @memcpy(i32* %48, i8* %49, i32 0)
  %51 = call i32 @memrev32ifbe(i32* %6)
  %52 = load i32, i32* %6, align 4
  %53 = ashr i32 %52, 8
  store i32 %53, i32* %8, align 4
  br label %88

54:                                               ; preds = %41
  %55 = load i8, i8* %4, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* @ZIP_INT_64B, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 @memcpy(i32* %7, i8* %61, i32 4)
  %63 = call i32 @memrev64ifbe(i32* %7)
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %8, align 4
  br label %87

65:                                               ; preds = %54
  %66 = load i8, i8* %4, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* @ZIP_INT_IMM_MIN, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp sge i32 %67, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %65
  %72 = load i8, i8* %4, align 1
  %73 = zext i8 %72 to i32
  %74 = load i8, i8* @ZIP_INT_IMM_MAX, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp sle i32 %73, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load i8, i8* %4, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8, i8* @ZIP_INT_IMM_MASK, align 1
  %81 = zext i8 %80 to i32
  %82 = and i32 %79, %81
  %83 = sub nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %86

84:                                               ; preds = %71, %65
  %85 = call i32 @assert(i32* null)
  br label %86

86:                                               ; preds = %84, %77
  br label %87

87:                                               ; preds = %86, %60
  br label %88

88:                                               ; preds = %87, %47
  br label %89

89:                                               ; preds = %88, %36
  br label %90

90:                                               ; preds = %89, %25
  br label %91

91:                                               ; preds = %90, %14
  %92 = load i32, i32* %8, align 4
  ret i32 %92
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @memrev16ifbe(i32*) #1

declare dso_local i32 @memrev32ifbe(i32*) #1

declare dso_local i32 @memrev64ifbe(i32*) #1

declare dso_local i32 @assert(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
