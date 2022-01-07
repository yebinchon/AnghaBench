; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_leavesReadersMerge.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_leavesReadersMerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MERGE_COUNT = common dso_local global i32 0, align 4
@DL_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*)* @leavesReadersMerge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @leavesReadersMerge(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = load i32, i32* @MERGE_COUNT, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i8* @leavesReaderTerm(i32* %18)
  store i8* %19, i8** %11, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @leavesReaderTermBytes(i32* %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @MERGE_COUNT, align 4
  %24 = icmp sle i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %47, %4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %17, i64 %33
  %35 = load i32, i32* @DL_DEFAULT, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = call i32 @leavesReaderData(i32* %39)
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call i32 @leavesReaderDataBytes(i32* %44)
  %46 = call i32 @dlrInit(i32* %34, i32 %35, i32 %40, i32 %45)
  br label %47

47:                                               ; preds = %31
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %12, align 4
  br label %27

50:                                               ; preds = %27
  %51 = load i32*, i32** %5, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @leafWriterStepMerge(i32* %51, i32* %52, i8* %53, i32 %54, i32* %17, i32 %55)
  %57 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %57)
  ret i32 %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @leavesReaderTerm(i32*) #2

declare dso_local i32 @leavesReaderTermBytes(i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @dlrInit(i32*, i32, i32, i32) #2

declare dso_local i32 @leavesReaderData(i32*) #2

declare dso_local i32 @leavesReaderDataBytes(i32*) #2

declare dso_local i32 @leafWriterStepMerge(i32*, i32*, i8*, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
