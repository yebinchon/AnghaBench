; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_progress.c_PrSizeAndRateMeter.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_progress.c_PrSizeAndRateMeter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, i32, i32, i32, i32, i32, i32, i32*, i64, i64, i32*, i32, i32, i64, i32 (%struct.TYPE_4__*, i32)* }

@PrSizeAndRateMeter.uStr = internal global i8* null, align 8
@PrSizeAndRateMeter.uMult = internal global double 0.000000e+00, align 8
@kSizeUnknown = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c" (TAR)\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%-32s\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"%-32s  %10ld bytes  %6.2f %s/s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\0D%s\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"%s - [%ld bytes]\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\0A\0D\00", align 1
@gRemoteCWD = common dso_local global i32 0, align 4
@kNetReading = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrSizeAndRateMeter(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca [128 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  store double 0.000000e+00, double* %5, align 8
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %145 [
    i32 129, label %11
    i32 128, label %66
    i32 130, label %142
  ]

11:                                               ; preds = %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 13
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @kSizeUnknown, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 14
  store i32 (%struct.TYPE_4__*, i32)* @PrStatBar, i32 (%struct.TYPE_4__*, i32)** %19, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @PrStatBar(%struct.TYPE_4__* %20, i32 %21)
  br label %145

23:                                               ; preds = %11
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 13
  %26 = load i64, i64* %25, align 8
  %27 = sitofp i64 %26 to double
  %28 = call double @FileSize(double %27, i8** @PrSizeAndRateMeter.uStr, double* @PrSizeAndRateMeter.uMult)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 10
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %34, align 16
  br label %56

35:                                               ; preds = %23
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 10
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @AbbrevStr(i8* %36, i32* %39, i32 30, i32 0)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 11
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %35
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %47 = call i32 @strlen(i8* %46)
  %48 = sext i32 %47 to i64
  %49 = icmp ult i64 %48, 26
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %52 = call i32 @STRNCAT(i8* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %45, %35
  %54 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %55 = call i32 @STRNCAT(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %33
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 12
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @stderr, align 4
  %63 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %61, %56
  br label %145

66:                                               ; preds = %2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load double, double* %68, align 8
  %70 = fmul double %69, 1.024000e+03
  %71 = call double @FileSize(double %70, i8** %6, double* null)
  store double %71, double* %5, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 10
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %77, align 16
  br label %99

78:                                               ; preds = %66
  %79 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 10
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @AbbrevStr(i8* %79, i32* %82, i32 30, i32 0)
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 11
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %78
  %89 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %90 = call i32 @strlen(i8* %89)
  %91 = sext i32 %90 to i64
  %92 = icmp ult i64 %91, 26
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %95 = call i32 @STRNCAT(i8* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %88, %78
  %97 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %98 = call i32 @STRNCAT(i8* %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %76
  %100 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %101 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 9
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 8
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %104, %107
  %109 = load double, double* %5, align 8
  %110 = load i8*, i8** %6, align 8
  %111 = call i32 @sprintf(i8* %100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %101, i64 %108, double %109, i8* %110)
  %112 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %113 = call i32 @strlen(i8* %112)
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %121, %99
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %115, 78
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 %119
  store i8 32, i8* %120, align 1
  br label %121

121:                                              ; preds = %117
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %114

124:                                              ; preds = %114
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 %126
  store i8 0, i8* %127, align 1
  %128 = load i32, i32* @stderr, align 4
  %129 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %130 = call i32 (i32, i8*, ...) @fprintf(i32 %128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %129)
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 10
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 9
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 8
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %136, %139
  %141 = call i32 @SetXtermTitle(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32* %133, i64 %140)
  br label %145

142:                                              ; preds = %2
  %143 = load i32, i32* @stderr, align 4
  %144 = call i32 (i32, i8*, ...) @fprintf(i32 %143, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %145

145:                                              ; preds = %17, %2, %142, %124, %65
  ret void
}

declare dso_local i32 @PrStatBar(%struct.TYPE_4__*, i32) #1

declare dso_local double @FileSize(double, i8**, double*) #1

declare dso_local i32 @AbbrevStr(i8*, i32*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @STRNCAT(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i64, double, i8*) #1

declare dso_local i32 @SetXtermTitle(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
