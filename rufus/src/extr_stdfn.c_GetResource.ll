; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_stdfn.c_GetResource.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_stdfn.c_GetResource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"Could not locate resource '%s': %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Could not load resource '%s': %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Coult not allocate resource '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @GetResource(i32 %0, i8* %1, i8* %2, i8* %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 %5, i64* %12, align 8
  store i8* null, i8** %15, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i32* @FindResourceA(i32 %16, i8* %17, i8* %18)
  store i32* %19, i32** %14, align 8
  %20 = load i32*, i32** %14, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %6
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 (...) @WindowsErrorString()
  %25 = call i32 (i8*, i8*, ...) @uprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %24)
  br label %65

26:                                               ; preds = %6
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %14, align 8
  %29 = call i32* @LoadResource(i32 %27, i32* %28)
  store i32* %29, i32** %13, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 (...) @WindowsErrorString()
  %35 = call i32 (i8*, i8*, ...) @uprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %33, i32 %34)
  br label %65

36:                                               ; preds = %26
  %37 = load i32, i32* %7, align 4
  %38 = load i32*, i32** %14, align 8
  %39 = call i32 @SizeofResource(i32 %37, i32* %38)
  %40 = load i32*, i32** %11, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i64, i64* %12, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %36
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @malloc(i32 %45)
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %15, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 (i8*, i8*, ...) @uprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  br label %65

53:                                               ; preds = %43
  %54 = load i8*, i8** %15, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = call i64 @LockResource(i32* %55)
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @memcpy(i8* %54, i64 %56, i32 %58)
  br label %64

60:                                               ; preds = %36
  %61 = load i32*, i32** %13, align 8
  %62 = call i64 @LockResource(i32* %61)
  %63 = inttoptr i64 %62 to i8*
  store i8* %63, i8** %15, align 8
  br label %64

64:                                               ; preds = %60, %53
  br label %65

65:                                               ; preds = %64, %50, %32, %22
  %66 = load i8*, i8** %15, align 8
  ret i8* %66
}

declare dso_local i32* @FindResourceA(i32, i8*, i8*) #1

declare dso_local i32 @uprintf(i8*, i8*, ...) #1

declare dso_local i32 @WindowsErrorString(...) #1

declare dso_local i32* @LoadResource(i32, i32*) #1

declare dso_local i32 @SizeofResource(i32, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i64 @LockResource(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
