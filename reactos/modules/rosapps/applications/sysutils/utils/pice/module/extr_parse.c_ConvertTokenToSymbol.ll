; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_parse.c_ConvertTokenToSymbol.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_parse.c_ConvertTokenToSymbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"ConvertTokenToSymbol()\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"ConvertTokenToSymbol(): module!symbol syntax detected\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"ConvertTokenToSymbol(): module = %s symbol = %s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@pCurrentMod = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ConvertTokenToSymbol(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [64 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = call i32 @DPRINT(i32 ptrtoint ([24 x i8]* @.str to i32))
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @PICE_strcpy(i8* %11, i8* %12)
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i8* @PICE_strchr(i8* %15, i8 signext 33)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %41

19:                                               ; preds = %2
  %20 = call i32 @DPRINT(i32 ptrtoint ([55 x i8]* @.str.1 to i32))
  %21 = load i8*, i8** %6, align 8
  store i8 0, i8* %21, align 1
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = ptrtoint i8* %25 to i32
  %27 = call i32 @DPRINT(i32 %26)
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @IsModuleLoaded(i8* %28)
  store i64 %29, i64* %9, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %19
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @FindFunctionInModuleByName(i8* %32, i64 %33)
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  %36 = icmp ne i32 %34, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @TRUE, align 4
  store i32 %38, i32* %3, align 4
  br label %59

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %19
  br label %57

41:                                               ; preds = %2
  %42 = load i64, i64* @pCurrentMod, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load i8*, i8** %8, align 8
  %46 = load i64, i64* @pCurrentMod, align 8
  %47 = call i32 @FindFunctionInModuleByName(i8* %45, i64 %46)
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  %49 = icmp ne i32 %47, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %3, align 4
  br label %59

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %41
  %54 = load i8*, i8** %8, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @ScanExports(i8* %54, i32* %55)
  store i32 %56, i32* %3, align 4
  br label %59

57:                                               ; preds = %40
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %53, %50, %37
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i32 @PICE_strcpy(i8*, i8*) #1

declare dso_local i8* @PICE_strchr(i8*, i8 signext) #1

declare dso_local i64 @IsModuleLoaded(i8*) #1

declare dso_local i32 @FindFunctionInModuleByName(i8*, i64) #1

declare dso_local i32 @ScanExports(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
