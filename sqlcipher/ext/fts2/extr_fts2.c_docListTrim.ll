; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_docListTrim.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_docListTrim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, i32, i32, i32*)* @docListTrim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @docListTrim(i32 %0, i8* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp sle i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @dlrInit(i32* %13, i32 %23, i8* %24, i32 %25)
  %27 = load i32, i32* %11, align 4
  %28 = load i32*, i32** %12, align 8
  %29 = call i32 @dlwInit(i32* %14, i32 %27, i32* %28)
  br label %30

30:                                               ; preds = %67, %6
  %31 = call i32 @dlrAtEnd(i32* %13)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %70

34:                                               ; preds = %30
  store i32 0, i32* %17, align 4
  %35 = call i32 @plrInit(i32* %15, i32* %13)
  br label %36

36:                                               ; preds = %59, %34
  %37 = call i32 @plrAtEnd(i32* %15)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %61

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = call i32 @plrColumn(i32* %15)
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43, %40
  %48 = load i32, i32* %17, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = call i32 @dlrDocid(i32* %13)
  %52 = call i32 @plwInit(i32* %16, i32* %14, i32 %51)
  store i32 1, i32* %17, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = call i32 @plrColumn(i32* %15)
  %55 = call i32 @plrPosition(i32* %15)
  %56 = call i32 @plrStartOffset(i32* %15)
  %57 = call i32 @plrEndOffset(i32* %15)
  %58 = call i32 @plwAdd(i32* %16, i32 %54, i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %53, %43
  %60 = call i32 @plrStep(i32* %15)
  br label %36

61:                                               ; preds = %36
  %62 = load i32, i32* %17, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = call i32 @plwTerminate(i32* %16)
  %66 = call i32 @plwDestroy(i32* %16)
  br label %67

67:                                               ; preds = %64, %61
  %68 = call i32 @plrDestroy(i32* %15)
  %69 = call i32 @dlrStep(i32* %13)
  br label %30

70:                                               ; preds = %30
  %71 = call i32 @dlwDestroy(i32* %14)
  %72 = call i32 @dlrDestroy(i32* %13)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dlrInit(i32*, i32, i8*, i32) #1

declare dso_local i32 @dlwInit(i32*, i32, i32*) #1

declare dso_local i32 @dlrAtEnd(i32*) #1

declare dso_local i32 @plrInit(i32*, i32*) #1

declare dso_local i32 @plrAtEnd(i32*) #1

declare dso_local i32 @plrColumn(i32*) #1

declare dso_local i32 @plwInit(i32*, i32*, i32) #1

declare dso_local i32 @dlrDocid(i32*) #1

declare dso_local i32 @plwAdd(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @plrPosition(i32*) #1

declare dso_local i32 @plrStartOffset(i32*) #1

declare dso_local i32 @plrEndOffset(i32*) #1

declare dso_local i32 @plrStep(i32*) #1

declare dso_local i32 @plwTerminate(i32*) #1

declare dso_local i32 @plwDestroy(i32*) #1

declare dso_local i32 @plrDestroy(i32*) #1

declare dso_local i32 @dlrStep(i32*) #1

declare dso_local i32 @dlwDestroy(i32*) #1

declare dso_local i32 @dlrDestroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
