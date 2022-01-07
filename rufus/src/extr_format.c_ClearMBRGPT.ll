; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_format.c_ClearMBRGPT.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_format.c_ClearMBRGPT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@MSG_224 = common dso_local global i32 0, align 4
@ERROR_SEVERITY_ERROR = common dso_local global i32 0, align 4
@FACILITY_STORAGE = common dso_local global i32 0, align 4
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@FormatStatus = common dso_local global i32 0, align 4
@SelectedDrive = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@MAX_SECTORS_TO_CLEAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Erasing %d sectors\00", align 1
@WRITE_RETRIES = common dso_local global i32 0, align 4
@CHECK_FOR_USER_CANCEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Retrying in %d seconds...\00", align 1
@WRITE_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Warning: Failed to clear backup GPT...\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32, i64)* @ClearMBRGPT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ClearMBRGPT(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sdiv i32 %16, %17
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @calloc(i32 %19, i32 1)
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %14, align 8
  %22 = load i32, i32* @MSG_224, align 4
  %23 = call i32 @PrintInfoDebug(i32 0, i32 %22)
  %24 = load i8*, i8** %14, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %4
  %27 = load i32, i32* @ERROR_SEVERITY_ERROR, align 4
  %28 = load i32, i32* @FACILITY_STORAGE, align 4
  %29 = call i32 @FAC(i32 %28)
  %30 = or i32 %27, %29
  %31 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* @FormatStatus, align 4
  br label %141

33:                                               ; preds = %4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SelectedDrive, i32 0, i32 0), align 4
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 2048, i32 0
  %39 = load i32, i32* @MAX_SECTORS_TO_CLEAR, align 4
  %40 = add nsw i32 %38, %39
  %41 = call i32 @min(i32 %34, i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %42, 4
  br i1 %43, label %44, label %51

44:                                               ; preds = %33
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 2048, i32 0
  %49 = load i32, i32* @MAX_SECTORS_TO_CLEAR, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %44, %33
  %52 = load i32, i32* %13, align 4
  %53 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %52)
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %90, %51
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %93

58:                                               ; preds = %54
  store i32 1, i32* %11, align 4
  br label %59

59:                                               ; preds = %86, %58
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @WRITE_RETRIES, align 4
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %89

63:                                               ; preds = %59
  %64 = load i32, i32* @CHECK_FOR_USER_CANCEL, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i8*, i8** %14, align 8
  %69 = call i32 @write_sectors(i32 %65, i32 %66, i32 %67, i32 1, i8* %68)
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %63
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @WRITE_RETRIES, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %141

77:                                               ; preds = %72
  %78 = load i32, i32* @WRITE_TIMEOUT, align 4
  %79 = sdiv i32 %78, 1000
  %80 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @WRITE_TIMEOUT, align 4
  %82 = load i64, i64* @FALSE, align 8
  %83 = call i32 @CheckDriveAccess(i32 %81, i64 %82)
  %84 = call i32 @Sleep(i32 %83)
  br label %85

85:                                               ; preds = %77, %63
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %59

89:                                               ; preds = %59
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %54

93:                                               ; preds = %54
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @MAX_SECTORS_TO_CLEAR, align 4
  %96 = sub nsw i32 %94, %95
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %136, %93
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %139

101:                                              ; preds = %97
  store i32 1, i32* %11, align 4
  br label %102

102:                                              ; preds = %132, %101
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @WRITE_RETRIES, align 4
  %105 = icmp sle i32 %103, %104
  br i1 %105, label %106, label %135

106:                                              ; preds = %102
  %107 = load i32, i32* @CHECK_FOR_USER_CANCEL, align 4
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i8*, i8** %14, align 8
  %112 = call i32 @write_sectors(i32 %108, i32 %109, i32 %110, i32 1, i8* %111)
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %131

115:                                              ; preds = %106
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @WRITE_RETRIES, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %115
  %120 = load i32, i32* @WRITE_TIMEOUT, align 4
  %121 = sdiv i32 %120, 1000
  %122 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @WRITE_TIMEOUT, align 4
  %124 = load i64, i64* @FALSE, align 8
  %125 = call i32 @CheckDriveAccess(i32 %123, i64 %124)
  %126 = call i32 @Sleep(i32 %125)
  br label %130

127:                                              ; preds = %115
  %128 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %129 = load i64, i64* @TRUE, align 8
  store i64 %129, i64* %9, align 8
  br label %141

130:                                              ; preds = %119
  br label %131

131:                                              ; preds = %130, %106
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %102

135:                                              ; preds = %102
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  br label %97

139:                                              ; preds = %97
  %140 = load i64, i64* @TRUE, align 8
  store i64 %140, i64* %9, align 8
  br label %141

141:                                              ; preds = %139, %127, %76, %26
  %142 = load i8*, i8** %14, align 8
  %143 = call i32 @safe_free(i8* %142)
  %144 = load i64, i64* %9, align 8
  ret i64 %144
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @PrintInfoDebug(i32, i32) #1

declare dso_local i32 @FAC(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @uprintf(i8*, ...) #1

declare dso_local i32 @write_sectors(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i32 @CheckDriveAccess(i32, i64) #1

declare dso_local i32 @safe_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
