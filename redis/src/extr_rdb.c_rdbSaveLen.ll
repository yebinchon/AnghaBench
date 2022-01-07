; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveLen.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveLen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RDB_6BITLEN = common dso_local global i32 0, align 4
@RDB_14BITLEN = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@RDB_32BITLEN = common dso_local global i8 0, align 1
@RDB_64BITLEN = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdbSaveLen(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i8], align 1
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 64
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 255
  %14 = load i32, i32* @RDB_6BITLEN, align 4
  %15 = shl i32 %14, 6
  %16 = or i32 %13, %15
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 %17, i8* %18, align 1
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %21 = call i32 (i32*, ...) @rdbWriteRaw(i32* %19, i8* %20, i32 1)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %88

24:                                               ; preds = %11
  store i64 1, i64* %7, align 8
  br label %85

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 16384
  br i1 %27, label %28, label %47

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = ashr i32 %29, 8
  %31 = and i32 %30, 255
  %32 = load i32, i32* @RDB_14BITLEN, align 4
  %33 = shl i32 %32, 6
  %34 = or i32 %31, %33
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 %35, i8* %36, align 1
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 255
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 %39, i8* %40, align 1
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %43 = call i32 (i32*, ...) @rdbWriteRaw(i32* %41, i8* %42, i32 2)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %88

46:                                               ; preds = %28
  store i64 2, i64* %7, align 8
  br label %84

47:                                               ; preds = %25
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @UINT32_MAX, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %47
  %52 = load i8, i8* @RDB_32BITLEN, align 1
  %53 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 %52, i8* %53, align 1
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %56 = call i32 (i32*, ...) @rdbWriteRaw(i32* %54, i8* %55, i32 1)
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 -1, i32* %3, align 4
  br label %88

59:                                               ; preds = %51
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @htonl(i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 (i32*, ...) @rdbWriteRaw(i32* %62, i32* %8, i32 4)
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 -1, i32* %3, align 4
  br label %88

66:                                               ; preds = %59
  store i64 5, i64* %7, align 8
  br label %83

67:                                               ; preds = %47
  %68 = load i8, i8* @RDB_64BITLEN, align 1
  %69 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 %68, i8* %69, align 1
  %70 = load i32*, i32** %4, align 8
  %71 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %72 = call i32 (i32*, ...) @rdbWriteRaw(i32* %70, i8* %71, i32 1)
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  store i32 -1, i32* %3, align 4
  br label %88

75:                                               ; preds = %67
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @htonu64(i32 %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 (i32*, ...) @rdbWriteRaw(i32* %78, i32* %5, i32 8)
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i32 -1, i32* %3, align 4
  br label %88

82:                                               ; preds = %75
  store i64 9, i64* %7, align 8
  br label %83

83:                                               ; preds = %82, %66
  br label %84

84:                                               ; preds = %83, %46
  br label %85

85:                                               ; preds = %84, %24
  %86 = load i64, i64* %7, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %85, %81, %74, %65, %58, %45, %23
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @rdbWriteRaw(i32*, ...) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htonu64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
