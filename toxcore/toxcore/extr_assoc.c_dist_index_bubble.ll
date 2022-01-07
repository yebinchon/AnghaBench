; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_assoc.c_dist_index_bubble.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_assoc.c_dist_index_bubble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64, i64, i32*, i8*, i32 (i32*, i8*, i32*, i32*, i32*)*)* @dist_index_bubble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dist_index_bubble(i32* %0, i32* %1, i64 %2, i64 %3, i32* %4, i8* %5, i32 (i32*, i8*, i32*, i32*, i32*)* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32 (i32*, i8*, i32*, i32*, i32*)*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 (i32*, i8*, i32*, i32*, i32*)* %6, i32 (i32*, i8*, i32*, i32*, i32*)** %14, align 8
  %20 = load i64, i64* %10, align 8
  store i64 %20, i64* %15, align 8
  br label %21

21:                                               ; preds = %81, %7
  %22 = load i64, i64* %15, align 8
  %23 = load i64, i64* %11, align 8
  %24 = icmp ule i64 %22, %23
  br i1 %24, label %25, label %84

25:                                               ; preds = %21
  %26 = load i32*, i32** %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i64, i64* %15, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @dist_index_id(i32* %26, i32 %30)
  store i32* %31, i32** %17, align 8
  %32 = load i64, i64* %15, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %16, align 8
  br label %34

34:                                               ; preds = %77, %25
  %35 = load i64, i64* %16, align 8
  %36 = load i64, i64* %11, align 8
  %37 = icmp ule i64 %35, %36
  br i1 %37, label %38, label %80

38:                                               ; preds = %34
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i64, i64* %16, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32* @dist_index_id(i32* %39, i32 %43)
  store i32* %44, i32** %18, align 8
  %45 = load i32*, i32** %17, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %76

47:                                               ; preds = %38
  %48 = load i32*, i32** %18, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %76

50:                                               ; preds = %47
  %51 = load i32 (i32*, i8*, i32*, i32*, i32*)*, i32 (i32*, i8*, i32*, i32*, i32*)** %14, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = load i32*, i32** %17, align 8
  %56 = load i32*, i32** %18, align 8
  %57 = call i32 %51(i32* %52, i8* %53, i32* %54, i32* %55, i32* %56)
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %75

59:                                               ; preds = %50
  %60 = load i32*, i32** %9, align 8
  %61 = load i64, i64* %15, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %19, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = load i64, i64* %16, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = load i64, i64* %15, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* %19, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = load i64, i64* %16, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32 %71, i32* %74, align 4
  br label %75

75:                                               ; preds = %59, %50
  br label %76

76:                                               ; preds = %75, %47, %38
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %16, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %16, align 8
  br label %34

80:                                               ; preds = %34
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %15, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %15, align 8
  br label %21

84:                                               ; preds = %21
  ret void
}

declare dso_local i32* @dist_index_id(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
