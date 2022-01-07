; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_pagesig.c_vlogSignature.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_pagesig.c_vlogSignature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"-%08x%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*)* @vlogSignature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlogSignature(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 %11, 16
  br i1 %12, label %13, label %35

13:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %31, %13
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %10, align 4
  %21 = mul nsw i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %18
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  br label %14

34:                                               ; preds = %14
  br label %92

35:                                               ; preds = %3
  %36 = load i8*, i8** %4, align 8
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %60, %35
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 %40, 7
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %38
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = add i32 %46, %47
  %49 = load i32, i32* %7, align 4
  %50 = add i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = add i32 %53, %54
  %56 = load i32, i32* %8, align 4
  %57 = add i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  store i32* %59, i32** %9, align 8
  br label %60

60:                                               ; preds = %43
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 8
  store i32 %62, i32* %10, align 4
  br label %38

63:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %80, %63
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %65, 8
  br i1 %66, label %67, label %83

67:                                               ; preds = %64
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* %10, align 4
  %70 = mul nsw i32 %69, 2
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  %73 = load i8*, i8** %4, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %67
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %64

83:                                               ; preds = %64
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %10, align 4
  %86 = mul nsw i32 %85, 2
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %83, %34
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
