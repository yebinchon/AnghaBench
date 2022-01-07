; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest2.c_testCompareCksumLsmdb.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest2.c_testCompareCksumLsmdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEST_CKSUM_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"compression=1 mmap=0\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"testCompareCksumLsmdb: \22%s\22 != (\22%s\22 OR \22%s\22)\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"testCompareCksumLsmdb: \22%s\22 != \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i8*, i32*)* @testCompareCksumLsmdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testCompareCksumLsmdb(i8* %0, i32 %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %67

19:                                               ; preds = %5
  %20 = load i32, i32* @TEST_CKSUM_BYTES, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @tdb_lsm_open(i8* %27, i8* %28, i32 0, i32** %13)
  %30 = load i32*, i32** %10, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %13, align 8
  %32 = call i32 @testCksumDatabase(i32* %31, i8* %23)
  %33 = call i32 @testClose(i32** %13)
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %19
  store i32 0, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @strcmp(i8* %23, i8* %38)
  store i32 %39, i32* %14, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @strcmp(i8* %23, i8* %43)
  store i32 %44, i32* %15, align 4
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %45
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load i8*, i8** %9, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 (i8*, i8*, i8*, ...) @testPrintError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %23, i8* %55, i8* %56)
  br label %61

58:                                               ; preds = %51
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 (i8*, i8*, i8*, ...) @testPrintError(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %23, i8* %59)
  br label %61

61:                                               ; preds = %58, %54
  %62 = load i32*, i32** %10, align 8
  store i32 1, i32* %62, align 4
  %63 = call i32 (...) @test_failed()
  br label %64

64:                                               ; preds = %61, %48, %45
  br label %65

65:                                               ; preds = %64, %19
  %66 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %66)
  br label %67

67:                                               ; preds = %65, %5
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @tdb_lsm_open(i8*, i8*, i32, i32**) #2

declare dso_local i32 @testCksumDatabase(i32*, i8*) #2

declare dso_local i32 @testClose(i32**) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @testPrintError(i8*, i8*, i8*, ...) #2

declare dso_local i32 @test_failed(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
