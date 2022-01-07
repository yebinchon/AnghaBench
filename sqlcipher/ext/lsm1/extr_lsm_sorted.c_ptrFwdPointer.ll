; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_ptrFwdPointer.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_ptrFwdPointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LSM_OK = common dso_local global i32 0, align 4
@SEGMENT_BTREE_FLAG = common dso_local global i32 0, align 4
@LSM_START_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i64*, i32*)* @ptrFwdPointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptrFwdPointer(i32* %0, i32 %1, i32* %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load i32*, i32** %7, align 8
  store i32* %21, i32** %12, align 8
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* @LSM_OK, align 4
  store i32 %23, i32* %14, align 4
  br label %24

24:                                               ; preds = %85, %5
  store i32* null, i32** %15, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = call i32* @lsmFsPageData(i32* %25, i32* %17)
  store i32* %26, i32** %16, align 8
  %27 = load i32*, i32** %16, align 8
  %28 = load i32, i32* %17, align 4
  %29 = call i32 @pageGetFlags(i32* %27, i32 %28)
  %30 = load i32, i32* @SEGMENT_BTREE_FLAG, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %71

33:                                               ; preds = %24
  %34 = load i32*, i32** %16, align 8
  %35 = load i32, i32* %17, align 4
  %36 = call i32 @pageGetNRec(i32* %34, i32 %35)
  store i32 %36, i32* %19, align 4
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %18, align 4
  br label %38

38:                                               ; preds = %67, %33
  %39 = load i32, i32* %18, align 4
  %40 = load i32, i32* %19, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %70

42:                                               ; preds = %38
  %43 = load i32*, i32** %16, align 8
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* %18, align 4
  %46 = call i32* @pageGetCell(i32* %43, i32 %44, i32 %45)
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %20, align 4
  %48 = load i32, i32* %20, align 4
  %49 = load i32, i32* @LSM_START_DELETE, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %42
  %53 = load i32*, i32** %11, align 8
  store i32 1, i32* %53, align 4
  %54 = load i32*, i32** %16, align 8
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %18, align 4
  %57 = call i64 @pageGetRecordPtr(i32* %54, i32 %55, i32 %56)
  %58 = load i32*, i32** %16, align 8
  %59 = load i32, i32* %17, align 4
  %60 = call i64 @pageGetPtr(i32* %58, i32 %59)
  %61 = add nsw i64 %57, %60
  %62 = load i64*, i64** %10, align 8
  store i64 %61, i64* %62, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = call i32 @lsmFsPageRelease(i32* %63)
  %65 = load i32, i32* @LSM_OK, align 4
  store i32 %65, i32* %6, align 4
  br label %92

66:                                               ; preds = %42
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %18, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %18, align 4
  br label %38

70:                                               ; preds = %38
  br label %71

71:                                               ; preds = %70, %24
  %72 = load i32*, i32** %9, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = call i32 @lsmFsDbPageNext(i32* %72, i32* %73, i32 1, i32** %15)
  store i32 %74, i32* %14, align 4
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 @lsmFsPageRelease(i32* %75)
  %77 = load i32*, i32** %15, align 8
  store i32* %77, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %78

78:                                               ; preds = %71
  %79 = load i32*, i32** %12, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @LSM_OK, align 4
  %84 = icmp eq i32 %82, %83
  br label %85

85:                                               ; preds = %81, %78
  %86 = phi i1 [ false, %78 ], [ %84, %81 ]
  br i1 %86, label %24, label %87

87:                                               ; preds = %85
  %88 = load i32*, i32** %12, align 8
  %89 = call i32 @lsmFsPageRelease(i32* %88)
  %90 = load i32*, i32** %11, align 8
  store i32 0, i32* %90, align 4
  %91 = load i32, i32* %14, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %87, %52
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i32* @lsmFsPageData(i32*, i32*) #1

declare dso_local i32 @pageGetFlags(i32*, i32) #1

declare dso_local i32 @pageGetNRec(i32*, i32) #1

declare dso_local i32* @pageGetCell(i32*, i32, i32) #1

declare dso_local i64 @pageGetRecordPtr(i32*, i32, i32) #1

declare dso_local i64 @pageGetPtr(i32*, i32) #1

declare dso_local i32 @lsmFsPageRelease(i32*) #1

declare dso_local i32 @lsmFsDbPageNext(i32*, i32*, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
