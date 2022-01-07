; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_nextchar.c_writeUtf8.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_nextchar.c_writeUtf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @writeUtf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writeUtf8(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ult i32 %6, 128
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, 255
  %11 = trunc i32 %10 to i8
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 %11, i8* %13, align 1
  store i32 1, i32* %3, align 4
  br label %101

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp ult i32 %15, 2048
  br i1 %16, label %17, label %35

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = lshr i32 %18, 6
  %20 = and i32 %19, 31
  %21 = trunc i32 %20 to i8
  %22 = zext i8 %21 to i32
  %23 = add nsw i32 192, %22
  %24 = trunc i32 %23 to i8
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 %24, i8* %26, align 1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 63
  %29 = trunc i32 %28 to i8
  %30 = zext i8 %29 to i32
  %31 = add nsw i32 128, %30
  %32 = trunc i32 %31 to i8
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8 %32, i8* %34, align 1
  store i32 2, i32* %3, align 4
  br label %101

35:                                               ; preds = %14
  %36 = load i32, i32* %5, align 4
  %37 = icmp ult i32 %36, 65536
  br i1 %37, label %38, label %65

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = lshr i32 %39, 12
  %41 = and i32 %40, 15
  %42 = trunc i32 %41 to i8
  %43 = zext i8 %42 to i32
  %44 = add nsw i32 224, %43
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  store i8 %45, i8* %47, align 1
  %48 = load i32, i32* %5, align 4
  %49 = lshr i32 %48, 6
  %50 = and i32 %49, 63
  %51 = trunc i32 %50 to i8
  %52 = zext i8 %51 to i32
  %53 = add nsw i32 128, %52
  %54 = trunc i32 %53 to i8
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  store i8 %54, i8* %56, align 1
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, 63
  %59 = trunc i32 %58 to i8
  %60 = zext i8 %59 to i32
  %61 = add nsw i32 128, %60
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  store i8 %62, i8* %64, align 1
  store i32 3, i32* %3, align 4
  br label %101

65:                                               ; preds = %35
  %66 = load i32, i32* %5, align 4
  %67 = lshr i32 %66, 18
  %68 = and i32 %67, 7
  %69 = trunc i32 %68 to i8
  %70 = zext i8 %69 to i32
  %71 = add nsw i32 240, %70
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %4, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  store i8 %72, i8* %74, align 1
  %75 = load i32, i32* %5, align 4
  %76 = lshr i32 %75, 12
  %77 = and i32 %76, 63
  %78 = trunc i32 %77 to i8
  %79 = zext i8 %78 to i32
  %80 = add nsw i32 128, %79
  %81 = trunc i32 %80 to i8
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  store i8 %81, i8* %83, align 1
  %84 = load i32, i32* %5, align 4
  %85 = lshr i32 %84, 6
  %86 = and i32 %85, 63
  %87 = trunc i32 %86 to i8
  %88 = zext i8 %87 to i32
  %89 = add nsw i32 128, %88
  %90 = trunc i32 %89 to i8
  %91 = load i8*, i8** %4, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 2
  store i8 %90, i8* %92, align 1
  %93 = load i32, i32* %5, align 4
  %94 = and i32 %93, 63
  %95 = trunc i32 %94 to i8
  %96 = zext i8 %95 to i32
  %97 = add nsw i32 128, %96
  %98 = trunc i32 %97 to i8
  %99 = load i8*, i8** %4, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 3
  store i8 %98, i8* %100, align 1
  store i32 4, i32* %3, align 4
  br label %101

101:                                              ; preds = %65, %38, %17, %8
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
