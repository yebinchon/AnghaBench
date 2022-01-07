; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_namei.c_open_namei.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_namei.c_open_namei.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32, i8*, i64, i32, i32, i8*, i32*)* @open_namei to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @open_namei(i32 %0, i32 %1, i32 %2, i8* %3, i64 %4, i32 %5, i32 %6, i8* %7, i32* %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i64 %4, i64* %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i32* %8, i32** %19, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i8*, i8** %14, align 8
  %29 = load i64, i64* %15, align 8
  %30 = load i32, i32* %17, align 4
  %31 = load i8*, i8** %18, align 8
  %32 = call i64 @dir_namei(i32 %25, i32 %26, i32 %27, i8* %28, i64 %29, i32 %30, i8* %31, i8** %20, i32* %21, i32* %22)
  store i64 %32, i64* %24, align 8
  %33 = load i64, i64* %24, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %9
  %36 = load i64, i64* %24, align 8
  store i64 %36, i64* %10, align 8
  br label %73

37:                                               ; preds = %9
  %38 = load i32, i32* %21, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %22, align 4
  %42 = load i32*, i32** %19, align 8
  store i32 %41, i32* %42, align 4
  store i64 0, i64* %10, align 8
  br label %73

43:                                               ; preds = %37
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %22, align 4
  %46 = load i8*, i8** %20, align 8
  %47 = load i32, i32* %21, align 4
  %48 = load i8*, i8** %18, align 8
  %49 = call i64 @ext2fs_lookup(i32 %44, i32 %45, i8* %46, i32 %47, i8* %48, i32* %23)
  store i64 %49, i64* %24, align 8
  %50 = load i64, i64* %24, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i64, i64* %24, align 8
  store i64 %53, i64* %10, align 8
  br label %73

54:                                               ; preds = %43
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %22, align 4
  %61 = load i32, i32* %23, align 4
  %62 = load i32, i32* %17, align 4
  %63 = load i8*, i8** %18, align 8
  %64 = call i64 @follow_link(i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i8* %63, i32* %23)
  store i64 %64, i64* %24, align 8
  %65 = load i64, i64* %24, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i64, i64* %24, align 8
  store i64 %68, i64* %10, align 8
  br label %73

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69, %54
  %71 = load i32, i32* %23, align 4
  %72 = load i32*, i32** %19, align 8
  store i32 %71, i32* %72, align 4
  store i64 0, i64* %10, align 8
  br label %73

73:                                               ; preds = %70, %67, %52, %40, %35
  %74 = load i64, i64* %10, align 8
  ret i64 %74
}

declare dso_local i64 @dir_namei(i32, i32, i32, i8*, i64, i32, i8*, i8**, i32*, i32*) #1

declare dso_local i64 @ext2fs_lookup(i32, i32, i8*, i32, i8*, i32*) #1

declare dso_local i64 @follow_link(i32, i32, i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
