; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdump.c_pstr.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdump.c_pstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pstr.HEX = internal global i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@minify = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"\\'\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\\u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @pstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pstr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i64, i64* @minify, align 8
  %5 = icmp ne i64 %4, 0
  %6 = zext i1 %5 to i64
  %7 = select i1 %5, i32 39, i32 34
  %8 = trunc i32 %7 to i8
  %9 = call i32 @pc(i8 signext %8)
  br label %10

10:                                               ; preds = %81, %1
  %11 = load i8*, i8** %2, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %82

14:                                               ; preds = %10
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @chartorune(i32* %3, i8* %15)
  %17 = load i8*, i8** %2, align 8
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8* %19, i8** %2, align 8
  %20 = load i32, i32* %3, align 4
  switch i32 %20, label %37 [
    i32 39, label %21
    i32 34, label %23
    i32 92, label %25
    i32 8, label %27
    i32 12, label %29
    i32 10, label %31
    i32 13, label %33
    i32 9, label %35
  ]

21:                                               ; preds = %14
  %22 = call i32 @ps(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %81

23:                                               ; preds = %14
  %24 = call i32 @ps(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %81

25:                                               ; preds = %14
  %26 = call i32 @ps(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %81

27:                                               ; preds = %14
  %28 = call i32 @ps(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %81

29:                                               ; preds = %14
  %30 = call i32 @ps(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %81

31:                                               ; preds = %14
  %32 = call i32 @ps(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %81

33:                                               ; preds = %14
  %34 = call i32 @ps(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %81

35:                                               ; preds = %14
  %36 = call i32 @ps(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %81

37:                                               ; preds = %14
  %38 = load i32, i32* %3, align 4
  %39 = icmp slt i32 %38, 32
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %3, align 4
  %42 = icmp sgt i32 %41, 127
  br i1 %42, label %43, label %76

43:                                               ; preds = %40, %37
  %44 = call i32 @ps(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %45 = load i8*, i8** @pstr.HEX, align 8
  %46 = load i32, i32* %3, align 4
  %47 = ashr i32 %46, 12
  %48 = and i32 %47, 15
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %45, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = call i32 @pc(i8 signext %51)
  %53 = load i8*, i8** @pstr.HEX, align 8
  %54 = load i32, i32* %3, align 4
  %55 = ashr i32 %54, 8
  %56 = and i32 %55, 15
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %53, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = call i32 @pc(i8 signext %59)
  %61 = load i8*, i8** @pstr.HEX, align 8
  %62 = load i32, i32* %3, align 4
  %63 = ashr i32 %62, 4
  %64 = and i32 %63, 15
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %61, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = call i32 @pc(i8 signext %67)
  %69 = load i8*, i8** @pstr.HEX, align 8
  %70 = load i32, i32* %3, align 4
  %71 = and i32 %70, 15
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = call i32 @pc(i8 signext %74)
  br label %80

76:                                               ; preds = %40
  %77 = load i32, i32* %3, align 4
  %78 = trunc i32 %77 to i8
  %79 = call i32 @pc(i8 signext %78)
  br label %81

80:                                               ; preds = %43
  br label %81

81:                                               ; preds = %80, %76, %35, %33, %31, %29, %27, %25, %23, %21
  br label %10

82:                                               ; preds = %10
  %83 = load i64, i64* @minify, align 8
  %84 = icmp ne i64 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 39, i32 34
  %87 = trunc i32 %86 to i8
  %88 = call i32 @pc(i8 signext %87)
  ret void
}

declare dso_local i32 @pc(i8 signext) #1

declare dso_local i32 @chartorune(i32*, i8*) #1

declare dso_local i32 @ps(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
