; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_tbar.c_BuildDriveLine.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_tbar.c_BuildDriveLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@BuildDriveLine.szDrive = internal global [64 x i32] zeroinitializer, align 16
@rgiDrive = common dso_local global i64* null, align 8
@aDriveInfo = common dso_local global %struct.TYPE_4__* null, align 8
@DE_REGNAME = common dso_local global i64 0, align 8
@ALTNAME_REG = common dso_local global i64 0, align 8
@CHAR_NULL = common dso_local global i32 0, align 4
@CHAR_COLON = common dso_local global i32 0, align 4
@CHAR_SPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BuildDriveLine(i32** %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i32** %0, i32*** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64*, i64** @rgiDrive, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %43, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @IsRemovableDrive(i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @IsCDRomDrive(i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %23, %19
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @aDriveInfo, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %77

35:                                               ; preds = %27
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @aDriveInfo, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %77, label %43

43:                                               ; preds = %35, %23, %4
  %44 = load i64*, i64** @rgiDrive, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i32**, i32*** %6, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i64 @GetVolShare(i64 %47, i32** %48, i64 %49)
  store i64 %50, i64* %12, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = load i64, i64* @DE_REGNAME, align 8
  %54 = load i64, i64* %12, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %63

57:                                               ; preds = %52
  br label %78

58:                                               ; preds = %43
  %59 = load i64, i64* @ALTNAME_REG, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %62, %56
  %64 = load i32**, i32*** %6, align 8
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %11, align 8
  %66 = load i32**, i32*** %6, align 8
  store i32* getelementptr inbounds ([64 x i32], [64 x i32]* @BuildDriveLine.szDrive, i64 0, i64 0), i32** %66, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = call i64 @COUNTOF(i32* getelementptr inbounds ([64 x i32], [64 x i32]* @BuildDriveLine.szDrive, i64 0, i64 0))
  %69 = sub nsw i64 %68, 4
  %70 = call i32 @StrNCpy(i32* getelementptr inbounds ([64 x i32], [64 x i32]* @BuildDriveLine.szDrive, i64 0, i64 3), i32* %67, i64 %69)
  br label %75

71:                                               ; preds = %58
  %72 = load i32**, i32*** %6, align 8
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 -3
  store i32* %74, i32** %72, align 8
  br label %75

75:                                               ; preds = %71, %63
  br label %76

76:                                               ; preds = %75
  br label %84

77:                                               ; preds = %35, %27
  br label %78

78:                                               ; preds = %77, %57
  %79 = load i32**, i32*** %6, align 8
  store i32* getelementptr inbounds ([64 x i32], [64 x i32]* @BuildDriveLine.szDrive, i64 0, i64 0), i32** %79, align 8
  %80 = load i32, i32* @CHAR_NULL, align 4
  %81 = load i32**, i32*** %6, align 8
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 3
  store i32 %80, i32* %83, align 4
  br label %84

84:                                               ; preds = %78, %76
  %85 = load i32**, i32*** %6, align 8
  %86 = load i32*, i32** %85, align 8
  %87 = load i64*, i64** @rgiDrive, align 8
  %88 = load i64, i64* %7, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @DRIVESET(i32* %86, i64 %90)
  %92 = load i32, i32* @CHAR_COLON, align 4
  %93 = load i32**, i32*** %6, align 8
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  store i32 %92, i32* %95, align 4
  %96 = load i32, i32* @CHAR_SPACE, align 4
  %97 = load i32**, i32*** %6, align 8
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @IsRemovableDrive(i64) #1

declare dso_local i32 @IsCDRomDrive(i64) #1

declare dso_local i64 @GetVolShare(i64, i32**, i64) #1

declare dso_local i32 @StrNCpy(i32*, i32*, i64) #1

declare dso_local i64 @COUNTOF(i32*) #1

declare dso_local i32 @DRIVESET(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
