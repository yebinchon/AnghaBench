; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_util.c_testArgSelectX.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_util.c_testArgSelectX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Entry = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @testArgSelectX(i8* %0, i8* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.Entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @strlen(i8* %17)
  store i32 %18, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.Entry*
  store %struct.Entry* %20, %struct.Entry** %11, align 8
  br label %21

21:                                               ; preds = %54, %5
  %22 = load %struct.Entry*, %struct.Entry** %11, align 8
  %23 = getelementptr inbounds %struct.Entry, %struct.Entry* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %61

26:                                               ; preds = %21
  %27 = load %struct.Entry*, %struct.Entry** %11, align 8
  %28 = getelementptr inbounds %struct.Entry, %struct.Entry* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strlen(i8* %29)
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %26
  %35 = load %struct.Entry*, %struct.Entry** %11, align 8
  %36 = getelementptr inbounds %struct.Entry, %struct.Entry* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i64 @memcmp(i8* %37, i8* %38, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 1, i32* %15, align 4
  br label %61

48:                                               ; preds = %42
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %15, align 4
  br label %51

51:                                               ; preds = %48, %34, %26
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %51
  %55 = load %struct.Entry*, %struct.Entry** %11, align 8
  %56 = bitcast %struct.Entry* %55 to i8*
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = bitcast i8* %59 to %struct.Entry*
  store %struct.Entry* %60, %struct.Entry** %11, align 8
  br label %21

61:                                               ; preds = %47, %21
  %62 = load i32, i32* %15, align 4
  %63 = icmp ne i32 %62, 1
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i8*, i8** %6, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @argError(i8* %65, i8* %66, i32 %67, i8* %68)
  br label %73

70:                                               ; preds = %61
  %71 = load i32, i32* %14, align 4
  %72 = load i32*, i32** %10, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %64
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 1
  %76 = zext i1 %75 to i32
  ret i32 %76
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @argError(i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
