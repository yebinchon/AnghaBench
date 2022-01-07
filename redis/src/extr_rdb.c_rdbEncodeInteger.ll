; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbEncodeInteger.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbEncodeInteger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RDB_ENCVAL = common dso_local global i32 0, align 4
@RDB_ENC_INT8 = common dso_local global i32 0, align 4
@RDB_ENC_INT16 = common dso_local global i32 0, align 4
@RDB_ENC_INT32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdbEncodeInteger(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp sge i64 %6, -128
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = icmp sle i64 %9, 127
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = load i32, i32* @RDB_ENCVAL, align 4
  %13 = shl i32 %12, 6
  %14 = load i32, i32* @RDB_ENC_INT8, align 4
  %15 = or i32 %13, %14
  %16 = trunc i32 %15 to i8
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 %16, i8* %18, align 1
  %19 = load i64, i64* %4, align 8
  %20 = and i64 %19, 255
  %21 = trunc i64 %20 to i8
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8 %21, i8* %23, align 1
  store i32 2, i32* %3, align 4
  br label %87

24:                                               ; preds = %8, %2
  %25 = load i64, i64* %4, align 8
  %26 = icmp sge i64 %25, -32768
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  %28 = load i64, i64* %4, align 8
  %29 = icmp sle i64 %28, 32767
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  %31 = load i32, i32* @RDB_ENCVAL, align 4
  %32 = shl i32 %31, 6
  %33 = load i32, i32* @RDB_ENC_INT16, align 4
  %34 = or i32 %32, %33
  %35 = trunc i32 %34 to i8
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  store i8 %35, i8* %37, align 1
  %38 = load i64, i64* %4, align 8
  %39 = and i64 %38, 255
  %40 = trunc i64 %39 to i8
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  store i8 %40, i8* %42, align 1
  %43 = load i64, i64* %4, align 8
  %44 = ashr i64 %43, 8
  %45 = and i64 %44, 255
  %46 = trunc i64 %45 to i8
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  store i8 %46, i8* %48, align 1
  store i32 3, i32* %3, align 4
  br label %87

49:                                               ; preds = %27, %24
  %50 = load i64, i64* %4, align 8
  %51 = icmp sge i64 %50, -2147483648
  br i1 %51, label %52, label %86

52:                                               ; preds = %49
  %53 = load i64, i64* %4, align 8
  %54 = icmp sle i64 %53, 2147483647
  br i1 %54, label %55, label %86

55:                                               ; preds = %52
  %56 = load i32, i32* @RDB_ENCVAL, align 4
  %57 = shl i32 %56, 6
  %58 = load i32, i32* @RDB_ENC_INT32, align 4
  %59 = or i32 %57, %58
  %60 = trunc i32 %59 to i8
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  store i8 %60, i8* %62, align 1
  %63 = load i64, i64* %4, align 8
  %64 = and i64 %63, 255
  %65 = trunc i64 %64 to i8
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  store i8 %65, i8* %67, align 1
  %68 = load i64, i64* %4, align 8
  %69 = ashr i64 %68, 8
  %70 = and i64 %69, 255
  %71 = trunc i64 %70 to i8
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 2
  store i8 %71, i8* %73, align 1
  %74 = load i64, i64* %4, align 8
  %75 = ashr i64 %74, 16
  %76 = and i64 %75, 255
  %77 = trunc i64 %76 to i8
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 3
  store i8 %77, i8* %79, align 1
  %80 = load i64, i64* %4, align 8
  %81 = ashr i64 %80, 24
  %82 = and i64 %81, 255
  %83 = trunc i64 %82 to i8
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 4
  store i8 %83, i8* %85, align 1
  store i32 5, i32* %3, align 4
  br label %87

86:                                               ; preds = %52, %49
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %55, %30, %11
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
