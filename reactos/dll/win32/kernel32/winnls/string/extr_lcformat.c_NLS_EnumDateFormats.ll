; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/winnls/string/extr_lcformat.c_NLS_EnumDateFormats.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/winnls/string/extr_lcformat.c_NLS_EnumDateFormats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enumdateformats_context = type { i32, i32, i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 (i8*, i32, i32)*, i32 (i8*, i32)*, i32 (i8*)* }

@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@LOCALE_ICALENDARTYPE = common dso_local global i32 0, align 4
@LOCALE_RETURN_NUMBER = common dso_local global i32 0, align 4
@LOCALE_USE_CP_ACP = common dso_local global i32 0, align 4
@LOCALE_SSHORTDATE = common dso_local global i32 0, align 4
@LOCALE_SLONGDATE = common dso_local global i32 0, align 4
@LOCALE_SYEARMONTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unknown date format (0x%08x)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enumdateformats_context*)* @NLS_EnumDateFormats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NLS_EnumDateFormats(%struct.enumdateformats_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.enumdateformats_context*, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.enumdateformats_context* %0, %struct.enumdateformats_context** %3, align 8
  %9 = load %struct.enumdateformats_context*, %struct.enumdateformats_context** %3, align 8
  %10 = getelementptr inbounds %struct.enumdateformats_context, %struct.enumdateformats_context* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i32 (i8*)*, i32 (i8*)** %11, align 8
  %13 = icmp ne i32 (i8*)* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %16 = call i32 @SetLastError(i32 %15)
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %2, align 4
  br label %136

18:                                               ; preds = %1
  %19 = load %struct.enumdateformats_context*, %struct.enumdateformats_context** %3, align 8
  %20 = getelementptr inbounds %struct.enumdateformats_context, %struct.enumdateformats_context* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @LOCALE_ICALENDARTYPE, align 4
  %23 = load i32, i32* @LOCALE_RETURN_NUMBER, align 4
  %24 = or i32 %22, %23
  %25 = bitcast i32* %7 to i8*
  %26 = call i64 @GetLocaleInfoW(i32 %21, i32 %24, i8* %25, i32 4)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %2, align 4
  br label %136

30:                                               ; preds = %18
  %31 = load %struct.enumdateformats_context*, %struct.enumdateformats_context** %3, align 8
  %32 = getelementptr inbounds %struct.enumdateformats_context, %struct.enumdateformats_context* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @LOCALE_USE_CP_ACP, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  switch i32 %36, label %43 [
    i32 0, label %37
    i32 129, label %37
    i32 130, label %39
    i32 128, label %41
  ]

37:                                               ; preds = %30, %30
  %38 = load i32, i32* @LOCALE_SSHORTDATE, align 4
  store i32 %38, i32* %6, align 4
  br label %51

39:                                               ; preds = %30
  %40 = load i32, i32* @LOCALE_SLONGDATE, align 4
  store i32 %40, i32* %6, align 4
  br label %51

41:                                               ; preds = %30
  %42 = load i32, i32* @LOCALE_SYEARMONTH, align 4
  store i32 %42, i32* %6, align 4
  br label %51

43:                                               ; preds = %30
  %44 = load %struct.enumdateformats_context*, %struct.enumdateformats_context** %3, align 8
  %45 = getelementptr inbounds %struct.enumdateformats_context, %struct.enumdateformats_context* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @FIXME(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %49 = call i32 @SetLastError(i32 %48)
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %2, align 4
  br label %136

51:                                               ; preds = %41, %39, %37
  %52 = load %struct.enumdateformats_context*, %struct.enumdateformats_context** %3, align 8
  %53 = getelementptr inbounds %struct.enumdateformats_context, %struct.enumdateformats_context* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @LOCALE_USE_CP_ACP, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load %struct.enumdateformats_context*, %struct.enumdateformats_context** %3, align 8
  %60 = getelementptr inbounds %struct.enumdateformats_context, %struct.enumdateformats_context* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %51
  %64 = load %struct.enumdateformats_context*, %struct.enumdateformats_context** %3, align 8
  %65 = getelementptr inbounds %struct.enumdateformats_context, %struct.enumdateformats_context* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %70 = call i32 @ARRAY_SIZE(i8* %69)
  %71 = call i64 @GetLocaleInfoW(i32 %66, i32 %67, i8* %68, i32 %70)
  store i64 %71, i64* %8, align 8
  br label %81

72:                                               ; preds = %51
  %73 = load %struct.enumdateformats_context*, %struct.enumdateformats_context** %3, align 8
  %74 = getelementptr inbounds %struct.enumdateformats_context, %struct.enumdateformats_context* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %79 = call i32 @ARRAY_SIZE(i8* %78)
  %80 = call i64 @GetLocaleInfoA(i32 %75, i32 %76, i8* %77, i32 %79)
  store i64 %80, i64* %8, align 8
  br label %81

81:                                               ; preds = %72, %63
  %82 = load i64, i64* %8, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %134

84:                                               ; preds = %81
  %85 = load %struct.enumdateformats_context*, %struct.enumdateformats_context** %3, align 8
  %86 = getelementptr inbounds %struct.enumdateformats_context, %struct.enumdateformats_context* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %132 [
    i32 133, label %88
    i32 132, label %104
    i32 131, label %121
  ]

88:                                               ; preds = %84
  %89 = load %struct.enumdateformats_context*, %struct.enumdateformats_context** %3, align 8
  %90 = getelementptr inbounds %struct.enumdateformats_context, %struct.enumdateformats_context* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i32 (i8*)*, i32 (i8*)** %91, align 8
  %93 = load %struct.enumdateformats_context*, %struct.enumdateformats_context** %3, align 8
  %94 = getelementptr inbounds %struct.enumdateformats_context, %struct.enumdateformats_context* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  br label %101

99:                                               ; preds = %88
  %100 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i8* [ %98, %97 ], [ %100, %99 ]
  %103 = call i32 %92(i8* %102)
  br label %133

104:                                              ; preds = %84
  %105 = load %struct.enumdateformats_context*, %struct.enumdateformats_context** %3, align 8
  %106 = getelementptr inbounds %struct.enumdateformats_context, %struct.enumdateformats_context* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32 (i8*, i32)*, i32 (i8*, i32)** %107, align 8
  %109 = load %struct.enumdateformats_context*, %struct.enumdateformats_context** %3, align 8
  %110 = getelementptr inbounds %struct.enumdateformats_context, %struct.enumdateformats_context* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %104
  %114 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  br label %117

115:                                              ; preds = %104
  %116 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i8* [ %114, %113 ], [ %116, %115 ]
  %119 = load i32, i32* %7, align 4
  %120 = call i32 %108(i8* %118, i32 %119)
  br label %133

121:                                              ; preds = %84
  %122 = load %struct.enumdateformats_context*, %struct.enumdateformats_context** %3, align 8
  %123 = getelementptr inbounds %struct.enumdateformats_context, %struct.enumdateformats_context* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %124, align 8
  %126 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.enumdateformats_context*, %struct.enumdateformats_context** %3, align 8
  %129 = getelementptr inbounds %struct.enumdateformats_context, %struct.enumdateformats_context* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 %125(i8* %126, i32 %127, i32 %130)
  br label %133

132:                                              ; preds = %84
  br label %133

133:                                              ; preds = %132, %121, %117, %101
  br label %134

134:                                              ; preds = %133, %81
  %135 = load i32, i32* @TRUE, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %134, %43, %28, %14
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @GetLocaleInfoW(i32, i32, i8*, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i64 @GetLocaleInfoA(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
