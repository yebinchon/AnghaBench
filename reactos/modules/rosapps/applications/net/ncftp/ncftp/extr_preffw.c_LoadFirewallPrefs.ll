; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_preffw.c_LoadFirewallPrefs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_preffw.c_LoadFirewallPrefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@gFirewallPrefsLoaded = common dso_local global i32 0, align 4
@gOurDirectoryPath = common dso_local global i8* null, align 8
@kFirewallPrefFileName = common dso_local global i32 0, align 4
@kFirewallNotInUse = common dso_local global i32 0, align 4
@gFirewallType = common dso_local global i32 0, align 4
@gFirewallPort = common dso_local global i64 0, align 8
@gFirewallHost = common dso_local global i8* null, align 8
@gFirewallUser = common dso_local global i8* null, align 8
@gFirewallPass = common dso_local global i8* null, align 8
@gFirewallExceptionList = common dso_local global i8* null, align 8
@kGlobalFirewallPrefFileName = common dso_local global i8* null, align 8
@FOPEN_READ_TEXT = common dso_local global i32 0, align 4
@kGlobalFixedFirewallPrefFileName = common dso_local global i8* null, align 8
@FOPEN_WRITE_TEXT = common dso_local global i32 0, align 4
@gNumProgramRuns = common dso_local global i32 0, align 4
@gLib = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [13 x i8] c",localdomain\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LoadFirewallPrefs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @gFirewallPrefsLoaded, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %110

15:                                               ; preds = %11, %1
  store i32 1, i32* @gFirewallPrefsLoaded, align 4
  %16 = load i8*, i8** @gOurDirectoryPath, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %110

22:                                               ; preds = %15
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %24 = load i32, i32* @kFirewallPrefFileName, align 4
  %25 = call i32 @OurDirectoryPath(i8* %23, i32 256, i32 %24)
  %26 = load i32, i32* @kFirewallNotInUse, align 4
  store i32 %26, i32* @gFirewallType, align 4
  store i64 0, i64* @gFirewallPort, align 8
  %27 = load i8*, i8** @gFirewallHost, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 0, i8* %28, align 1
  %29 = load i8*, i8** @gFirewallUser, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 0, i8* %30, align 1
  %31 = load i8*, i8** @gFirewallPass, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 0, i8* %32, align 1
  %33 = load i8*, i8** @gFirewallExceptionList, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  store i8 0, i8* %34, align 1
  %35 = load i8*, i8** @kGlobalFirewallPrefFileName, align 8
  %36 = load i32, i32* @FOPEN_READ_TEXT, align 4
  %37 = call i32* @fopen(i8* %35, i32 %36)
  store i32* %37, i32** %4, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %22
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @ProcessFirewallPrefFile(i32* %41)
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @fclose(i32* %43)
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %40, %22
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %49 = load i32, i32* @FOPEN_READ_TEXT, align 4
  %50 = call i32* @fopen(i8* %48, i32 %49)
  store i32* %50, i32** %3, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @ProcessFirewallPrefFile(i32* %54)
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @fclose(i32* %56)
  store i32 1, i32* %7, align 4
  br label %58

58:                                               ; preds = %53, %47
  %59 = load i8*, i8** @kGlobalFixedFirewallPrefFileName, align 8
  %60 = load i32, i32* @FOPEN_READ_TEXT, align 4
  %61 = call i32* @fopen(i8* %59, i32 %60)
  store i32* %61, i32** %4, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @ProcessFirewallPrefFile(i32* %65)
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @fclose(i32* %67)
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %64, %58
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %71
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %74
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %79 = load i32, i32* @FOPEN_WRITE_TEXT, align 4
  %80 = call i32* @fopen(i8* %78, i32 %79)
  store i32* %80, i32** %3, align 8
  %81 = load i32*, i32** %3, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @WriteDefaultFirewallPrefs(i32* %84)
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @fclose(i32* %86)
  %88 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %89 = call i32 @_chmod(i8* %88, i32 384)
  store i32 1, i32* @gNumProgramRuns, align 4
  br label %90

90:                                               ; preds = %83, %77
  br label %91

91:                                               ; preds = %90, %74, %71
  %92 = load i8*, i8** @gFirewallExceptionList, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %91
  %98 = call i32 @FTPInitializeOurHostName(%struct.TYPE_3__* @gLib)
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gLib, i32 0, i32 0), align 4
  %100 = call i8* @strchr(i32 %99, i8 signext 46)
  store i8* %100, i8** %6, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load i8*, i8** @gFirewallExceptionList, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = call i32 @STRNCPY(i8* %104, i8* %105)
  %107 = load i8*, i8** @gFirewallExceptionList, align 8
  %108 = call i32 @STRNCAT(i8* %107, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %109

109:                                              ; preds = %103, %97
  br label %110

110:                                              ; preds = %14, %21, %109, %91
  ret void
}

declare dso_local i32 @OurDirectoryPath(i8*, i32, i32) #1

declare dso_local i32* @fopen(i8*, i32) #1

declare dso_local i32 @ProcessFirewallPrefFile(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @WriteDefaultFirewallPrefs(i32*) #1

declare dso_local i32 @_chmod(i8*, i32) #1

declare dso_local i32 @FTPInitializeOurHostName(%struct.TYPE_3__*) #1

declare dso_local i8* @strchr(i32, i8 signext) #1

declare dso_local i32 @STRNCPY(i8*, i8*) #1

declare dso_local i32 @STRNCAT(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
