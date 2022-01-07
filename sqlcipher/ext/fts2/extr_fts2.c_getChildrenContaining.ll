; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_getChildrenContaining.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_getChildrenContaining.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32, i32, i32*, i32*)* @getChildrenContaining to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getChildrenContaining(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp sgt i32 %16, 1
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i8*, i8** %8, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @interiorReaderInit(i8* %26, i32 %27, i32* %15)
  br label %29

29:                                               ; preds = %39, %7
  %30 = call i32 @interiorReaderAtEnd(i32* %15)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i64 @interiorReaderTermCmp(i32* %15, i8* %34, i32 %35, i32 0)
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %41

39:                                               ; preds = %33
  %40 = call i32 @interiorReaderStep(i32* %15)
  br label %29

41:                                               ; preds = %38, %29
  %42 = call i32 @interiorReaderCurrentBlockid(i32* %15)
  %43 = load i32*, i32** %13, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %55, %41
  %45 = call i32 @interiorReaderAtEnd(i32* %15)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i64 @interiorReaderTermCmp(i32* %15, i8* %49, i32 %50, i32 %51)
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %57

55:                                               ; preds = %48
  %56 = call i32 @interiorReaderStep(i32* %15)
  br label %44

57:                                               ; preds = %54, %44
  %58 = call i32 @interiorReaderCurrentBlockid(i32* %15)
  %59 = load i32*, i32** %14, align 8
  store i32 %58, i32* %59, align 4
  %60 = call i32 @interiorReaderDestroy(i32* %15)
  %61 = load i32*, i32** %14, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %13, align 8
  %64 = load i32, i32* %63, align 4
  %65 = icmp sge i32 %62, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %57
  %71 = load i32*, i32** %13, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %14, align 8
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %72, %74
  br label %76

76:                                               ; preds = %70, %57
  %77 = phi i1 [ true, %57 ], [ %75, %70 ]
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @interiorReaderInit(i8*, i32, i32*) #1

declare dso_local i32 @interiorReaderAtEnd(i32*) #1

declare dso_local i64 @interiorReaderTermCmp(i32*, i8*, i32, i32) #1

declare dso_local i32 @interiorReaderStep(i32*) #1

declare dso_local i32 @interiorReaderCurrentBlockid(i32*) #1

declare dso_local i32 @interiorReaderDestroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
