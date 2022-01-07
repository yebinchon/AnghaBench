; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_docListAndMerge.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_docListAndMerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DL_DOCIDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32, i32*)* @docListAndMerge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @docListAndMerge(i8* %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %5
  br label %64

20:                                               ; preds = %16
  %21 = load i32, i32* @DL_DOCIDS, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @dlrInit(i32* %11, i32 %21, i8* %22, i32 %23)
  %25 = load i32, i32* @DL_DOCIDS, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @dlrInit(i32* %12, i32 %25, i8* %26, i32 %27)
  %29 = load i32, i32* @DL_DOCIDS, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @dlwInit(i32* %13, i32 %29, i32* %30)
  br label %32

32:                                               ; preds = %59, %20
  %33 = call i32 @dlrAtEnd(i32* %11)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = call i32 @dlrAtEnd(i32* %12)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi i1 [ false, %32 ], [ %38, %35 ]
  br i1 %40, label %41, label %60

41:                                               ; preds = %39
  %42 = call i64 @dlrDocid(i32* %11)
  %43 = call i64 @dlrDocid(i32* %12)
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 @dlrStep(i32* %11)
  br label %59

47:                                               ; preds = %41
  %48 = call i64 @dlrDocid(i32* %12)
  %49 = call i64 @dlrDocid(i32* %11)
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 @dlrStep(i32* %12)
  br label %58

53:                                               ; preds = %47
  %54 = call i64 @dlrDocid(i32* %11)
  %55 = call i32 @dlwAdd(i32* %13, i64 %54)
  %56 = call i32 @dlrStep(i32* %11)
  %57 = call i32 @dlrStep(i32* %12)
  br label %58

58:                                               ; preds = %53, %51
  br label %59

59:                                               ; preds = %58, %45
  br label %32

60:                                               ; preds = %39
  %61 = call i32 @dlrDestroy(i32* %11)
  %62 = call i32 @dlrDestroy(i32* %12)
  %63 = call i32 @dlwDestroy(i32* %13)
  br label %64

64:                                               ; preds = %60, %19
  ret void
}

declare dso_local i32 @dlrInit(i32*, i32, i8*, i32) #1

declare dso_local i32 @dlwInit(i32*, i32, i32*) #1

declare dso_local i32 @dlrAtEnd(i32*) #1

declare dso_local i64 @dlrDocid(i32*) #1

declare dso_local i32 @dlrStep(i32*) #1

declare dso_local i32 @dlwAdd(i32*, i64) #1

declare dso_local i32 @dlrDestroy(i32*) #1

declare dso_local i32 @dlwDestroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
