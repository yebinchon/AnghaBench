; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_bitops.c_ext2fs_bitcount.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_bitops.c_ext2fs_bitcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_bitcount(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %5, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %19, %2
  %10 = load i8*, i8** %5, align 8
  %11 = ptrtoint i8* %10 to i64
  %12 = and i64 %11, 3
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = icmp ugt i32 %15, 0
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi i1 [ false, %9 ], [ %16, %14 ]
  br i1 %18, label %19, label %31

19:                                               ; preds = %17
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %5, align 8
  %22 = load i8, i8* %20, align 1
  %23 = zext i8 %22 to i32
  %24 = call i64 @popcount8(i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %4, align 4
  %30 = add i32 %29, -1
  store i32 %30, i32* %4, align 4
  br label %9

31:                                               ; preds = %17
  %32 = load i8*, i8** %5, align 8
  %33 = bitcast i8* %32 to i32*
  store i32* %33, i32** %6, align 8
  br label %34

34:                                               ; preds = %37, %31
  %35 = load i32, i32* %4, align 4
  %36 = icmp ugt i32 %35, 4
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %6, align 8
  %40 = load i32, i32* %38, align 4
  %41 = call i64 @popcount32(i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %4, align 4
  %47 = sub i32 %46, 4
  store i32 %47, i32* %4, align 4
  br label %34

48:                                               ; preds = %34
  %49 = load i32*, i32** %6, align 8
  %50 = bitcast i32* %49 to i8*
  store i8* %50, i8** %5, align 8
  br label %51

51:                                               ; preds = %54, %48
  %52 = load i32, i32* %4, align 4
  %53 = icmp ugt i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %51
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %5, align 8
  %57 = load i8, i8* %55, align 1
  %58 = zext i8 %57 to i32
  %59 = call i64 @popcount8(i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = zext i32 %60 to i64
  %62 = add nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %4, align 4
  %65 = add i32 %64, -1
  store i32 %65, i32* %4, align 4
  br label %51

66:                                               ; preds = %51
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i64 @popcount8(i32) #1

declare dso_local i64 @popcount32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
