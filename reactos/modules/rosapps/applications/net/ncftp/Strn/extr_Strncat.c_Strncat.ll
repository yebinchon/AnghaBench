; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/Strn/extr_Strncat.c_Strncat.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/Strn/extr_Strncat.c_Strncat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Strncat(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %46

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = sub i64 %16, 1
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %13
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %6, align 8
  store i8* %23, i8** %10, align 8
  %24 = load i64, i64* %8, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %8, align 8
  br label %26

26:                                               ; preds = %41, %19
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %10, align 8
  %33 = load i8, i8* %31, align 1
  %34 = load i8*, i8** %9, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %9, align 8
  store i8 %33, i8* %34, align 1
  %36 = sext i8 %33 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i8*, i8** %5, align 8
  store i8* %39, i8** %4, align 8
  br label %48

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %8, align 8
  br label %26

44:                                               ; preds = %26
  %45 = load i8*, i8** %9, align 8
  store i8 0, i8* %45, align 1
  br label %46

46:                                               ; preds = %44, %13, %3
  %47 = load i8*, i8** %5, align 8
  store i8* %47, i8** %4, align 8
  br label %48

48:                                               ; preds = %46, %38
  %49 = load i8*, i8** %4, align 8
  ret i8* %49
}

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
