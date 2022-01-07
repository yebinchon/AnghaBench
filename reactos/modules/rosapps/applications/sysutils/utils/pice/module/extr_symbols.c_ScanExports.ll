; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_ScanExports.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_ScanExports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pExports = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ScanExports pValue: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Not: %s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"%s @ %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%s %x @ %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ScanExports(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %6, align 8
  %12 = load i32*, i32** @pExports, align 8
  store i32* %12, i32** %7, align 8
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %8, align 4
  %14 = call i32 (...) @ENTER_FUNC()
  %15 = load i32*, i32** %4, align 8
  %16 = ptrtoint i32* %15 to i32
  %17 = call i32 @DPRINT(i32 %16)
  br label %18

18:                                               ; preds = %91, %2
  %19 = load i32*, i32** @pExports, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32*, i32** %7, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = call i32* @strstr(i32* %22, i8* %23)
  store i32* %24, i32** %6, align 8
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i32*, i32** %6, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %110

28:                                               ; preds = %25
  %29 = load i32*, i32** %6, align 8
  store i32* %29, i32** %11, align 8
  br label %30

30:                                               ; preds = %47, %28
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 10
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 13
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32*, i32** %6, align 8
  %40 = ptrtoint i32* %39 to i64
  %41 = load i32*, i32** @pExports, align 8
  %42 = ptrtoint i32* %41 to i64
  %43 = icmp sge i64 %40, %42
  br label %44

44:                                               ; preds = %38, %34, %30
  %45 = phi i1 [ false, %34 ], [ false, %30 ], [ %43, %38 ]
  br i1 %45, label %46, label %50

46:                                               ; preds = %44
  br label %47

47:                                               ; preds = %46
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 -1
  store i32* %49, i32** %6, align 8
  br label %30

50:                                               ; preds = %44
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %6, align 8
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %54 = bitcast i8* %53 to i32*
  store i32* %54, i32** %9, align 8
  br label %55

55:                                               ; preds = %65, %50
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 10
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 13
  br label %63

63:                                               ; preds = %59, %55
  %64 = phi i1 [ false, %55 ], [ %62, %59 ]
  br i1 %64, label %65, label %71

65:                                               ; preds = %63
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %6, align 8
  %68 = load i32, i32* %66, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %9, align 8
  store i32 %68, i32* %69, align 4
  br label %55

71:                                               ; preds = %63
  %72 = load i32*, i32** %9, align 8
  store i32 0, i32* %72, align 4
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %74 = call i64 @PICE_strtok(i8* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %75 = inttoptr i64 %74 to i32*
  store i32* %75, i32** %9, align 8
  store i64 0, i64* %10, align 8
  br label %76

76:                                               ; preds = %103, %71
  %77 = load i32*, i32** %9, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %109

79:                                               ; preds = %76
  %80 = load i64, i64* %10, align 8
  switch i64 %80, label %103 [
    i64 0, label %81
    i64 1, label %85
    i64 2, label %86
  ]

81:                                               ; preds = %79
  %82 = load i32*, i32** %9, align 8
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @ConvertTokenToHex(i32* %82, i32* %83)
  br label %103

85:                                               ; preds = %79
  br label %103

86:                                               ; preds = %79
  %87 = load i32*, i32** %9, align 8
  %88 = load i8*, i8** %3, align 8
  %89 = call i32 @strcmp(i32* %87, i8* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load i32*, i32** %9, align 8
  %93 = ptrtoint i32* %92 to i32
  %94 = call i32 @DPRINT(i32 %93)
  %95 = load i32*, i32** %11, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  store i32* %96, i32** %7, align 8
  br label %18

97:                                               ; preds = %86
  store i64 -1, i64* %10, align 8
  %98 = load i32, i32* @TRUE, align 4
  store i32 %98, i32* %8, align 4
  %99 = load i8*, i8** %3, align 8
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @DPRINT(i32 %101)
  br label %111

103:                                              ; preds = %79, %85, %81
  %104 = load i64, i64* %10, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %10, align 8
  %106 = call i64 @PICE_strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %107 = inttoptr i64 %106 to i8*
  %108 = bitcast i8* %107 to i32*
  store i32* %108, i32** %9, align 8
  br label %76

109:                                              ; preds = %76
  br label %110

110:                                              ; preds = %109, %25
  br label %111

111:                                              ; preds = %110, %97
  %112 = load i8*, i8** %3, align 8
  %113 = load i32*, i32** %4, align 8
  %114 = load i32*, i32** %4, align 8
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @DPRINT(i32 %115)
  %117 = call i32 (...) @LEAVE_FUNC()
  %118 = load i32, i32* %8, align 4
  ret i32 %118
}

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i32* @strstr(i32*, i8*) #1

declare dso_local i64 @PICE_strtok(i8*, i8*) #1

declare dso_local i32 @ConvertTokenToHex(i32*, i32*) #1

declare dso_local i32 @strcmp(i32*, i8*) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
