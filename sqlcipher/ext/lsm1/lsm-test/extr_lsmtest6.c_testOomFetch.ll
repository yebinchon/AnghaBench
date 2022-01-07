; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest6.c_testOomFetch.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest6.c_testOomFetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LSM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*, i32, i8*, i32, i32*)* @testOomFetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testOomFetch(i32* %0, i32* %1, i8* %2, i32 %3, i8* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @testOomAssertRc(i32* %21, i32 %23)
  %25 = load i32*, i32** %14, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @LSM_OK, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %116

29:                                               ; preds = %7
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @lsm_csr_open(i32* %30, i32** %15)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* @LSM_OK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i32*, i32** %15, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @lsm_csr_seek(i32* %36, i8* %37, i32 %38, i32 0)
  store i32 %39, i32* %16, align 4
  br label %40

40:                                               ; preds = %35, %29
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %16, align 4
  %43 = call i32 @testOomAssertRc(i32* %41, i32 %42)
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* @LSM_OK, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %77

47:                                               ; preds = %40
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %15, align 8
  %50 = call i32 @lsm_csr_valid(i32* %49)
  %51 = call i32 @testOomAssert(i32* %48, i32 %50)
  %52 = load i32*, i32** %15, align 8
  %53 = call i32 @lsm_csr_key(i32* %52, i8** %17, i32* %18)
  store i32 %53, i32* %16, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %16, align 4
  %56 = call i32 @testOomAssertRc(i32* %54, i32 %55)
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* @LSM_OK, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %73, label %61

61:                                               ; preds = %47
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i8*, i8** %10, align 8
  %67 = load i8*, i8** %17, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i64 @memcmp(i8* %66, i8* %67, i32 %68)
  %70 = icmp eq i64 %69, 0
  br label %71

71:                                               ; preds = %65, %61
  %72 = phi i1 [ false, %61 ], [ %70, %65 ]
  br label %73

73:                                               ; preds = %71, %47
  %74 = phi i1 [ true, %47 ], [ %72, %71 ]
  %75 = zext i1 %74 to i32
  %76 = call i32 @testOomAssert(i32* %57, i32 %75)
  br label %77

77:                                               ; preds = %73, %40
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* @LSM_OK, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %111

81:                                               ; preds = %77
  %82 = load i32*, i32** %8, align 8
  %83 = load i32*, i32** %15, align 8
  %84 = call i32 @lsm_csr_valid(i32* %83)
  %85 = call i32 @testOomAssert(i32* %82, i32 %84)
  %86 = load i32*, i32** %15, align 8
  %87 = call i32 @lsm_csr_value(i32* %86, i8** %19, i32* %20)
  store i32 %87, i32* %16, align 4
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* %16, align 4
  %90 = call i32 @testOomAssertRc(i32* %88, i32 %89)
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* @LSM_OK, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %107, label %95

95:                                               ; preds = %81
  %96 = load i32, i32* %20, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = load i8*, i8** %12, align 8
  %101 = load i8*, i8** %19, align 8
  %102 = load i32, i32* %13, align 4
  %103 = call i64 @memcmp(i8* %100, i8* %101, i32 %102)
  %104 = icmp eq i64 %103, 0
  br label %105

105:                                              ; preds = %99, %95
  %106 = phi i1 [ false, %95 ], [ %104, %99 ]
  br label %107

107:                                              ; preds = %105, %81
  %108 = phi i1 [ true, %81 ], [ %106, %105 ]
  %109 = zext i1 %108 to i32
  %110 = call i32 @testOomAssert(i32* %91, i32 %109)
  br label %111

111:                                              ; preds = %107, %77
  %112 = load i32*, i32** %15, align 8
  %113 = call i32 @lsm_csr_close(i32* %112)
  %114 = load i32, i32* %16, align 4
  %115 = load i32*, i32** %14, align 8
  store i32 %114, i32* %115, align 4
  br label %116

116:                                              ; preds = %111, %7
  ret void
}

declare dso_local i32 @testOomAssertRc(i32*, i32) #1

declare dso_local i32 @lsm_csr_open(i32*, i32**) #1

declare dso_local i32 @lsm_csr_seek(i32*, i8*, i32, i32) #1

declare dso_local i32 @testOomAssert(i32*, i32) #1

declare dso_local i32 @lsm_csr_valid(i32*) #1

declare dso_local i32 @lsm_csr_key(i32*, i8**, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @lsm_csr_value(i32*, i8**, i32*) #1

declare dso_local i32 @lsm_csr_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
