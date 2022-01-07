; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_vhd.c_WimExtractCheck.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_vhd.c_WimExtractCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WIMCreateFile = common dso_local global i32 0, align 4
@Wimgapi = common dso_local global i32 0, align 4
@WIMSetTemporaryPath = common dso_local global i32 0, align 4
@WIMLoadImage = common dso_local global i32 0, align 4
@WIMApplyImage = common dso_local global i32 0, align 4
@WIMExtractImagePath = common dso_local global i32 0, align 4
@WIMGetImageInformation = common dso_local global i32 0, align 4
@WIMRegisterMessageCallback = common dso_local global i32 0, align 4
@WIMUnregisterMessageCallback = common dso_local global i32 0, align 4
@WIMCloseHandle = common dso_local global i32 0, align 4
@pfWIMCreateFile = common dso_local global i64 0, align 8
@pfWIMSetTemporaryPath = common dso_local global i64 0, align 8
@pfWIMLoadImage = common dso_local global i64 0, align 8
@pfWIMExtractImagePath = common dso_local global i64 0, align 8
@pfWIMCloseHandle = common dso_local global i64 0, align 8
@WIM_HAS_API_EXTRACT = common dso_local global i32 0, align 4
@wim_flags = common dso_local global i32 0, align 4
@WIM_HAS_7Z_EXTRACT = common dso_local global i32 0, align 4
@pfWIMApplyImage = common dso_local global i64 0, align 8
@pfWIMRegisterMessageCallback = common dso_local global i64 0, align 8
@pfWIMUnregisterMessageCallback = common dso_local global i64 0, align 8
@WIM_HAS_API_APPLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"WIM extraction method(s) supported: %s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"7-Zip\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"wimgapi.dll\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"WIM apply method supported: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WimExtractCheck() #0 {
  %1 = load i32, i32* @WIMCreateFile, align 4
  %2 = load i32, i32* @Wimgapi, align 4
  %3 = call i32 @PF_INIT(i32 %1, i32 %2)
  %4 = load i32, i32* @WIMSetTemporaryPath, align 4
  %5 = load i32, i32* @Wimgapi, align 4
  %6 = call i32 @PF_INIT(i32 %4, i32 %5)
  %7 = load i32, i32* @WIMLoadImage, align 4
  %8 = load i32, i32* @Wimgapi, align 4
  %9 = call i32 @PF_INIT(i32 %7, i32 %8)
  %10 = load i32, i32* @WIMApplyImage, align 4
  %11 = load i32, i32* @Wimgapi, align 4
  %12 = call i32 @PF_INIT(i32 %10, i32 %11)
  %13 = load i32, i32* @WIMExtractImagePath, align 4
  %14 = load i32, i32* @Wimgapi, align 4
  %15 = call i32 @PF_INIT(i32 %13, i32 %14)
  %16 = load i32, i32* @WIMGetImageInformation, align 4
  %17 = load i32, i32* @Wimgapi, align 4
  %18 = call i32 @PF_INIT(i32 %16, i32 %17)
  %19 = load i32, i32* @WIMRegisterMessageCallback, align 4
  %20 = load i32, i32* @Wimgapi, align 4
  %21 = call i32 @PF_INIT(i32 %19, i32 %20)
  %22 = load i32, i32* @WIMUnregisterMessageCallback, align 4
  %23 = load i32, i32* @Wimgapi, align 4
  %24 = call i32 @PF_INIT(i32 %22, i32 %23)
  %25 = load i32, i32* @WIMCloseHandle, align 4
  %26 = load i32, i32* @Wimgapi, align 4
  %27 = call i32 @PF_INIT(i32 %25, i32 %26)
  %28 = load i64, i64* @pfWIMCreateFile, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %0
  %31 = load i64, i64* @pfWIMSetTemporaryPath, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load i64, i64* @pfWIMLoadImage, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i64, i64* @pfWIMExtractImagePath, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i64, i64* @pfWIMCloseHandle, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* @WIM_HAS_API_EXTRACT, align 4
  %44 = load i32, i32* @wim_flags, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* @wim_flags, align 4
  br label %46

46:                                               ; preds = %42, %39, %36, %33, %30, %0
  %47 = call i64 (...) @Get7ZipPath()
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* @WIM_HAS_7Z_EXTRACT, align 4
  %51 = load i32, i32* @wim_flags, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* @wim_flags, align 4
  br label %53

53:                                               ; preds = %49, %46
  %54 = load i32, i32* @wim_flags, align 4
  %55 = load i32, i32* @WIM_HAS_API_EXTRACT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load i64, i64* @pfWIMApplyImage, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load i64, i64* @pfWIMRegisterMessageCallback, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i64, i64* @pfWIMUnregisterMessageCallback, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32, i32* @WIM_HAS_API_APPLY, align 4
  %69 = load i32, i32* @wim_flags, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* @wim_flags, align 4
  br label %71

71:                                               ; preds = %67, %64, %61, %58, %53
  %72 = load i32, i32* @wim_flags, align 4
  %73 = load i32, i32* @WIM_HAS_7Z_EXTRACT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %84

77:                                               ; preds = %71
  %78 = load i32, i32* @wim_flags, align 4
  %79 = load i32, i32* @WIM_HAS_API_EXTRACT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  br label %84

84:                                               ; preds = %77, %76
  %85 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %76 ], [ %83, %77 ]
  %86 = load i32, i32* @wim_flags, align 4
  %87 = call i32 @WIM_HAS_EXTRACT(i32 %86)
  %88 = load i32, i32* @WIM_HAS_API_EXTRACT, align 4
  %89 = load i32, i32* @WIM_HAS_7Z_EXTRACT, align 4
  %90 = or i32 %88, %89
  %91 = icmp eq i32 %87, %90
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %94 = load i32, i32* @wim_flags, align 4
  %95 = load i32, i32* @WIM_HAS_API_EXTRACT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %100 = call i32 (i8*, i8*, ...) @uprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %85, i8* %93, i8* %99)
  %101 = load i32, i32* @wim_flags, align 4
  %102 = load i32, i32* @WIM_HAS_API_APPLY, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %107 = call i32 (i8*, i8*, ...) @uprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %106)
  %108 = load i32, i32* @wim_flags, align 4
  ret i32 %108
}

declare dso_local i32 @PF_INIT(i32, i32) #1

declare dso_local i64 @Get7ZipPath(...) #1

declare dso_local i32 @uprintf(i8*, i8*, ...) #1

declare dso_local i32 @WIM_HAS_EXTRACT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
