; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_debugger.c_test_ExitCode.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_debugger.c_test_ExitCode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

@test_ExitCode.AeDebug = internal global i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [53 x i8] c"Software\\Microsoft\\Windows NT\\CurrentVersion\\AeDebug\00", align 1
@test_ExitCode.WineDbg = internal global i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Software\\Wine\\WineDbg\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@INVALID_FILE_ATTRIBUTES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c".so\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"could not find the test executable '%s'\0A\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@REG_OPTION_NON_VOLATILE = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"debugger\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"HKLM\\%s\\debugger is set to '%s'\0A\00", align 1
@ERROR_ACCESS_DENIED = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [46 x i8] c"not enough privileges to change the debugger\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [36 x i8] c"could not open the AeDebug key: %d\0A\00", align 1
@REG_SZ = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"winedbg --auto\00", align 1
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@test_ExitCode.zero = internal global i8* null, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"ShowCrashDialog\00", align 1
@REG_DWORD = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [40 x i8] c"Couldn't access WineDbg Key - error %u\0A\00", align 1
@winetest_interactive = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [9 x i8] c"dbg,none\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"\22none\22 debugger test needs user interaction\0A\00", align 1
@REG_OPENED_EXISTING_KEY = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [42 x i8] c"expected REG_OPENED_EXISTING_KEY, got %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"dbg,event,order\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"dbg,attach,event,code2\00", align 1
@pDebugSetProcessKillOnExit = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [24 x i8] c"dbg,attach,event,nokill\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"DebugSetProcessKillOnExit is not available\0A\00", align 1
@pDebugActiveProcessStop = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [24 x i8] c"dbg,attach,event,detach\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"DebugActiveProcessStop is not available\0A\00", align 1
@REG_CREATED_NEW_KEY = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ExitCode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ExitCode() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %1, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %2, align 8
  %15 = call i32 @GetModuleHandleA(i32* null)
  %16 = trunc i64 %12 to i32
  %17 = call i32 @GetModuleFileNameA(i32 %15, i8* %14, i32 %16)
  %18 = call i64 @GetFileAttributesA(i8* %14)
  %19 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %0
  %22 = call i32 @strcat(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %0
  %24 = call i64 @GetFileAttributesA(i8* %14)
  %25 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @ok(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %14)
  store i32 1, i32* %8, align 4
  br label %154

29:                                               ; preds = %23
  %30 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %31 = load i8*, i8** @test_ExitCode.AeDebug, align 8
  %32 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %33 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %34 = call i8* @RegCreateKeyExA(i32 %30, i8* %31, i32 0, i32* null, i32 %32, i32 %33, i32* null, i32* %4, i8** %5)
  store i8* %34, i8** %3, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = load i8*, i8** @ERROR_SUCCESS, align 8
  %37 = icmp eq i8* %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %29
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @save_value(i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_4__* %6)
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @save_value(i32 %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_4__* %7)
  %43 = load i8*, i8** @test_ExitCode.AeDebug, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @trace(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %43, i32* %45)
  br label %64

47:                                               ; preds = %29
  %48 = load i8*, i8** %3, align 8
  %49 = load i8*, i8** @ERROR_ACCESS_DENIED, align 8
  %50 = icmp eq i8* %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 @skip(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %154

53:                                               ; preds = %47
  %54 = load i8*, i8** %3, align 8
  %55 = load i8*, i8** @ERROR_FILE_NOT_FOUND, align 8
  %56 = icmp ne i8* %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i8*, i8** %3, align 8
  %59 = call i32 @ok(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i8* %58)
  store i32 1, i32* %8, align 4
  br label %154

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %60
  br label %63

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63, %38
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %102

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @REG_SZ, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %102

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = bitcast i32* %75 to i8*
  %77 = call i64 @strstr(i8* %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %102

79:                                               ; preds = %73
  %80 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %81 = load i8*, i8** @test_ExitCode.WineDbg, align 8
  %82 = call i8* @RegCreateKeyA(i32 %80, i8* %81, i32* %9)
  store i8* %82, i8** %3, align 8
  %83 = load i8*, i8** %3, align 8
  %84 = load i8*, i8** @ERROR_SUCCESS, align 8
  %85 = icmp eq i8* %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %79
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @save_value(i32 %87, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_4__* %10)
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @REG_DWORD, align 4
  %91 = call i32 @RegSetValueExA(i32 %89, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 0, i32 %90, i32* bitcast (i8** @test_ExitCode.zero to i32*), i32 8)
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @crash_and_winedbg(i32 %92, i8* %14)
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @restore_value(i32 %94, %struct.TYPE_4__* %10)
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @RegCloseKey(i32 %96)
  br label %101

98:                                               ; preds = %79
  %99 = load i8*, i8** %3, align 8
  %100 = call i32 @ok(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %98, %86
  br label %102

102:                                              ; preds = %101, %73, %68, %64
  %103 = load i64, i64* @winetest_interactive, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @crash_and_debug(i32 %106, i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  br label %110

108:                                              ; preds = %102
  %109 = call i32 @skip(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %105
  %111 = load i8*, i8** %5, align 8
  %112 = load i8*, i8** @REG_OPENED_EXISTING_KEY, align 8
  %113 = icmp eq i8* %111, %112
  %114 = zext i1 %113 to i32
  %115 = load i8*, i8** %5, align 8
  %116 = call i32 @ok(i32 %114, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i8* %115)
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @crash_and_debug(i32 %117, i8* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @crash_and_debug(i32 %119, i8* %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0))
  %121 = load i64, i64* @pDebugSetProcessKillOnExit, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %110
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @crash_and_debug(i32 %124, i8* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  br label %128

126:                                              ; preds = %110
  %127 = call i32 @win_skip(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %123
  %129 = load i64, i64* @pDebugActiveProcessStop, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, i32* %4, align 4
  %133 = call i32 @crash_and_debug(i32 %132, i8* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0))
  br label %136

134:                                              ; preds = %128
  %135 = call i32 @win_skip(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %131
  %137 = load i8*, i8** %5, align 8
  %138 = load i8*, i8** @REG_CREATED_NEW_KEY, align 8
  %139 = icmp eq i8* %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %136
  %141 = load i32, i32* %4, align 4
  %142 = call i32 @RegCloseKey(i32 %141)
  %143 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %144 = load i8*, i8** @test_ExitCode.AeDebug, align 8
  %145 = call i32 @RegDeleteKeyA(i32 %143, i8* %144)
  br label %153

146:                                              ; preds = %136
  %147 = load i32, i32* %4, align 4
  %148 = call i32 @restore_value(i32 %147, %struct.TYPE_4__* %6)
  %149 = load i32, i32* %4, align 4
  %150 = call i32 @restore_value(i32 %149, %struct.TYPE_4__* %7)
  %151 = load i32, i32* %4, align 4
  %152 = call i32 @RegCloseKey(i32 %151)
  br label %153

153:                                              ; preds = %146, %140
  store i32 0, i32* %8, align 4
  br label %154

154:                                              ; preds = %153, %57, %51, %27
  %155 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %155)
  %156 = load i32, i32* %8, align 4
  switch i32 %156, label %158 [
    i32 0, label %157
    i32 1, label %157
  ]

157:                                              ; preds = %154, %154
  ret void

158:                                              ; preds = %154
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetModuleFileNameA(i32, i8*, i32) #2

declare dso_local i32 @GetModuleHandleA(i32*) #2

declare dso_local i64 @GetFileAttributesA(i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @ok(i32, i8*, i8*) #2

declare dso_local i8* @RegCreateKeyExA(i32, i8*, i32, i32*, i32, i32, i32*, i32*, i8**) #2

declare dso_local i32 @save_value(i32, i8*, %struct.TYPE_4__*) #2

declare dso_local i32 @trace(i8*, i8*, i32*) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i64 @strstr(i8*, i8*) #2

declare dso_local i8* @RegCreateKeyA(i32, i8*, i32*) #2

declare dso_local i32 @RegSetValueExA(i32, i8*, i32, i32, i32*, i32) #2

declare dso_local i32 @crash_and_winedbg(i32, i8*) #2

declare dso_local i32 @restore_value(i32, %struct.TYPE_4__*) #2

declare dso_local i32 @RegCloseKey(i32) #2

declare dso_local i32 @crash_and_debug(i32, i8*, i8*) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @RegDeleteKeyA(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
