; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/odbccp32/extr_misc.c_test_SQLInstallTranslatorEx.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/odbccp32/extr_misc.c_test_SQLInstallTranslatorEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"WINE ODBC Translator\00Translator=sample.dll\00Setup=sample.dll\00\00", align 1
@ODBC_INSTALL_COMPLETE = common dso_local global i32 0, align 4
@ODBC_ERROR_WRITING_SYSINFO_FAILED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"not enough privileges\0A\00", align 1
@SQL_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"SQLInstallDriverEx failed %d, %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"invalid path %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"invalid length %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"WINE ODBC Translator Path\00Translator=sample.dll\00Setup=sample.dll\00\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"c:\\temp\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"SQLInstallTranslatorEx failed %d, %u\0A\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [48 x i8] c"Software\\ODBC\\ODBCINST.INI\\WINE ODBC Translator\00", align 1
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [22 x i8] c"RegOpenKeyExW failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"\\sample.dll\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Translator\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"RegGetValueA failed\0A\00", align 1
@REG_SZ = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"WINE ODBC Translator\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"SQLRemoveTranslator failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"SQLRemoveTranslator failed %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"WINE ODBC Translator Path\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"WINE ODBC Translator NonExist\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"SQLRemoveTranslator succeeded\0A\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"SQLRemoveTranslator succeeded %d\0A\00", align 1
@ODBC_ERROR_COMPONENT_NOT_FOUND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SQLInstallTranslatorEx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SQLInstallTranslatorEx() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %1, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %2, align 8
  %20 = load i32, i32* @MAX_PATH, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %8, align 8
  %23 = load i32, i32* @MAX_PATH, align 4
  %24 = call i32 @GetSystemDirectoryA(i8* %22, i32 %23)
  %25 = load i32, i32* @MAX_PATH, align 4
  %26 = load i32, i32* @ODBC_INSTALL_COMPLETE, align 4
  %27 = call i32 @SQLInstallTranslatorEx(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* null, i8* %19, i32 %25, i64* %4, i32 %26, i32* null)
  store i32 %27, i32* %5, align 4
  %28 = call i32 @SQLInstallerErrorW(i32 1, i64* %8, i32* null, i32 0, i32* null)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %0
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @ODBC_ERROR_WRITING_SYSINFO_FAILED, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @win_skip(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %184

37:                                               ; preds = %31, %0
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @SQL_SUCCESS, align 8
  %43 = icmp eq i64 %41, %42
  br label %44

44:                                               ; preds = %40, %37
  %45 = phi i1 [ false, %37 ], [ %43, %40 ]
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %6, align 4
  %48 = load i64, i64* %8, align 8
  %49 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %47, i64 %48)
  %50 = call i32 @strcmp(i8* %19, i8* %22)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %19)
  %55 = load i64, i64* %4, align 8
  %56 = call i64 @strlen(i8* %19)
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i64, i64* %4, align 8
  %60 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %59)
  %61 = load i32, i32* @MAX_PATH, align 4
  %62 = load i32, i32* @ODBC_INSTALL_COMPLETE, align 4
  %63 = call i32 @SQLInstallTranslatorEx(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %19, i32 %61, i64* %4, i32 %62, i32* null)
  store i32 %63, i32* %5, align 4
  %64 = call i32 @SQLInstallerErrorW(i32 1, i64* %8, i32* null, i32 0, i32* null)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %44
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* @SQL_SUCCESS, align 8
  %70 = icmp eq i64 %68, %69
  br label %71

71:                                               ; preds = %67, %44
  %72 = phi i1 [ false, %44 ], [ %70, %67 ]
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %6, align 4
  %75 = load i64, i64* %8, align 8
  %76 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %74, i64 %75)
  %77 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %19)
  %82 = load i64, i64* %4, align 8
  %83 = call i64 @strlen(i8* %19)
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = load i64, i64* %4, align 8
  %87 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %86)
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %143

90:                                               ; preds = %71
  %91 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %92 = load i32, i32* @KEY_READ, align 4
  %93 = call i64 @RegOpenKeyExA(i32 %91, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 0, i32 %92, i32* %9)
  store i64 %93, i64* %10, align 8
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* @ERROR_SUCCESS, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* @ERROR_SUCCESS, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %142

102:                                              ; preds = %90
  store i64 3735928559, i64* %12, align 8
  %103 = load i32, i32* @MAX_PATH, align 4
  %104 = sext i32 %103 to i64
  store i64 %104, i64* %13, align 8
  %105 = load i32, i32* @MAX_PATH, align 4
  %106 = zext i32 %105 to i64
  %107 = call i8* @llvm.stacksave()
  store i8* %107, i8** %14, align 8
  %108 = alloca i8, i64 %106, align 16
  store i64 %106, i64* %15, align 8
  %109 = call i32 @strcpy(i8* %108, i8* %22)
  %110 = call i32 @strcat(i8* %108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %111 = trunc i64 %17 to i32
  %112 = call i32 @memset(i8* %19, i32 0, i32 %111)
  %113 = load i32, i32* %9, align 4
  %114 = bitcast i8* %19 to i32*
  %115 = call i64 @RegQueryValueExA(i32 %113, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32* null, i64* %12, i32* %114, i64* %13)
  store i64 %115, i64* %10, align 8
  %116 = load i64, i64* %10, align 8
  %117 = load i64, i64* @ERROR_SUCCESS, align 8
  %118 = icmp eq i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %121 = load i64, i64* %12, align 8
  %122 = load i64, i64* @REG_SZ, align 8
  %123 = icmp eq i64 %121, %122
  %124 = zext i1 %123 to i32
  %125 = load i64, i64* %12, align 8
  %126 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i64 %125)
  %127 = load i64, i64* %13, align 8
  %128 = call i64 @strlen(i8* %108)
  %129 = add nsw i64 %128, 1
  %130 = icmp eq i64 %127, %129
  %131 = zext i1 %130 to i32
  %132 = load i64, i64* %13, align 8
  %133 = call i32 (i32, i8*, ...) @ok(i32 %131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i64 %132)
  %134 = call i32 @strcmp(i8* %19, i8* %108)
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  %137 = zext i1 %136 to i32
  %138 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %19)
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @RegCloseKey(i32 %139)
  %141 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %141)
  br label %142

142:                                              ; preds = %102, %90
  br label %143

143:                                              ; preds = %142, %71
  store i64 100, i64* %7, align 8
  %144 = call i32 @SQLRemoveTranslator(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i64* %7)
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %5, align 4
  %146 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0))
  %147 = load i64, i64* %7, align 8
  %148 = icmp eq i64 %147, 0
  %149 = zext i1 %148 to i32
  %150 = load i64, i64* %7, align 8
  %151 = call i32 (i32, i8*, ...) @ok(i32 %149, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i64 %150)
  store i64 100, i64* %7, align 8
  %152 = call i32 @SQLRemoveTranslator(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i64* %7)
  store i32 %152, i32* %5, align 4
  %153 = load i32, i32* %5, align 4
  %154 = call i32 (i32, i8*, ...) @ok(i32 %153, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0))
  %155 = load i64, i64* %7, align 8
  %156 = icmp eq i64 %155, 0
  %157 = zext i1 %156 to i32
  %158 = load i64, i64* %7, align 8
  %159 = call i32 (i32, i8*, ...) @ok(i32 %157, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i64 %158)
  store i64 100, i64* %7, align 8
  %160 = call i32 @SQLRemoveTranslator(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0), i64* %7)
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* %5, align 4
  %162 = icmp ne i32 %161, 0
  %163 = xor i1 %162, true
  %164 = zext i1 %163 to i32
  %165 = call i32 (i32, i8*, ...) @ok(i32 %164, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0))
  %166 = load i64, i64* %7, align 8
  %167 = icmp eq i64 %166, 100
  %168 = zext i1 %167 to i32
  %169 = load i64, i64* %7, align 8
  %170 = call i32 (i32, i8*, ...) @ok(i32 %168, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0), i64 %169)
  %171 = call i32 @SQLInstallerErrorW(i32 1, i64* %8, i32* null, i32 0, i32* null)
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* %6, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %143
  %175 = load i64, i64* %8, align 8
  %176 = load i64, i64* @ODBC_ERROR_COMPONENT_NOT_FOUND, align 8
  %177 = icmp eq i64 %175, %176
  br label %178

178:                                              ; preds = %174, %143
  %179 = phi i1 [ false, %143 ], [ %177, %174 ]
  %180 = zext i1 %179 to i32
  %181 = load i32, i32* %6, align 4
  %182 = load i64, i64* %8, align 8
  %183 = call i32 (i32, i8*, ...) @ok(i32 %180, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %181, i64 %182)
  store i32 0, i32* %11, align 4
  br label %184

184:                                              ; preds = %178, %35
  %185 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %185)
  %186 = load i32, i32* %11, align 4
  switch i32 %186, label %188 [
    i32 0, label %187
    i32 1, label %187
  ]

187:                                              ; preds = %184, %184
  ret void

188:                                              ; preds = %184
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetSystemDirectoryA(i8*, i32) #2

declare dso_local i32 @SQLInstallTranslatorEx(i8*, i8*, i8*, i32, i64*, i32, i32*) #2

declare dso_local i32 @SQLInstallerErrorW(i32, i64*, i32*, i32, i32*) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @RegOpenKeyExA(i32, i8*, i32, i32, i32*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i64 @RegQueryValueExA(i32, i8*, i32*, i64*, i32*, i64*) #2

declare dso_local i32 @RegCloseKey(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @SQLRemoveTranslator(i8*, i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
