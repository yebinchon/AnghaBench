; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_fletcher.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_fletcher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abd = type { i32 }

@NANOSEC = common dso_local global i64 0, align 8
@UMEM_NOFAIL = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"scalar\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"cycle\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ztest_fletcher(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.abd*, align 8
  %9 = alloca %struct.abd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = call i64 (...) @gethrtime()
  %18 = load i64, i64* @NANOSEC, align 8
  %19 = add nsw i64 %17, %18
  store i64 %19, i64* %5, align 8
  br label %20

20:                                               ; preds = %107, %2
  %21 = call i64 (...) @gethrtime()
  %22 = load i64, i64* %5, align 8
  %23 = icmp sle i64 %21, %22
  br i1 %23, label %24, label %115

24:                                               ; preds = %20
  store i32 100, i32* %6, align 4
  %25 = call i32 (...) @ztest_random_blocksize()
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @UMEM_NOFAIL, align 4
  %28 = call i8* @umem_alloc(i32 %26, i32 %27)
  store i8* %28, i8** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @B_FALSE, align 4
  %31 = call %struct.abd* @abd_alloc(i32 %29, i32 %30)
  store %struct.abd* %31, %struct.abd** %8, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @B_TRUE, align 4
  %34 = call %struct.abd* @abd_alloc(i32 %32, i32 %33)
  store %struct.abd* %34, %struct.abd** %9, align 8
  store i32 0, i32* %12, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = bitcast i8* %35 to i32*
  store i32* %36, i32** %11, align 8
  br label %37

37:                                               ; preds = %48, %24
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = udiv i64 %41, 4
  %43 = icmp ult i64 %39, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = load i32, i32* @UINT_MAX, align 4
  %46 = call i32 @ztest_random(i32 %45)
  %47 = load i32*, i32** %11, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %11, align 8
  br label %37

53:                                               ; preds = %37
  %54 = load %struct.abd*, %struct.abd** %8, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @abd_copy_from_buf_off(%struct.abd* %54, i8* %55, i32 0, i32 %56)
  %58 = load %struct.abd*, %struct.abd** %9, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @abd_copy_from_buf_off(%struct.abd* %58, i8* %59, i32 0, i32 %60)
  %62 = call i32 @fletcher_4_impl_set(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %63 = call i32 @VERIFY0(i32 %62)
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @fletcher_4_native(i8* %64, i32 %65, i32* null, i32* %13)
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @fletcher_4_byteswap(i8* %67, i32 %68, i32* null, i32* %14)
  %70 = call i32 @fletcher_4_impl_set(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %71 = call i32 @VERIFY0(i32 %70)
  br label %72

72:                                               ; preds = %76, %53
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %6, align 4
  %75 = icmp sgt i32 %73, 0
  br i1 %75, label %76, label %107

76:                                               ; preds = %72
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @fletcher_4_byteswap(i8* %77, i32 %78, i32* null, i32* %16)
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @fletcher_4_native(i8* %80, i32 %81, i32* null, i32* %15)
  %83 = call i32 @bcmp(i32* %15, i32* %13, i32 4)
  %84 = call i32 @VERIFY0(i32 %83)
  %85 = call i32 @bcmp(i32* %16, i32* %14, i32 4)
  %86 = call i32 @VERIFY0(i32 %85)
  %87 = load %struct.abd*, %struct.abd** %8, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @abd_fletcher_4_byteswap(%struct.abd* %87, i32 %88, i32* null, i32* %16)
  %90 = load %struct.abd*, %struct.abd** %8, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @abd_fletcher_4_native(%struct.abd* %90, i32 %91, i32* null, i32* %15)
  %93 = call i32 @bcmp(i32* %15, i32* %13, i32 4)
  %94 = call i32 @VERIFY0(i32 %93)
  %95 = call i32 @bcmp(i32* %16, i32* %14, i32 4)
  %96 = call i32 @VERIFY0(i32 %95)
  %97 = load %struct.abd*, %struct.abd** %9, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @abd_fletcher_4_byteswap(%struct.abd* %97, i32 %98, i32* null, i32* %16)
  %100 = load %struct.abd*, %struct.abd** %9, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @abd_fletcher_4_native(%struct.abd* %100, i32 %101, i32* null, i32* %15)
  %103 = call i32 @bcmp(i32* %15, i32* %13, i32 4)
  %104 = call i32 @VERIFY0(i32 %103)
  %105 = call i32 @bcmp(i32* %16, i32* %14, i32 4)
  %106 = call i32 @VERIFY0(i32 %105)
  br label %72

107:                                              ; preds = %72
  %108 = load i8*, i8** %7, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @umem_free(i8* %108, i32 %109)
  %111 = load %struct.abd*, %struct.abd** %8, align 8
  %112 = call i32 @abd_free(%struct.abd* %111)
  %113 = load %struct.abd*, %struct.abd** %9, align 8
  %114 = call i32 @abd_free(%struct.abd* %113)
  br label %20

115:                                              ; preds = %20
  ret void
}

declare dso_local i64 @gethrtime(...) #1

declare dso_local i32 @ztest_random_blocksize(...) #1

declare dso_local i8* @umem_alloc(i32, i32) #1

declare dso_local %struct.abd* @abd_alloc(i32, i32) #1

declare dso_local i32 @ztest_random(i32) #1

declare dso_local i32 @abd_copy_from_buf_off(%struct.abd*, i8*, i32, i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @fletcher_4_impl_set(i8*) #1

declare dso_local i32 @fletcher_4_native(i8*, i32, i32*, i32*) #1

declare dso_local i32 @fletcher_4_byteswap(i8*, i32, i32*, i32*) #1

declare dso_local i32 @bcmp(i32*, i32*, i32) #1

declare dso_local i32 @abd_fletcher_4_byteswap(%struct.abd*, i32, i32*, i32*) #1

declare dso_local i32 @abd_fletcher_4_native(%struct.abd*, i32, i32*, i32*) #1

declare dso_local i32 @umem_free(i8*, i32) #1

declare dso_local i32 @abd_free(%struct.abd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
