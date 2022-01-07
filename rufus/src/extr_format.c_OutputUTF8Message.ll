; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_format.c_OutputUTF8Message.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_format.c_OutputUTF8Message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CP_OEMCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%S\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @OutputUTF8Message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OutputUTF8Message(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %4, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %81

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @safe_strlen(i8* %9)
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %46, %8
  %13 = load i32, i32* %3, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %12
  %16 = load i8*, i8** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 10
  br i1 %23, label %42, label %24

24:                                               ; preds = %15
  %25 = load i8*, i8** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 13
  br i1 %32, label %42, label %33

33:                                               ; preds = %24
  %34 = load i8*, i8** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 32
  br label %42

42:                                               ; preds = %33, %24, %15
  %43 = phi i1 [ true, %24 ], [ true, %15 ], [ %41, %33 ]
  br label %44

44:                                               ; preds = %42, %12
  %45 = phi i1 [ false, %12 ], [ %43, %42 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %3, align 4
  br label %12

49:                                               ; preds = %44
  %50 = load i32, i32* %3, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %81

53:                                               ; preds = %49
  %54 = load i32, i32* @CP_OEMCP, align 4
  %55 = load i8*, i8** %2, align 8
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @MultiByteToWideChar(i32 %54, i32 0, i8* %55, i32 %56, i32* null, i32 0)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %81

61:                                               ; preds = %53
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  %64 = call i64 @calloc(i32 %63, i32 4)
  %65 = inttoptr i64 %64 to i32*
  store i32* %65, i32** %4, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %77, label %68

68:                                               ; preds = %61
  %69 = load i32, i32* @CP_OEMCP, align 4
  %70 = load i8*, i8** %2, align 8
  %71 = load i32, i32* %3, align 4
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  %75 = call i32 @MultiByteToWideChar(i32 %69, i32 0, i8* %70, i32 %71, i32* %72, i32 %74)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68, %61
  br label %81

78:                                               ; preds = %68
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @uprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %79)
  br label %81

81:                                               ; preds = %78, %77, %60, %52, %7
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @safe_free(i32* %82)
  ret void
}

declare dso_local i64 @safe_strlen(i8*) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @uprintf(i8*, i32*) #1

declare dso_local i32 @safe_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
