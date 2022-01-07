; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_docListPhraseMerge.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_docListPhraseMerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DL_POSITIONS_OFFSETS = common dso_local global i32 0, align 4
@DL_POSITIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32, i32, i32*)* @docListPhraseMerge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @docListPhraseMerge(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* %10, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %6
  br label %70

22:                                               ; preds = %18
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @DL_POSITIONS_OFFSETS, align 4
  %25 = icmp ne i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* @DL_POSITIONS, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @dlrInit(i32* %13, i32 %28, i8* %29, i32 %30)
  %32 = load i32, i32* @DL_POSITIONS, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @dlrInit(i32* %14, i32 %32, i8* %33, i32 %34)
  %36 = load i32, i32* %11, align 4
  %37 = load i32*, i32** %12, align 8
  %38 = call i32 @dlwInit(i32* %15, i32 %36, i32* %37)
  br label %39

39:                                               ; preds = %65, %22
  %40 = call i32 @dlrAtEnd(i32* %13)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = call i32 @dlrAtEnd(i32* %14)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %42, %39
  %47 = phi i1 [ false, %39 ], [ %45, %42 ]
  br i1 %47, label %48, label %66

48:                                               ; preds = %46
  %49 = call i64 @dlrDocid(i32* %13)
  %50 = call i64 @dlrDocid(i32* %14)
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i32 @dlrStep(i32* %13)
  br label %65

54:                                               ; preds = %48
  %55 = call i64 @dlrDocid(i32* %14)
  %56 = call i64 @dlrDocid(i32* %13)
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 @dlrStep(i32* %14)
  br label %64

60:                                               ; preds = %54
  %61 = call i32 @posListPhraseMerge(i32* %13, i32* %14, i32* %15)
  %62 = call i32 @dlrStep(i32* %13)
  %63 = call i32 @dlrStep(i32* %14)
  br label %64

64:                                               ; preds = %60, %58
  br label %65

65:                                               ; preds = %64, %52
  br label %39

66:                                               ; preds = %46
  %67 = call i32 @dlrDestroy(i32* %13)
  %68 = call i32 @dlrDestroy(i32* %14)
  %69 = call i32 @dlwDestroy(i32* %15)
  br label %70

70:                                               ; preds = %66, %21
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dlrInit(i32*, i32, i8*, i32) #1

declare dso_local i32 @dlwInit(i32*, i32, i32*) #1

declare dso_local i32 @dlrAtEnd(i32*) #1

declare dso_local i64 @dlrDocid(i32*) #1

declare dso_local i32 @dlrStep(i32*) #1

declare dso_local i32 @posListPhraseMerge(i32*, i32*, i32*) #1

declare dso_local i32 @dlrDestroy(i32*) #1

declare dso_local i32 @dlwDestroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
