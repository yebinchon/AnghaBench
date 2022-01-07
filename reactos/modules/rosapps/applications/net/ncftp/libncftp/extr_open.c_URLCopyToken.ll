; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_open.c_URLCopyToken.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_open.c_URLCopyToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @URLCopyToken(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i8], align 1
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = getelementptr inbounds i8, i8* %16, i64 -1
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %10, align 8
  br label %21

21:                                               ; preds = %76, %4
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = icmp ult i8* %22, %23
  br i1 %24, label %25, label %77

25:                                               ; preds = %21
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %7, align 8
  %28 = load i8, i8* %26, align 1
  %29 = sext i8 %28 to i32
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %77

33:                                               ; preds = %25
  %34 = load i32, i32* %12, align 4
  %35 = icmp eq i32 %34, 37
  br i1 %35, label %36, label %71

36:                                               ; preds = %33
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 2
  %40 = icmp ult i8* %37, %39
  br i1 %40, label %41, label %69

41:                                               ; preds = %36
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %7, align 8
  %44 = load i8, i8* %42, align 1
  %45 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  store i8 %44, i8* %45, align 1
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %7, align 8
  %48 = load i8, i8* %46, align 1
  %49 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 1
  store i8 %48, i8* %49, align 1
  %50 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 2
  store i8 0, i8* %50, align 1
  store i32 61183, i32* %11, align 4
  %51 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %52 = call i64 @sscanf(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %11)
  %53 = icmp sge i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %41
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 61183
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load i8*, i8** %5, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = icmp ult i8* %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i32, i32* %11, align 4
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** %5, align 8
  store i8 %63, i8* %64, align 1
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %5, align 8
  br label %67

67:                                               ; preds = %61, %57
  br label %68

68:                                               ; preds = %67, %54, %41
  br label %70

69:                                               ; preds = %36
  br label %77

70:                                               ; preds = %68
  br label %76

71:                                               ; preds = %33
  %72 = load i32, i32* %12, align 4
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %5, align 8
  store i8 %73, i8* %74, align 1
  br label %76

76:                                               ; preds = %71, %70
  br label %21

77:                                               ; preds = %69, %32, %21
  %78 = load i8*, i8** %5, align 8
  store i8 0, i8* %78, align 1
  ret void
}

declare dso_local i64 @sscanf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
