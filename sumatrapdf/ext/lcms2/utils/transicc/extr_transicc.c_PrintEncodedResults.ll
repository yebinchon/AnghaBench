; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_PrintEncodedResults.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_PrintEncodedResults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsMAX_PATH = common dso_local global i32 0, align 4
@OutputColorSpace = common dso_local global i32 0, align 4
@OutputColorant = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"Channel #%u\00", align 1
@Verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s=\00", align 1
@InHexa = common dso_local global i64 0, align 8
@Width16 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"0x%04X \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"0x%02X \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @PrintEncodedResults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PrintEncodedResults(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %10 = load i32, i32* @cmsMAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @OutputColorSpace, align 4
  %16 = call i32 @cmsChannelsOf(i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %89, %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %92

21:                                               ; preds = %17
  %22 = load i32*, i32** @OutputColorant, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = load i32*, i32** @OutputColorant, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @cmsNamedColorInfo(i32 %25, i32* %26, i32 %27, i8* %13, i32* null, i32* null, i32* null, i32* null)
  br label %33

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i64, i64* @Verbose, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %9, align 4
  %44 = load i64, i64* @InHexa, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %38
  %47 = load i64, i64* @Width16, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = sitofp i32 %50 to double
  %52 = fadd double %51, 5.000000e-01
  %53 = fptosi double %52 to i32
  %54 = call i64 @floor(i32 %53)
  %55 = trunc i64 %54 to i32
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %66

57:                                               ; preds = %46
  %58 = load i32, i32* %9, align 4
  %59 = sitofp i32 %58 to double
  %60 = fdiv double %59, 2.570000e+02
  %61 = fadd double %60, 5.000000e-01
  %62 = fptosi double %61 to i32
  %63 = call i64 @floor(i32 %62)
  %64 = trunc i64 %63 to i32
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %57, %49
  br label %88

67:                                               ; preds = %38
  %68 = load i64, i64* @Width16, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load i32, i32* %9, align 4
  %72 = sitofp i32 %71 to double
  %73 = fadd double %72, 5.000000e-01
  %74 = fptosi double %73 to i32
  %75 = call i64 @floor(i32 %74)
  %76 = trunc i64 %75 to i32
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  br label %87

78:                                               ; preds = %67
  %79 = load i32, i32* %9, align 4
  %80 = sitofp i32 %79 to double
  %81 = fdiv double %80, 2.570000e+02
  %82 = fadd double %81, 5.000000e-01
  %83 = fptosi double %82 to i32
  %84 = call i64 @floor(i32 %83)
  %85 = trunc i64 %84 to i32
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %78, %70
  br label %88

88:                                               ; preds = %87, %66
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %17

92:                                               ; preds = %17
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %94 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %94)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cmsChannelsOf(i32, i32) #2

declare dso_local i32 @cmsNamedColorInfo(i32, i32*, i32, i8*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @floor(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
