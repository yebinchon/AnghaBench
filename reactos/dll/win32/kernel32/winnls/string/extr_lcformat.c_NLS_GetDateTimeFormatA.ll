; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/winnls/string/extr_lcformat.c_NLS_GetDateTimeFormatA.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/winnls/string/extr_lcformat.c_NLS_GetDateTimeFormatA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@CP_ACP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"(0x%04x,0x%08x,%p,%s,%p,%d)\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@LOCALE_USE_CP_ACP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32, i8*, i32)* @NLS_GetDateTimeFormatA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NLS_GetDateTimeFormatA(i32 %0, i32 %1, i32* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [128 x i8], align 16
  %16 = alloca [128 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* @CP_ACP, align 4
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @debugstr_a(i32 %23)
  %25 = load i8*, i8** %12, align 8
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32* %22, i32 %24, i8* %25, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @NLS_IsUnicodeOnlyLcid(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %6
  %32 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %33 = call i32 @SetLastError(i32 %32)
  store i32 0, i32* %7, align 4
  br label %122

34:                                               ; preds = %6
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @LOCALE_USE_CP_ACP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call %struct.TYPE_3__* @NLS_GetFormats(i32 %40, i32 %41)
  store %struct.TYPE_3__* %42, %struct.TYPE_3__** %18, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %44 = icmp ne %struct.TYPE_3__* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %47 = call i32 @SetLastError(i32 %46)
  store i32 0, i32* %7, align 4
  br label %122

48:                                               ; preds = %39
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %14, align 4
  br label %52

52:                                               ; preds = %48, %34
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %11, align 4
  %58 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %59 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %60 = call i32 @ARRAY_SIZE(i8* %59)
  %61 = call i32 @MultiByteToWideChar(i32 %56, i32 0, i32 %57, i32 -1, i8* %58, i32 %60)
  br label %62

62:                                               ; preds = %55, %52
  %63 = load i32, i32* %13, align 4
  %64 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %65 = call i32 @ARRAY_SIZE(i8* %64)
  %66 = icmp sgt i32 %63, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %69 = call i32 @ARRAY_SIZE(i8* %68)
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %67, %62
  %71 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  store i8 0, i8* %71, align 16
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  br label %80

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %77
  %81 = phi i8* [ %78, %77 ], [ null, %79 ]
  %82 = load i8*, i8** %12, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  br label %87

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86, %84
  %88 = phi i8* [ %85, %84 ], [ null, %86 ]
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @NLS_GetDateTimeFormatW(i32 %72, i32 %73, i32* %74, i8* %81, i8* %88, i32 %89)
  store i32 %90, i32* %17, align 4
  %91 = load i8*, i8** %12, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %120

93:                                               ; preds = %87
  %94 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %95 = load i8, i8* %94, align 16
  %96 = icmp ne i8 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %93
  %98 = load i32, i32* %14, align 4
  %99 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %100 = load i32, i32* %17, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %105

103:                                              ; preds = %97
  %104 = load i32, i32* %13, align 4
  br label %105

105:                                              ; preds = %103, %102
  %106 = phi i32 [ -1, %102 ], [ %104, %103 ]
  %107 = load i8*, i8** %12, align 8
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @WideCharToMultiByte(i32 %98, i32 0, i8* %99, i32 %106, i8* %107, i32 %108, i32 0, i32 0)
  br label %119

110:                                              ; preds = %93
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load i32, i32* %17, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i8*, i8** %12, align 8
  store i8 0, i8* %117, align 1
  br label %118

118:                                              ; preds = %116, %113, %110
  br label %119

119:                                              ; preds = %118, %105
  br label %120

120:                                              ; preds = %119, %87
  %121 = load i32, i32* %17, align 4
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %120, %45, %31
  %123 = load i32, i32* %7, align 4
  ret i32 %123
}

declare dso_local i32 @TRACE(i8*, i32, i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @debugstr_a(i32) #1

declare dso_local i64 @NLS_IsUnicodeOnlyLcid(i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local %struct.TYPE_3__* @NLS_GetFormats(i32, i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @NLS_GetDateTimeFormatW(i32, i32, i32*, i8*, i8*, i32) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i8*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
