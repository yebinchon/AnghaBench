; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_moduleTypeEncodeId.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_moduleTypeEncodeId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ModuleTypeNameCharSet = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @moduleTypeEncodeId(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i8*, i8** @ModuleTypeNameCharSet, align 8
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = icmp ne i32 %13, 9
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 1023
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %16
  store i32 0, i32* %3, align 4
  br label %59

23:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %50, %23
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 9
  br i1 %26, label %27, label %53

27:                                               ; preds = %24
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = call i8* @strchr(i8* %28, i8 signext %33)
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %59

38:                                               ; preds = %27
  %39 = load i8*, i8** %9, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  store i64 %43, i64* %10, align 8
  %44 = load i32, i32* %7, align 4
  %45 = shl i32 %44, 6
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %10, align 8
  %48 = or i64 %46, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %38
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %24

53:                                               ; preds = %24
  %54 = load i32, i32* %7, align 4
  %55 = shl i32 %54, 10
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %53, %37, %22, %15
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
