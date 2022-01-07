; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shellpath.c_test_EnvVars.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shellpath.c_test_EnvVars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CSIDL_PROGRAM_FILES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ProgramFiles\00", align 1
@CSIDL_APPDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"APPDATA\00", align 1
@CSIDL_PROFILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"USERPROFILE\00", align 1
@CSIDL_WINDOWS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"SystemRoot\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"windir\00", align 1
@CSIDL_PROGRAM_FILES_COMMON = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"CommonProgramFiles\00", align 1
@CSIDL_SYSTEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"winsysdir\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_EnvVars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_EnvVars() #0 {
  %1 = load i32, i32* @CSIDL_PROGRAM_FILES, align 4
  %2 = call i32 @matchSpecialFolderPathToEnv(i32 %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @CSIDL_APPDATA, align 4
  %4 = call i32 @matchSpecialFolderPathToEnv(i32 %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %5 = load i32, i32* @CSIDL_PROFILE, align 4
  %6 = call i32 @matchSpecialFolderPathToEnv(i32 %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i32, i32* @CSIDL_WINDOWS, align 4
  %8 = call i32 @matchSpecialFolderPathToEnv(i32 %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %9 = load i32, i32* @CSIDL_WINDOWS, align 4
  %10 = call i32 @matchSpecialFolderPathToEnv(i32 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %11 = load i32, i32* @CSIDL_PROGRAM_FILES_COMMON, align 4
  %12 = call i32 @matchSpecialFolderPathToEnv(i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %13 = load i32, i32* @CSIDL_SYSTEM, align 4
  %14 = call i32 @matchSpecialFolderPathToEnv(i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @matchSpecialFolderPathToEnv(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
