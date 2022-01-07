; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/explorer-old/services/extr_startup.c_ProcessRunKeys.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/explorer-old/services/extr_startup.c_ProcessRunKeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ProcessRunKeys.WINKEY_NAME = internal constant [42 x i8] c"Software\\Microsoft\\Windows\\CurrentVersion\00", align 16
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@HKEY_LOCAL_MACHINE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i32] [i32 112, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 105, i32 110, i32 103, i32 32, i32 37, i32 115, i32 32, i32 101, i32 110, i32 116, i32 114, i32 105, i32 101, i32 115, i32 32, i32 117, i32 110, i32 100, i32 101, i32 114, i32 32, i32 72, i32 75, i32 76, i32 77, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [34 x i32] [i32 112, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 105, i32 110, i32 103, i32 32, i32 37, i32 115, i32 32, i32 101, i32 110, i32 116, i32 114, i32 105, i32 101, i32 115, i32 32, i32 117, i32 110, i32 100, i32 101, i32 114, i32 32, i32 72, i32 75, i32 67, i32 85, i32 10, i32 0], align 4
@KEY_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"RegOpenKey failed on Software\\Microsoft\\Windows\\CurrentVersion (%ld)\0A\00", align 1
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"Key doesn't exist - nothing to be done\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"RegOpenKey failed on run key (%ld)\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Couldn't query key info (%ld)\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"No commands to execute.\0A\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"Couldn't allocate memory for the commands to be executed\0A\00", align 1
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [46 x i8] c"Couldn't allocate memory for the value names\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Couldn't read in value %lu - %ld\0A\00", align 1
@SM_CLEANBOOT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [60 x i8] c"Couldn't delete value - %lu, %ld. Running command anyways.\0A\00", align 1
@REG_SZ = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [36 x i8] c"Incorrect type of value #%lu (%lu)\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@INVALID_RUNCMD_RETURN = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [30 x i8] c"Error running cmd #%lu (%ld)\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Done processing cmd #%lu\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8*, i64, i64)* @ProcessRunKeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ProcessRunKeys(i64 %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %20 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %20, i64* %11, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @HKEY_LOCAL_MACHINE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @wprintf(i8* bitcast ([34 x i32]* @.str to i8*), i8* %25)
  br label %30

27:                                               ; preds = %4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @wprintf(i8* bitcast ([34 x i32]* @.str.1 to i8*), i8* %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i64, i64* %5, align 8
  %32 = load i32, i32* @KEY_READ, align 4
  %33 = call i64 @RegOpenKeyExW(i64 %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @ProcessRunKeys.WINKEY_NAME, i64 0, i64 0), i32 0, i32 %32, i64* %9)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* @ERROR_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i64, i64* %11, align 8
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i64 %37)
  br label %169

39:                                               ; preds = %30
  %40 = load i64, i64* %9, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @KEY_ALL_ACCESS, align 4
  br label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @KEY_READ, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = call i64 @RegOpenKeyExW(i64 %40, i8* %41, i32 0, i32 %49, i64* %10)
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* @ERROR_SUCCESS, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %59, i64* %11, align 8
  br label %63

60:                                               ; preds = %53
  %61 = load i64, i64* %11, align 8
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %61)
  br label %63

63:                                               ; preds = %60, %57
  br label %169

64:                                               ; preds = %48
  %65 = load i64, i64* %10, align 8
  %66 = call i64 @RegQueryInfoKeyW(i64 %65, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i64* %12, i64* %14, i64* %13, i32* null, i32* null)
  store i64 %66, i64* %11, align 8
  %67 = load i64, i64* @ERROR_SUCCESS, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i64, i64* %11, align 8
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i64 %70)
  br label %169

72:                                               ; preds = %64
  %73 = load i64, i64* %12, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %77 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %77, i64* %11, align 8
  br label %169

78:                                               ; preds = %72
  %79 = load i64, i64* %13, align 8
  %80 = call i8* @malloc(i64 %79)
  store i8* %80, i8** %15, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0))
  %84 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %84, i64* %11, align 8
  br label %169

85:                                               ; preds = %78
  %86 = load i64, i64* %14, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %14, align 8
  %88 = mul i64 %87, 1
  %89 = call i8* @malloc(i64 %88)
  store i8* %89, i8** %16, align 8
  %90 = icmp eq i8* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  %93 = load i8*, i8** %15, align 8
  %94 = call i32 @free(i8* %93)
  %95 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %95, i64* %11, align 8
  br label %169

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %160, %145, %127, %113, %96
  %98 = load i64, i64* %12, align 8
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %163

100:                                              ; preds = %97
  %101 = load i64, i64* %14, align 8
  store i64 %101, i64* %17, align 8
  %102 = load i64, i64* %13, align 8
  store i64 %102, i64* %18, align 8
  %103 = load i64, i64* %12, align 8
  %104 = add nsw i64 %103, -1
  store i64 %104, i64* %12, align 8
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* %12, align 8
  %107 = load i8*, i8** %16, align 8
  %108 = load i8*, i8** %15, align 8
  %109 = ptrtoint i8* %108 to i32
  %110 = call i64 @RegEnumValueW(i64 %105, i64 %106, i8* %107, i64* %17, i32 0, i64* %19, i32 %109, i64* %18)
  store i64 %110, i64* %11, align 8
  %111 = load i64, i64* @ERROR_SUCCESS, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %100
  %114 = load i64, i64* %12, align 8
  %115 = load i64, i64* %11, align 8
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i64 %114, i64 %115)
  br label %97

117:                                              ; preds = %100
  %118 = load i32, i32* @SM_CLEANBOOT, align 4
  %119 = call i64 @GetSystemMetrics(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %117
  %122 = load i8*, i8** %16, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 0
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %125, 42
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %97

128:                                              ; preds = %121, %117
  %129 = load i64, i64* %7, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %128
  %132 = load i64, i64* %10, align 8
  %133 = load i8*, i8** %16, align 8
  %134 = call i64 @RegDeleteValueW(i64 %132, i8* %133)
  store i64 %134, i64* %11, align 8
  %135 = load i64, i64* @ERROR_SUCCESS, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load i64, i64* %12, align 8
  %139 = load i64, i64* %11, align 8
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i64 0, i64 0), i64 %138, i64 %139)
  br label %141

141:                                              ; preds = %137, %131, %128
  %142 = load i64, i64* %19, align 8
  %143 = load i64, i64* @REG_SZ, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load i64, i64* %12, align 8
  %147 = load i64, i64* %19, align 8
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i64 %146, i64 %147)
  br label %97

149:                                              ; preds = %141
  %150 = load i8*, i8** %15, align 8
  %151 = load i64, i64* %8, align 8
  %152 = load i64, i64* @FALSE, align 8
  %153 = call i64 @runCmd(i8* %150, i32* null, i64 %151, i64 %152)
  store i64 %153, i64* %11, align 8
  %154 = load i64, i64* @INVALID_RUNCMD_RETURN, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %149
  %157 = load i64, i64* %12, align 8
  %158 = call i32 (...) @GetLastError()
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i64 %157, i32 %158)
  br label %160

160:                                              ; preds = %156, %149
  %161 = load i64, i64* %12, align 8
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i64 %161)
  br label %97

163:                                              ; preds = %97
  %164 = load i8*, i8** %16, align 8
  %165 = call i32 @free(i8* %164)
  %166 = load i8*, i8** %15, align 8
  %167 = call i32 @free(i8* %166)
  %168 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %168, i64* %11, align 8
  br label %169

169:                                              ; preds = %163, %91, %82, %75, %69, %63, %36
  %170 = load i64, i64* %10, align 8
  %171 = inttoptr i64 %170 to i8*
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load i64, i64* %10, align 8
  %175 = call i32 @RegCloseKey(i64 %174)
  br label %176

176:                                              ; preds = %173, %169
  %177 = load i64, i64* %9, align 8
  %178 = inttoptr i64 %177 to i8*
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = load i64, i64* %9, align 8
  %182 = call i32 @RegCloseKey(i64 %181)
  br label %183

183:                                              ; preds = %180, %176
  %184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %185 = load i64, i64* %11, align 8
  %186 = load i64, i64* @ERROR_SUCCESS, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %183
  %189 = load i64, i64* @TRUE, align 8
  br label %192

190:                                              ; preds = %183
  %191 = load i64, i64* @FALSE, align 8
  br label %192

192:                                              ; preds = %190, %188
  %193 = phi i64 [ %189, %188 ], [ %191, %190 ]
  ret i64 %193
}

declare dso_local i32 @wprintf(i8*, i8*) #1

declare dso_local i64 @RegOpenKeyExW(i64, i8*, i32, i32, i64*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @RegQueryInfoKeyW(i64, i32*, i32*, i32*, i32*, i32*, i32*, i64*, i64*, i64*, i32*, i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @RegEnumValueW(i64, i64, i8*, i64*, i32, i64*, i32, i64*) #1

declare dso_local i64 @GetSystemMetrics(i32) #1

declare dso_local i64 @RegDeleteValueW(i64, i8*) #1

declare dso_local i64 @runCmd(i8*, i32*, i64, i64) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @RegCloseKey(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
