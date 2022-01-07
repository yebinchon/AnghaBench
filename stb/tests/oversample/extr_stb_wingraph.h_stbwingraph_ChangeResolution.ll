; ModuleID = '/home/carl/AnghaBench/stb/tests/oversample/extr_stb_wingraph.h_stbwingraph_ChangeResolution.c'
source_filename = "/home/carl/AnghaBench/stb/tests/oversample/extr_stb_wingraph.h_stbwingraph_ChangeResolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@CDS_FULLSCREEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@stbwingraph_primary_window = common dso_local global i32 0, align 4
@MB_ICONERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"The resolution %d x %d x %d-bits is not supported.\00", align 1
@FALSE = common dso_local global i32 0, align 4
@DM_BITSPERPEL = common dso_local global i32 0, align 4
@DM_PELSWIDTH = common dso_local global i32 0, align 4
@DM_PELSHEIGHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"Please set your desktop to %d-bit color and then try again.\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"The hardware failed to change modes.\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"An unknown error prevented a change to a %d x %d x %d-bit display.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stbwingraph_ChangeResolution(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %48, %4
  %16 = load i32, i32* %12, align 4
  %17 = call i32 @EnumDisplaySettings(i32* null, i32 %16, %struct.TYPE_4__* %10)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %51

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* @CDS_FULLSCREEN, align 4
  %40 = call i32 @ChangeDisplaySettings(%struct.TYPE_4__* %10, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp eq i32 %41, 128
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = call i32 (...) @stbwingraph_RegisterResetResolution()
  %45 = load i32, i32* @TRUE, align 4
  store i32 %45, i32* %5, align 4
  br label %127

46:                                               ; preds = %36
  br label %51

47:                                               ; preds = %31, %26, %21
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %15

51:                                               ; preds = %46, %20
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i32, i32* @stbwingraph_primary_window, align 4
  %59 = load i32, i32* @MB_ICONERROR, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (i32, i32, i32*, i8*, ...) @stbwingraph_MessageBox(i32 %58, i32 %59, i32* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %57, %54
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %5, align 4
  br label %127

66:                                               ; preds = %51
  %67 = load i32, i32* %8, align 4
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* %6, align 4
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %7, align 4
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* @DM_BITSPERPEL, align 4
  %74 = load i32, i32* @DM_PELSWIDTH, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @DM_PELSHEIGHT, align 4
  %77 = or i32 %75, %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* @CDS_FULLSCREEN, align 4
  %80 = call i32 @ChangeDisplaySettings(%struct.TYPE_4__* %10, i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  switch i32 %81, label %115 [
    i32 128, label %82
    i32 129, label %85
    i32 130, label %94
    i32 131, label %103
  ]

82:                                               ; preds = %66
  %83 = call i32 (...) @stbwingraph_RegisterResetResolution()
  %84 = load i32, i32* @TRUE, align 4
  store i32 %84, i32* %5, align 4
  br label %127

85:                                               ; preds = %66
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* @stbwingraph_primary_window, align 4
  %90 = load i32, i32* @MB_ICONERROR, align 4
  %91 = call i32 (i32, i32, i32*, i8*, ...) @stbwingraph_MessageBox(i32 %89, i32 %90, i32* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  br label %92

92:                                               ; preds = %88, %85
  %93 = load i32, i32* @FALSE, align 4
  store i32 %93, i32* %5, align 4
  br label %127

94:                                               ; preds = %66
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i32, i32* @stbwingraph_primary_window, align 4
  %99 = load i32, i32* @MB_ICONERROR, align 4
  %100 = call i32 (i32, i32, i32*, i8*, ...) @stbwingraph_MessageBox(i32 %98, i32 %99, i32* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %101

101:                                              ; preds = %97, %94
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %5, align 4
  br label %127

103:                                              ; preds = %66
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load i32, i32* @stbwingraph_primary_window, align 4
  %108 = load i32, i32* @MB_ICONERROR, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 (i32, i32, i32*, i8*, ...) @stbwingraph_MessageBox(i32 %107, i32 %108, i32* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %109, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %106, %103
  %114 = load i32, i32* @FALSE, align 4
  store i32 %114, i32* %5, align 4
  br label %127

115:                                              ; preds = %66
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %115
  %119 = load i32, i32* @stbwingraph_primary_window, align 4
  %120 = load i32, i32* @MB_ICONERROR, align 4
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %8, align 4
  %124 = call i32 (i32, i32, i32*, i8*, ...) @stbwingraph_MessageBox(i32 %119, i32 %120, i32* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %121, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %118, %115
  %126 = load i32, i32* @FALSE, align 4
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %125, %113, %101, %92, %82, %64, %43
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i32 @EnumDisplaySettings(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @ChangeDisplaySettings(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @stbwingraph_RegisterResetResolution(...) #1

declare dso_local i32 @stbwingraph_MessageBox(i32, i32, i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
