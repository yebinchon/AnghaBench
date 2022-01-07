; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_parse.c_OutputIdtEntry.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_parse.c_OutputIdtEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i64 }

@tempCmd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"(%0.4X) %0.4X:%0.8X %u [task]\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"(%0.4X) %0.4X:%0.8X %u [int] (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"(%0.4X) %0.4X:%0.8X %u [int]\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"(%0.4X) %0.4X:%0.8X %u [trap] (%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"(%0.4X) %0.4X:%0.8X %u [trap]\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"(%0.4X) INVALID\0A\00", align 1
@OUTPUT_WINDOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OutputIdtEntry(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = shl i32 %17, 16
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %18, %23
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %6, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %103 [
    i32 5, label %31
    i32 6, label %43
    i32 14, label %43
    i32 7, label %73
    i32 15, label %73
  ]

31:                                               ; preds = %2
  %32 = load i32, i32* @tempCmd, align 4
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @GetLinearAddress(i64 %35, i64 0)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i8*, i64, ...) @PICE_sprintf(i32 %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %33, i64 %34, i32 %36, i32 %41)
  br label %107

43:                                               ; preds = %2, %2
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @GetLinearAddress(i64 %44, i64 %45)
  %47 = call i32 @ScanExportsByAddress(i32* %7, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load i32, i32* @tempCmd, align 4
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = load i64, i64* %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 (i32, i8*, i64, ...) @PICE_sprintf(i32 %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %51, i64 %52, i64 %53, i32 %58, i32 %59)
  br label %72

61:                                               ; preds = %43
  %62 = load i32, i32* @tempCmd, align 4
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = load i64, i64* %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32, i8*, i64, ...) @PICE_sprintf(i32 %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %63, i64 %64, i64 %65, i32 %70)
  br label %72

72:                                               ; preds = %61, %49
  br label %107

73:                                               ; preds = %2, %2
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @GetLinearAddress(i64 %74, i64 %75)
  %77 = call i32 @ScanExportsByAddress(i32* %7, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %73
  %80 = load i32, i32* @tempCmd, align 4
  %81 = load i64, i64* %4, align 8
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %85 = load i64, i64* %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 (i32, i8*, i64, ...) @PICE_sprintf(i32 %80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %81, i64 %82, i64 %83, i32 %88, i32 %89)
  br label %102

91:                                               ; preds = %73
  %92 = load i32, i32* @tempCmd, align 4
  %93 = load i64, i64* %4, align 8
  %94 = load i64, i64* %5, align 8
  %95 = load i64, i64* %6, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %97 = load i64, i64* %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, i8*, i64, ...) @PICE_sprintf(i32 %92, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %93, i64 %94, i64 %95, i32 %100)
  br label %102

102:                                              ; preds = %91, %79
  br label %107

103:                                              ; preds = %2
  %104 = load i32, i32* @tempCmd, align 4
  %105 = load i64, i64* %4, align 8
  %106 = call i32 (i32, i8*, i64, ...) @PICE_sprintf(i32 %104, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i64 %105)
  br label %107

107:                                              ; preds = %103, %102, %72, %31
  %108 = load i32, i32* @OUTPUT_WINDOW, align 4
  %109 = load i32, i32* @tempCmd, align 4
  %110 = call i32 @Print(i32 %108, i32 %109)
  ret void
}

declare dso_local i32 @PICE_sprintf(i32, i8*, i64, ...) #1

declare dso_local i32 @GetLinearAddress(i64, i64) #1

declare dso_local i32 @ScanExportsByAddress(i32*, i32) #1

declare dso_local i32 @Print(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
