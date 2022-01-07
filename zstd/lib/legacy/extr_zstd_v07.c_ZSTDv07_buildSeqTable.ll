; ModuleID = '/home/carl/AnghaBench/zstd/lib/legacy/extr_zstd_v07.c_ZSTDv07_buildSeqTable.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/legacy/extr_zstd_v07.c_ZSTDv07_buildSeqTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@srcSize_wrong = common dso_local global i32 0, align 4
@corruption_detected = common dso_local global i32 0, align 4
@MaxSeq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i32, i32, i8*, i64, i32*, i32, i32)* @ZSTDv07_buildSeqTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTDv07_buildSeqTable(i32* %0, i32 %1, i32 %2, i32 %3, i8* %4, i64 %5, i32* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i64 %5, i64* %16, align 8
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %25 = load i32, i32* %12, align 4
  switch i32 %25, label %60 [
    i32 129, label %26
    i32 130, label %47
    i32 128, label %53
    i32 131, label %61
  ]

26:                                               ; preds = %9
  %27 = load i64, i64* %16, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @srcSize_wrong, align 4
  %31 = call i64 @ERROR(i32 %30)
  store i64 %31, i64* %10, align 8
  br label %91

32:                                               ; preds = %26
  %33 = load i8*, i8** %15, align 8
  %34 = bitcast i8* %33 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @corruption_detected, align 4
  %40 = call i64 @ERROR(i32 %39)
  store i64 %40, i64* %10, align 8
  br label %91

41:                                               ; preds = %32
  %42 = load i32*, i32** %11, align 8
  %43 = load i8*, i8** %15, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @FSEv07_buildDTable_rle(i32* %42, i32 %45)
  store i64 1, i64* %10, align 8
  br label %91

47:                                               ; preds = %9
  %48 = load i32*, i32** %11, align 8
  %49 = load i32*, i32** %17, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %18, align 4
  %52 = call i32 @FSEv07_buildDTable(i32* %48, i32* %49, i32 %50, i32 %51)
  store i64 0, i64* %10, align 8
  br label %91

53:                                               ; preds = %9
  %54 = load i32, i32* %19, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @corruption_detected, align 4
  %58 = call i64 @ERROR(i32 %57)
  store i64 %58, i64* %10, align 8
  br label %91

59:                                               ; preds = %53
  store i64 0, i64* %10, align 8
  br label %91

60:                                               ; preds = %9
  br label %61

61:                                               ; preds = %9, %60
  %62 = load i32, i32* @MaxSeq, align 4
  %63 = add nsw i32 %62, 1
  %64 = zext i32 %63 to i64
  %65 = call i8* @llvm.stacksave()
  store i8* %65, i8** %21, align 8
  %66 = alloca i32, i64 %64, align 16
  store i64 %64, i64* %22, align 8
  %67 = load i8*, i8** %15, align 8
  %68 = load i64, i64* %16, align 8
  %69 = call i64 @FSEv07_readNCount(i32* %66, i32* %13, i32* %20, i8* %67, i64 %68)
  store i64 %69, i64* %23, align 8
  %70 = load i64, i64* %23, align 8
  %71 = call i32 @FSEv07_isError(i64 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %61
  %74 = load i32, i32* @corruption_detected, align 4
  %75 = call i64 @ERROR(i32 %74)
  store i64 %75, i64* %10, align 8
  store i32 1, i32* %24, align 4
  br label %89

76:                                               ; preds = %61
  %77 = load i32, i32* %20, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* @corruption_detected, align 4
  %82 = call i64 @ERROR(i32 %81)
  store i64 %82, i64* %10, align 8
  store i32 1, i32* %24, align 4
  br label %89

83:                                               ; preds = %76
  %84 = load i32*, i32** %11, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %20, align 4
  %87 = call i32 @FSEv07_buildDTable(i32* %84, i32* %66, i32 %85, i32 %86)
  %88 = load i64, i64* %23, align 8
  store i64 %88, i64* %10, align 8
  store i32 1, i32* %24, align 4
  br label %89

89:                                               ; preds = %83, %80, %73
  %90 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %90)
  br label %91

91:                                               ; preds = %89, %59, %56, %47, %41, %38, %29
  %92 = load i64, i64* %10, align 8
  ret i64 %92
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @FSEv07_buildDTable_rle(i32*, i32) #1

declare dso_local i32 @FSEv07_buildDTable(i32*, i32*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @FSEv07_readNCount(i32*, i32*, i32*, i8*, i64) #1

declare dso_local i32 @FSEv07_isError(i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
