; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua-md5/extr_md5.c_md5.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua-md5/extr_md5.c_md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md5(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [4 x i64], align 16
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [4 x i64], align 16
  %11 = alloca [16 x i64], align 16
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %13 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %14 = call i32 @inic_digest(i64* %13)
  br label %15

15:                                               ; preds = %56, %3
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 2
  br i1 %17, label %18, label %84

18:                                               ; preds = %15
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %9, align 8
  %21 = sub nsw i64 %19, %20
  %22 = icmp sge i64 %21, 64
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %28

24:                                               ; preds = %18
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %9, align 8
  %27 = sub nsw i64 %25, %26
  br label %28

28:                                               ; preds = %24, %23
  %29 = phi i64 [ 64, %23 ], [ %27, %24 ]
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %12, align 4
  %31 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %32 = load i64, i64* %31, align 16
  %33 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  store i64 %32, i64* %33, align 16
  %34 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 1
  store i64 %35, i64* %36, align 8
  %37 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 2
  %38 = load i64, i64* %37, align 16
  %39 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 2
  store i64 %38, i64* %39, align 16
  %40 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 3
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 3
  store i64 %41, i64* %42, align 8
  %43 = getelementptr inbounds [16 x i64], [16 x i64]* %11, i64 0, i64 0
  %44 = load i8*, i8** %4, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @converte(i64* %43, i8* %46, i32 %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %52, label %56

52:                                               ; preds = %28
  %53 = getelementptr inbounds [16 x i64], [16 x i64]* %11, i64 0, i64 0
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @put_length(i64* %53, i64 %54)
  br label %56

56:                                               ; preds = %52, %28
  %57 = getelementptr inbounds [16 x i64], [16 x i64]* %11, i64 0, i64 0
  %58 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %59 = call i32 @digest(i64* %57, i64* %58)
  %60 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %61 = load i64, i64* %60, align 16
  %62 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %63 = load i64, i64* %62, align 16
  %64 = add nsw i64 %63, %61
  store i64 %64, i64* %62, align 16
  %65 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, %66
  store i64 %69, i64* %67, align 8
  %70 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 2
  %71 = load i64, i64* %70, align 16
  %72 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 2
  %73 = load i64, i64* %72, align 16
  %74 = add nsw i64 %73, %71
  store i64 %74, i64* %72, align 16
  %75 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 3
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 3
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, %76
  store i64 %79, i64* %77, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %9, align 8
  %83 = add nsw i64 %82, %81
  store i64 %83, i64* %9, align 8
  br label %15

84:                                               ; preds = %15
  %85 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @word32tobytes(i64* %85, i8* %86)
  ret void
}

declare dso_local i32 @inic_digest(i64*) #1

declare dso_local i32 @converte(i64*, i8*, i32, i32) #1

declare dso_local i32 @put_length(i64*, i64) #1

declare dso_local i32 @digest(i64*, i64*) #1

declare dso_local i32 @word32tobytes(i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
