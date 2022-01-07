; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest5.c_dbReadOperation.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest5.c_dbReadOperation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DB_KEY_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, void (i8*)*, i8*, i32, i32*)* @dbReadOperation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbReadOperation(i32* %0, i32* %1, void (i8*)* %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca void (i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store void (i8*)* %2, void (i8*)** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @dbMaxLevel(i32* %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = call i64 @tdb_transaction_support(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %6
  %25 = load i32*, i32** %8, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = call i32 @testBegin(i32* %25, i32 1, i32* %26)
  br label %28

28:                                               ; preds = %24, %6
  store i32 1, i32* %14, align 4
  br label %29

29:                                               ; preds = %76, %28
  %30 = load i32*, i32** %12, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp sle i32 %34, %35
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i1 [ false, %29 ], [ %36, %33 ]
  br i1 %38, label %39, label %79

39:                                               ; preds = %37
  %40 = load i32, i32* @DB_KEY_BYTES, align 4
  %41 = zext i32 %40 to i64
  %42 = call i8* @llvm.stacksave()
  store i8* %42, i8** %15, align 8
  %43 = alloca i8, i64 %41, align 16
  store i64 %41, i64* %16, align 8
  %44 = load i32, i32* @DB_KEY_BYTES, align 4
  %45 = zext i32 %44 to i64
  %46 = alloca i8, i64 %45, align 16
  store i64 %45, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32*, i32** %12, align 8
  %52 = call i64 @dbComputeCksum(i32* %47, i32* %48, i32 %49, i32 %50, i32* %51)
  store i64 %52, i64* %18, align 8
  %53 = load i64, i64* %18, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %39
  %56 = load void (i8*)*, void (i8*)** %9, align 8
  %57 = icmp ne void (i8*)* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* %14, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load void (i8*)*, void (i8*)** %9, align 8
  %63 = load i8*, i8** %10, align 8
  call void %62(i8* %63)
  br label %64

64:                                               ; preds = %61, %58, %55
  %65 = load i64, i64* %18, align 8
  %66 = call i32 @dbFormatCksumValue(i64 %65, i8* %43)
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @dbFormatKey(i32* %67, i32 %68, i32 %69, i8* %46)
  %71 = load i32*, i32** %8, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @testFetchStr(i32* %71, i8* %46, i8* %43, i32* %72)
  br label %74

74:                                               ; preds = %64, %39
  %75 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %75)
  br label %76

76:                                               ; preds = %74
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %14, align 4
  br label %29

79:                                               ; preds = %37
  %80 = load i32*, i32** %8, align 8
  %81 = call i64 @tdb_transaction_support(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32*, i32** %8, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = call i32 @testCommit(i32* %84, i32 0, i32* %85)
  br label %87

87:                                               ; preds = %83, %79
  ret void
}

declare dso_local i32 @dbMaxLevel(i32*) #1

declare dso_local i64 @tdb_transaction_support(i32*) #1

declare dso_local i32 @testBegin(i32*, i32, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @dbComputeCksum(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @dbFormatCksumValue(i64, i8*) #1

declare dso_local i32 @dbFormatKey(i32*, i32, i32, i8*) #1

declare dso_local i32 @testFetchStr(i32*, i8*, i8*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @testCommit(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
