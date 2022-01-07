; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/kernel32/extr_GetCurrentDirectory.c_CheckStringBufferA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/kernel32/extr_GetCurrentDirectory.c_CheckStringBufferA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"Size = %lu, Length = %lu\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Expected %x, found %x at offset %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Expected null terminator, found %x at offset %lu\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i64*, i64)* @CheckStringBufferA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckStringBufferA(i64* %0, i64 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i64*, i64** %6, align 8
  store i64* %14, i64** %10, align 8
  %15 = load i64*, i64** %6, align 8
  store i64* %15, i64** %11, align 8
  %16 = load i64*, i64** %8, align 8
  %17 = call i64 @strlen(i64* %16)
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %12, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %12, align 8
  %24 = call i32 @ok(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %22, i64 %23)
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %5, align 4
  br label %98

26:                                               ; preds = %4
  store i64 0, i64* %13, align 8
  br label %27

27:                                               ; preds = %54, %26
  %28 = load i64, i64* %13, align 8
  %29 = load i64, i64* %12, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %27
  %32 = load i64*, i64** %10, align 8
  %33 = load i64, i64* %13, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %8, align 8
  %37 = load i64, i64* %13, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %35, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %31
  %42 = load i64*, i64** %8, align 8
  %43 = load i64, i64* %13, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %10, align 8
  %47 = load i64, i64* %13, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %13, align 8
  %51 = call i32 @trace(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %45, i64 %49, i64 %50)
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %5, align 4
  br label %98

53:                                               ; preds = %31
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %13, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %13, align 8
  br label %27

57:                                               ; preds = %27
  %58 = load i64*, i64** %10, align 8
  %59 = load i64, i64* %13, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = load i64*, i64** %10, align 8
  %65 = load i64, i64* %13, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %13, align 8
  %69 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %67, i64 %68)
  %70 = load i64, i64* %13, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %13, align 8
  br label %72

72:                                               ; preds = %93, %57
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* %7, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %96

76:                                               ; preds = %72
  %77 = load i64*, i64** %11, align 8
  %78 = load i64, i64* %13, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %9, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %76
  %84 = load i64, i64* %9, align 8
  %85 = load i64*, i64** %11, align 8
  %86 = load i64, i64* %13, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %13, align 8
  %90 = call i32 @trace(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %84, i64 %88, i64 %89)
  %91 = load i32, i32* @FALSE, align 4
  store i32 %91, i32* %5, align 4
  br label %98

92:                                               ; preds = %76
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %13, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %13, align 8
  br label %72

96:                                               ; preds = %72
  %97 = load i32, i32* @TRUE, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %96, %83, %41, %21
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i64 @strlen(i64*) #1

declare dso_local i32 @ok(i32, i8*, i64, i64) #1

declare dso_local i32 @trace(i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
