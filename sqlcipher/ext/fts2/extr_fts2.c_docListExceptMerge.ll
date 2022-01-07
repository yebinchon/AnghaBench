; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_docListExceptMerge.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_docListExceptMerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DL_DOCIDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32, i32*)* @docListExceptMerge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @docListExceptMerge(i8* %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
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
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %69

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32*, i32** %10, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @dataBufferAppend(i32* %21, i8* %22, i32 %23)
  br label %69

25:                                               ; preds = %17
  %26 = load i32, i32* @DL_DOCIDS, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @dlrInit(i32* %11, i32 %26, i8* %27, i32 %28)
  %30 = load i32, i32* @DL_DOCIDS, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @dlrInit(i32* %12, i32 %30, i8* %31, i32 %32)
  %34 = load i32, i32* @DL_DOCIDS, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @dlwInit(i32* %13, i32 %34, i32* %35)
  br label %37

37:                                               ; preds = %63, %25
  %38 = call i64 @dlrAtEnd(i32* %11)
  %39 = icmp ne i64 %38, 0
  %40 = xor i1 %39, true
  br i1 %40, label %41, label %65

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %51, %41
  %43 = call i64 @dlrAtEnd(i32* %12)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = call i64 @dlrDocid(i32* %12)
  %47 = call i64 @dlrDocid(i32* %11)
  %48 = icmp slt i64 %46, %47
  br label %49

49:                                               ; preds = %45, %42
  %50 = phi i1 [ false, %42 ], [ %48, %45 ]
  br i1 %50, label %51, label %53

51:                                               ; preds = %49
  %52 = call i32 @dlrStep(i32* %12)
  br label %42

53:                                               ; preds = %49
  %54 = call i64 @dlrAtEnd(i32* %12)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = call i64 @dlrDocid(i32* %11)
  %58 = call i64 @dlrDocid(i32* %12)
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56, %53
  %61 = call i64 @dlrDocid(i32* %11)
  %62 = call i32 @dlwAdd(i32* %13, i64 %61)
  br label %63

63:                                               ; preds = %60, %56
  %64 = call i32 @dlrStep(i32* %11)
  br label %37

65:                                               ; preds = %37
  %66 = call i32 @dlrDestroy(i32* %11)
  %67 = call i32 @dlrDestroy(i32* %12)
  %68 = call i32 @dlwDestroy(i32* %13)
  br label %69

69:                                               ; preds = %65, %20, %16
  ret void
}

declare dso_local i32 @dataBufferAppend(i32*, i8*, i32) #1

declare dso_local i32 @dlrInit(i32*, i32, i8*, i32) #1

declare dso_local i32 @dlwInit(i32*, i32, i32*) #1

declare dso_local i64 @dlrAtEnd(i32*) #1

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
