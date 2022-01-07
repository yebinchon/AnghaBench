; ModuleID = '/home/carl/AnghaBench/zstd/programs/extr_zstdcli.c_parseCoverParameters.c'
source_filename = "/home/carl/AnghaBench/zstd/programs/extr_zstdcli.c_parseCoverParameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, i32, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"k=\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"d=\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"steps=\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"split=\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"shrink\00", align 1
@kDefaultRegression = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [45 x i8] c"cover: k=%u\0Ad=%u\0Asteps=%u\0Asplit=%u\0Ashrink%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_4__*)* @parseCoverParameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parseCoverParameters(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %8 = call i32 @memset(%struct.TYPE_4__* %7, i32 0, i32 48)
  br label %9

9:                                                ; preds = %103, %73, %53, %37, %21, %2
  %10 = call i64 @longCommandWArg(i8** %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = call i8* @readU32FromChar(i8** %4)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 5
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 44
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %4, align 8
  br label %9

24:                                               ; preds = %12
  br label %108

25:                                               ; preds = %9
  %26 = call i64 @longCommandWArg(i8** %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = call i8* @readU32FromChar(i8** %4)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 44
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %4, align 8
  br label %9

40:                                               ; preds = %28
  br label %108

41:                                               ; preds = %25
  %42 = call i64 @longCommandWArg(i8** %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = call i8* @readU32FromChar(i8** %4)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 44
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %4, align 8
  br label %9

56:                                               ; preds = %44
  br label %108

57:                                               ; preds = %41
  %58 = call i64 @longCommandWArg(i8** %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %57
  %61 = call i8* @readU32FromChar(i8** %4)
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = uitofp i32 %63 to double
  %65 = fdiv double %64, 1.000000e+02
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store double %65, double* %67, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 44
  br i1 %72, label %73, label %76

73:                                               ; preds = %60
  %74 = load i8*, i8** %4, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %4, align 8
  br label %9

76:                                               ; preds = %60
  br label %108

77:                                               ; preds = %57
  %78 = call i64 @longCommandWArg(i8** %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %107

80:                                               ; preds = %77
  %81 = load i8*, i8** @kDefaultRegression, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i32 1, i32* %85, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 61
  br i1 %90, label %91, label %97

91:                                               ; preds = %80
  %92 = load i8*, i8** %4, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %4, align 8
  %94 = call i8* @readU32FromChar(i8** %4)
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  br label %97

97:                                               ; preds = %91, %80
  %98 = load i8*, i8** %4, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 44
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i8*, i8** %4, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %4, align 8
  br label %9

106:                                              ; preds = %97
  br label %108

107:                                              ; preds = %77
  store i32 0, i32* %3, align 4
  br label %134

108:                                              ; preds = %106, %76, %56, %40, %24
  %109 = load i8*, i8** %4, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 0
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %134

115:                                              ; preds = %108
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 5
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 4
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 3
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load double, double* %126, align 8
  %128 = fmul double %127, 1.000000e+02
  %129 = fptoui double %128 to i32
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @DISPLAYLEVEL(i32 4, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i8* %118, i8* %121, i8* %124, i32 %129, i8* %132)
  store i32 1, i32* %3, align 4
  br label %134

134:                                              ; preds = %115, %114, %107
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @longCommandWArg(i8**, i8*) #1

declare dso_local i8* @readU32FromChar(i8**) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, i8*, i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
