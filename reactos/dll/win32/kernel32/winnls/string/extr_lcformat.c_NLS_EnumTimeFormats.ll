; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/winnls/string/extr_lcformat.c_NLS_EnumTimeFormats.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/winnls/string/extr_lcformat.c_NLS_EnumTimeFormats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enumtimeformats_context = type { i32, i32, i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 (i8*, i32)*, i32 (i8*)* }

@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@LOCALE_USE_CP_ACP = common dso_local global i32 0, align 4
@LOCALE_STIMEFORMAT = common dso_local global i32 0, align 4
@LOCALE_SSHORTTIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unknown time format (%d)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enumtimeformats_context*)* @NLS_EnumTimeFormats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NLS_EnumTimeFormats(%struct.enumtimeformats_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.enumtimeformats_context*, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.enumtimeformats_context* %0, %struct.enumtimeformats_context** %3, align 8
  %8 = load %struct.enumtimeformats_context*, %struct.enumtimeformats_context** %3, align 8
  %9 = getelementptr inbounds %struct.enumtimeformats_context, %struct.enumtimeformats_context* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32 (i8*)*, i32 (i8*)** %10, align 8
  %12 = icmp ne i32 (i8*)* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %15 = call i32 @SetLastError(i32 %14)
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %2, align 4
  br label %103

17:                                               ; preds = %1
  %18 = load %struct.enumtimeformats_context*, %struct.enumtimeformats_context** %3, align 8
  %19 = getelementptr inbounds %struct.enumtimeformats_context, %struct.enumtimeformats_context* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @LOCALE_USE_CP_ACP, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  switch i32 %23, label %28 [
    i32 0, label %24
    i32 128, label %26
  ]

24:                                               ; preds = %17
  %25 = load i32, i32* @LOCALE_STIMEFORMAT, align 4
  store i32 %25, i32* %6, align 4
  br label %36

26:                                               ; preds = %17
  %27 = load i32, i32* @LOCALE_SSHORTTIME, align 4
  store i32 %27, i32* %6, align 4
  br label %36

28:                                               ; preds = %17
  %29 = load %struct.enumtimeformats_context*, %struct.enumtimeformats_context** %3, align 8
  %30 = getelementptr inbounds %struct.enumtimeformats_context, %struct.enumtimeformats_context* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @FIXME(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %34 = call i32 @SetLastError(i32 %33)
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %2, align 4
  br label %103

36:                                               ; preds = %26, %24
  %37 = load %struct.enumtimeformats_context*, %struct.enumtimeformats_context** %3, align 8
  %38 = getelementptr inbounds %struct.enumtimeformats_context, %struct.enumtimeformats_context* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @LOCALE_USE_CP_ACP, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load %struct.enumtimeformats_context*, %struct.enumtimeformats_context** %3, align 8
  %45 = getelementptr inbounds %struct.enumtimeformats_context, %struct.enumtimeformats_context* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %36
  %49 = load %struct.enumtimeformats_context*, %struct.enumtimeformats_context** %3, align 8
  %50 = getelementptr inbounds %struct.enumtimeformats_context, %struct.enumtimeformats_context* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %55 = call i32 @ARRAY_SIZE(i8* %54)
  %56 = call i64 @GetLocaleInfoW(i32 %51, i32 %52, i8* %53, i32 %55)
  store i64 %56, i64* %7, align 8
  br label %66

57:                                               ; preds = %36
  %58 = load %struct.enumtimeformats_context*, %struct.enumtimeformats_context** %3, align 8
  %59 = getelementptr inbounds %struct.enumtimeformats_context, %struct.enumtimeformats_context* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %64 = call i32 @ARRAY_SIZE(i8* %63)
  %65 = call i64 @GetLocaleInfoA(i32 %60, i32 %61, i8* %62, i32 %64)
  store i64 %65, i64* %7, align 8
  br label %66

66:                                               ; preds = %57, %48
  %67 = load i64, i64* %7, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %101

69:                                               ; preds = %66
  %70 = load %struct.enumtimeformats_context*, %struct.enumtimeformats_context** %3, align 8
  %71 = getelementptr inbounds %struct.enumtimeformats_context, %struct.enumtimeformats_context* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %99 [
    i32 130, label %73
    i32 129, label %89
  ]

73:                                               ; preds = %69
  %74 = load %struct.enumtimeformats_context*, %struct.enumtimeformats_context** %3, align 8
  %75 = getelementptr inbounds %struct.enumtimeformats_context, %struct.enumtimeformats_context* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32 (i8*)*, i32 (i8*)** %76, align 8
  %78 = load %struct.enumtimeformats_context*, %struct.enumtimeformats_context** %3, align 8
  %79 = getelementptr inbounds %struct.enumtimeformats_context, %struct.enumtimeformats_context* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  br label %86

84:                                               ; preds = %73
  %85 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i8* [ %83, %82 ], [ %85, %84 ]
  %88 = call i32 %77(i8* %87)
  br label %100

89:                                               ; preds = %69
  %90 = load %struct.enumtimeformats_context*, %struct.enumtimeformats_context** %3, align 8
  %91 = getelementptr inbounds %struct.enumtimeformats_context, %struct.enumtimeformats_context* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32 (i8*, i32)*, i32 (i8*, i32)** %92, align 8
  %94 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %95 = load %struct.enumtimeformats_context*, %struct.enumtimeformats_context** %3, align 8
  %96 = getelementptr inbounds %struct.enumtimeformats_context, %struct.enumtimeformats_context* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 %93(i8* %94, i32 %97)
  br label %100

99:                                               ; preds = %69
  br label %100

100:                                              ; preds = %99, %89, %86
  br label %101

101:                                              ; preds = %100, %66
  %102 = load i32, i32* @TRUE, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %101, %28, %13
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i64 @GetLocaleInfoW(i32, i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i64 @GetLocaleInfoA(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
