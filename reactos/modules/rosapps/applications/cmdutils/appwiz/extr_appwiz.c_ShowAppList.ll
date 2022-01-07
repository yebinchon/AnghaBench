; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/appwiz/extr_appwiz.c_ShowAppList.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/appwiz/extr_appwiz.c_ShowAppList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [66 x i8] c"ERROR: Can not open Uninstall key. Press any key for continue...\0A\00", align 1
@STD_OUTPUT_HANDLE = common dso_local global i32 0, align 4
@FOREGROUND_GREEN = common dso_local global i32 0, align 4
@FOREGROUND_INTENSITY = common dso_local global i32 0, align 4
@REG_DWORD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"SystemComponent\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"ParentKeyName\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"DisplayName\00", align 1
@SHOW_ALL = common dso_local global i32 0, align 4
@APP_ONLY = common dso_local global i32 0, align 4
@UPD_ONLY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c" %d \09 %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"UninstallString\00", align 1
@FOREGROUND_RED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [101 x i8] c"\0A\0APlease enter application/update number and press ENTER for uninstall\0Aor press any key for Exit...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ShowAppList(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %24 = load i32, i32* @MAX_PATH, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %11, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %12, align 8
  %28 = load i32, i32* @MAX_PATH, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %13, align 8
  %31 = load i32, i32* @MAX_PATH, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %14, align 8
  %34 = load i32, i32* @MAX_PATH, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %15, align 8
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 1, i32* %21, align 4
  %39 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %40 = call i8* @_T(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %41 = call i64 @RegOpenKey(i32 %39, i8* %40, i32* %6)
  %42 = load i64, i64* @ERROR_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %2
  %45 = call i8* @_T(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %46 = call i32 (i8*, ...) @printf(i8* %45)
  %47 = call i32 (...) @_getch()
  store i32 0, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %189

48:                                               ; preds = %2
  %49 = load i32, i32* @STD_OUTPUT_HANDLE, align 4
  %50 = call i32 @GetStdHandle(i32 %49)
  store i32 %50, i32* %22, align 4
  %51 = load i32, i32* %22, align 4
  %52 = load i32, i32* @FOREGROUND_GREEN, align 4
  %53 = load i32, i32* @FOREGROUND_INTENSITY, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @SetConsoleTextAttribute(i32 %51, i32 %54)
  %56 = load i32, i32* @MAX_PATH, align 4
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %174, %48
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %19, align 4
  %60 = call i64 @RegEnumKeyEx(i32 %58, i32 %59, i8* %27, i32* %8, i32* null, i32* null, i32* null, i32* %16)
  %61 = load i64, i64* @ERROR_SUCCESS, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %178

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @RegOpenKey(i32 %64, i8* %27, i32* %7)
  %66 = load i64, i64* @ERROR_SUCCESS, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %153

68:                                               ; preds = %63
  %69 = load i32, i32* @REG_DWORD, align 4
  store i32 %69, i32* %9, align 4
  store i32 4, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i8* @_T(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %72 = ptrtoint i32* %10 to i32
  %73 = call i64 @RegQueryValueEx(i32 %70, i8* %71, i32* null, i32* %9, i32 %72, i32* %8)
  %74 = load i64, i64* @ERROR_SUCCESS, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = load i32, i32* %10, align 4
  %78 = icmp eq i32 %77, 1
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %18, align 4
  br label %82

80:                                               ; preds = %68
  %81 = load i32, i32* @FALSE, align 4
  store i32 %81, i32* %18, align 4
  br label %82

82:                                               ; preds = %80, %76
  %83 = load i32, i32* @REG_SZ, align 4
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* @MAX_PATH, align 4
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i8* @_T(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %87 = ptrtoint i8* %30 to i32
  %88 = call i64 @RegQueryValueEx(i32 %85, i8* %86, i32* null, i32* %9, i32 %87, i32* %8)
  %89 = load i64, i64* @ERROR_SUCCESS, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %17, align 4
  %92 = load i32, i32* @MAX_PATH, align 4
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i8* @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %95 = ptrtoint i8* %33 to i32
  %96 = call i64 @RegQueryValueEx(i32 %93, i8* %94, i32* null, i32* %9, i32 %95, i32* %8)
  %97 = load i64, i64* @ERROR_SUCCESS, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %152

99:                                               ; preds = %82
  %100 = load i32, i32* %18, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %151, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @SHOW_ALL, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %120, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @APP_ONLY, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32, i32* %17, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %110, %106
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @UPD_ONLY, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %150

117:                                              ; preds = %113
  %118 = load i32, i32* %17, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %150

120:                                              ; preds = %117, %110, %102
  %121 = load i32, i32* %5, align 4
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = call i8* @_T(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %125 = load i32, i32* %21, align 4
  %126 = call i32 @wsprintf(i8* %36, i8* %124, i32 %125, i8* %33)
  %127 = call i32 @CharToOem(i8* %36, i8* %36)
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %36)
  br label %145

129:                                              ; preds = %120
  %130 = load i32, i32* @REG_SZ, align 4
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* @MAX_PATH, align 4
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i8* @_T(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %134 = ptrtoint i8* %36 to i32
  %135 = call i64 @RegQueryValueEx(i32 %132, i8* %133, i32* null, i32* %9, i32 %134, i32* %8)
  %136 = load i64, i64* @ERROR_SUCCESS, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %129
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %21, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = call i32 @CallUninstall(i8* %36)
  br label %144

144:                                              ; preds = %142, %138, %129
  br label %145

145:                                              ; preds = %144, %123
  %146 = load i32, i32* %21, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %21, align 4
  %148 = load i32, i32* %20, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %20, align 4
  br label %150

150:                                              ; preds = %145, %117, %113
  br label %151

151:                                              ; preds = %150, %99
  br label %152

152:                                              ; preds = %151, %82
  br label %153

153:                                              ; preds = %152, %63
  %154 = load i32, i32* %20, align 4
  %155 = icmp sle i32 %154, 5
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = load i32, i32* %22, align 4
  %158 = load i32, i32* @FOREGROUND_GREEN, align 4
  %159 = load i32, i32* @FOREGROUND_INTENSITY, align 4
  %160 = or i32 %158, %159
  %161 = call i32 @SetConsoleTextAttribute(i32 %157, i32 %160)
  br label %174

162:                                              ; preds = %153
  %163 = load i32, i32* %22, align 4
  %164 = load i32, i32* @FOREGROUND_GREEN, align 4
  %165 = load i32, i32* @FOREGROUND_INTENSITY, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @FOREGROUND_RED, align 4
  %168 = or i32 %166, %167
  %169 = call i32 @SetConsoleTextAttribute(i32 %163, i32 %168)
  %170 = load i32, i32* %20, align 4
  %171 = icmp sge i32 %170, 10
  br i1 %171, label %172, label %173

172:                                              ; preds = %162
  store i32 0, i32* %20, align 4
  br label %173

173:                                              ; preds = %172, %162
  br label %174

174:                                              ; preds = %173, %156
  %175 = load i32, i32* @MAX_PATH, align 4
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* %19, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %19, align 4
  br label %57

178:                                              ; preds = %57
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @RegCloseKey(i32 %179)
  %181 = load i32, i32* %6, align 4
  %182 = call i32 @RegCloseKey(i32 %181)
  %183 = load i32, i32* %22, align 4
  %184 = load i32, i32* @FOREGROUND_GREEN, align 4
  %185 = load i32, i32* @FOREGROUND_INTENSITY, align 4
  %186 = or i32 %184, %185
  %187 = call i32 @SetConsoleTextAttribute(i32 %183, i32 %186)
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %189

189:                                              ; preds = %178, %44
  %190 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %190)
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RegOpenKey(i32, i8*, i32*) #2

declare dso_local i8* @_T(i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @_getch(...) #2

declare dso_local i32 @GetStdHandle(i32) #2

declare dso_local i32 @SetConsoleTextAttribute(i32, i32) #2

declare dso_local i64 @RegEnumKeyEx(i32, i32, i8*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @RegQueryValueEx(i32, i8*, i32*, i32*, i32, i32*) #2

declare dso_local i32 @wsprintf(i8*, i8*, i32, i8*) #2

declare dso_local i32 @CharToOem(i8*, i8*) #2

declare dso_local i32 @CallUninstall(i8*) #2

declare dso_local i32 @RegCloseKey(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
