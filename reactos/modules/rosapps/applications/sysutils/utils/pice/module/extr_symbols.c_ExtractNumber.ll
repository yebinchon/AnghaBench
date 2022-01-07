; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_ExtractNumber.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_ExtractNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"ExtractNumber(): %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"ExtractNumber(): [1] invalid page %x hit!\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"ExtractNumber(): [2] invalid page %x hit!\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"ExtractNumber(): [3] invalid page %x hit!\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"ExtractNumber(): [4] invalid page %x hit!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ExtractNumber(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = ptrtoint i8* %7 to i32
  %9 = call i32 @DPRINT(i32 %8)
  %10 = load i8*, i8** %3, align 8
  %11 = ptrtoint i8* %10 to i32
  %12 = call i32 @IsAddressValid(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = ptrtoint i8* %15 to i32
  %17 = call i32 @DPRINT(i32 %16)
  store i32 0, i32* %2, align 4
  br label %82

18:                                               ; preds = %1
  %19 = load i8*, i8** %3, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 45
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %3, align 8
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i8*, i8** %3, align 8
  %28 = ptrtoint i8* %27 to i32
  %29 = call i32 @IsAddressValid(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i8*, i8** %3, align 8
  %33 = ptrtoint i8* %32 to i32
  %34 = call i32 @DPRINT(i32 %33)
  store i32 0, i32* %2, align 4
  br label %82

35:                                               ; preds = %26
  %36 = load i8*, i8** %3, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 48
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 10, i32* %5, align 4
  br label %42

41:                                               ; preds = %35
  store i32 8, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %40
  %43 = load i8*, i8** %3, align 8
  %44 = ptrtoint i8* %43 to i32
  %45 = call i32 @IsAddressValid(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %3, align 8
  %49 = ptrtoint i8* %48 to i32
  %50 = call i32 @DPRINT(i32 %49)
  store i32 0, i32* %2, align 4
  br label %82

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %77, %51
  %53 = load i8*, i8** %3, align 8
  %54 = load i8, i8* %53, align 1
  %55 = call i64 @PICE_isdigit(i8 signext %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = mul nsw i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load i8*, i8** %3, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = sub nsw i32 %63, 48
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %6, align 4
  %67 = load i8*, i8** %3, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %3, align 8
  %69 = load i8*, i8** %3, align 8
  %70 = ptrtoint i8* %69 to i32
  %71 = call i32 @IsAddressValid(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %57
  %74 = load i8*, i8** %3, align 8
  %75 = ptrtoint i8* %74 to i32
  %76 = call i32 @DPRINT(i32 %75)
  store i32 0, i32* %2, align 4
  br label %82

77:                                               ; preds = %57
  br label %52

78:                                               ; preds = %52
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %4, align 4
  %81 = mul nsw i32 %79, %80
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %78, %73, %47, %31, %14
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i32 @IsAddressValid(i32) #1

declare dso_local i64 @PICE_isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
