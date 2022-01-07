; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_string.c_test_StrRChrA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_string.c_test_StrRChrA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"found char %d in wrong place\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"found char not in the string\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_StrRChrA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_StrRChrA() #0 {
  %1 = alloca [129 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 32, i32* %2, align 4
  br label %6

6:                                                ; preds = %15, %0
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 128
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = trunc i32 %10 to i8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [129 x i8], [129 x i8]* %1, i64 0, i64 %13
  store i8 %11, i8* %14, align 1
  br label %15

15:                                               ; preds = %9
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %2, align 4
  br label %6

18:                                               ; preds = %6
  %19 = getelementptr inbounds [129 x i8], [129 x i8]* %1, i64 0, i64 128
  store i8 0, i8* %19, align 16
  store i32 32, i32* %2, align 4
  br label %20

20:                                               ; preds = %39, %18
  %21 = load i32, i32* %2, align 4
  %22 = icmp slt i32 %21, 128
  br i1 %22, label %23, label %42

23:                                               ; preds = %20
  %24 = getelementptr inbounds [129 x i8], [129 x i8]* %1, i64 0, i64 0
  %25 = getelementptr inbounds i8, i8* %24, i64 32
  %26 = load i32, i32* %2, align 4
  %27 = call i8* @StrRChrA(i8* %25, i8* null, i32 %26)
  store i8* %27, i8** %3, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds [129 x i8], [129 x i8]* %1, i64 0, i64 0
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp eq i64 %32, %34
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %2, align 4
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %23
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %2, align 4
  br label %20

42:                                               ; preds = %20
  store i32 32, i32* %2, align 4
  br label %43

43:                                               ; preds = %59, %42
  %44 = load i32, i32* %2, align 4
  %45 = icmp slt i32 %44, 128
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = getelementptr inbounds [129 x i8], [129 x i8]* %1, i64 0, i64 0
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i32, i32* %2, align 4
  %53 = call i8* @StrRChrA(i8* %51, i8* null, i32 %52)
  store i8* %53, i8** %4, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = icmp ne i8* %54, null
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %46
  %60 = load i32, i32* %2, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %2, align 4
  br label %43

62:                                               ; preds = %43
  store i32 32, i32* %2, align 4
  br label %63

63:                                               ; preds = %81, %62
  %64 = load i32, i32* %2, align 4
  %65 = icmp slt i32 %64, 128
  br i1 %65, label %66, label %84

66:                                               ; preds = %63
  %67 = getelementptr inbounds [129 x i8], [129 x i8]* %1, i64 0, i64 0
  %68 = load i32, i32* %2, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = getelementptr inbounds [129 x i8], [129 x i8]* %1, i64 0, i64 0
  %73 = getelementptr inbounds i8, i8* %72, i64 127
  %74 = load i32, i32* %2, align 4
  %75 = call i8* @StrRChrA(i8* %71, i8* %73, i32 %74)
  store i8* %75, i8** %5, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = icmp ne i8* %76, null
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %66
  %82 = load i32, i32* %2, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %2, align 4
  br label %63

84:                                               ; preds = %63
  ret void
}

declare dso_local i8* @StrRChrA(i8*, i8*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
