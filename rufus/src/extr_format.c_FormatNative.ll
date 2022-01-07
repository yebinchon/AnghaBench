; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_format.c_FormatNative.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_format.c_FormatNative.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@FormatEx = common dso_local global i32 0, align 4
@EnableVolumeCompression = common dso_local global i32 0, align 4
@FileSystemLabel = common dso_local global i32* null, align 8
@FS_EXFAT = common dso_local global i64 0, align 8
@dur_mins = common dso_local global i64 0, align 8
@dur_secs = common dso_local global i64 0, align 8
@MSG_220 = common dso_local global i32 0, align 4
@MSG_222 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Could not read volume name\00", align 1
@ERROR_SEVERITY_ERROR = common dso_local global i32 0, align 4
@FACILITY_STORAGE = common dso_local global i32 0, align 4
@ERROR_GEN_FAILURE = common dso_local global i32 0, align 4
@FormatStatus = common dso_local global i32 0, align 4
@LC_ALL = common dso_local global i32 0, align 4
@fmifs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Using default cluster size\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Using cluster size: %d bytes\00", align 1
@format_percent = common dso_local global float 0.000000e+00, align 4
@task_number = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"%s format was selected\00", align 1
@FP_QUICK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"Quick\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Slow\00", align 1
@WRITE_RETRIES = common dso_local global i64 0, align 8
@SelectedDrive = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@FormatExCallback = common dso_local global i32 0, align 4
@ERROR_CANCELLED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [17 x i8] c"%s - Retrying...\00", align 1
@WRITE_TIMEOUT = common dso_local global i32 0, align 4
@FP_COMPRESSION = common dso_local global i32 0, align 4
@FPF_COMPRESSED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"Enabled NTFS compression\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Could not enable NTFS compression: %s\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Format completed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i8*, i8*, i32)* @FormatNative to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FormatNative(i32 %0, i32 %1, i32 %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* @FormatEx, align 4
  %22 = call i32 @PF_DECL(i32 %21)
  %23 = load i32, i32* @EnableVolumeCompression, align 4
  %24 = call i32 @PF_DECL(i32 %23)
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = call i8* @utf8_to_wchar(i8* %25)
  store i8* %26, i8** %17, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i8* @utf8_to_wchar(i8* %27)
  store i8* %28, i8** %18, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i32*, i32** @FileSystemLabel, align 8
  %31 = load i64, i64* @FS_EXFAT, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @strcmp(i8* %29, i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %6
  %37 = load i64, i64* @dur_mins, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i64, i64* @dur_secs, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* @MSG_220, align 4
  %44 = load i8*, i8** %10, align 8
  %45 = load i64, i64* @dur_mins, align 8
  %46 = load i64, i64* @dur_secs, align 8
  %47 = call i32 (i32, i32, i8*, ...) @PrintInfoDebug(i32 0, i32 %43, i8* %44, i64 %45, i64 %46)
  br label %52

48:                                               ; preds = %39, %6
  %49 = load i32, i32* @MSG_222, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 (i32, i32, i8*, ...) @PrintInfoDebug(i32 0, i32 %49, i8* %50)
  br label %52

52:                                               ; preds = %48, %42
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @TRUE, align 4
  %56 = load i32, i32* @TRUE, align 4
  %57 = call i8* @GetLogicalName(i32 %53, i32 %54, i32 %55, i32 %56)
  store i8* %57, i8** %15, align 8
  %58 = load i8*, i8** %15, align 8
  %59 = call i8* @utf8_to_wchar(i8* %58)
  store i8* %59, i8** %16, align 8
  %60 = load i8*, i8** %16, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %52
  %63 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @ERROR_SEVERITY_ERROR, align 4
  %65 = load i32, i32* @FACILITY_STORAGE, align 4
  %66 = call i32 @FAC(i32 %65)
  %67 = or i32 %64, %66
  %68 = load i32, i32* @ERROR_GEN_FAILURE, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* @FormatStatus, align 4
  br label %167

70:                                               ; preds = %52
  %71 = load i8*, i8** %16, align 8
  %72 = load i8*, i8** %16, align 8
  %73 = call i64 @wcslen(i8* %72)
  %74 = sub i64 %73, 1
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  store i8 0, i8* %75, align 1
  %76 = load i32, i32* @LC_ALL, align 4
  %77 = call i8* @setlocale(i32 %76, i8* null)
  store i8* %77, i8** %14, align 8
  %78 = load i32, i32* @FormatEx, align 4
  %79 = load i32, i32* @fmifs, align 4
  %80 = call i32 @PF_INIT_OR_OUT(i32 %78, i32 %79)
  %81 = load i32, i32* @EnableVolumeCompression, align 4
  %82 = load i32, i32* @fmifs, align 4
  %83 = call i32 @PF_INIT(i32 %81, i32 %82)
  %84 = load i32, i32* @LC_ALL, align 4
  %85 = load i8*, i8** %14, align 8
  %86 = call i8* @setlocale(i32 %84, i8* %85)
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 512
  br i1 %88, label %89, label %91

89:                                               ; preds = %70
  store i32 0, i32* %9, align 4
  %90 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %94

91:                                               ; preds = %70
  %92 = load i32, i32* %9, align 4
  %93 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %91, %89
  store float 0.000000e+00, float* @format_percent, align 4
  store i64 0, i64* @task_number, align 8
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @FP_QUICK, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %101 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %100)
  store i64 0, i64* %19, align 8
  br label %102

102:                                              ; preds = %131, %94
  %103 = load i64, i64* %19, align 8
  %104 = load i64, i64* @WRITE_RETRIES, align 8
  %105 = icmp ult i64 %103, %104
  br i1 %105, label %106, label %134

106:                                              ; preds = %102
  %107 = load i8*, i8** %16, align 8
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SelectedDrive, i32 0, i32 0), align 4
  %109 = load i8*, i8** %18, align 8
  %110 = load i8*, i8** %17, align 8
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @FP_QUICK, align 4
  %113 = and i32 %111, %112
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @FormatExCallback, align 4
  %116 = call i32 @pfFormatEx(i8* %107, i32 %108, i8* %109, i8* %110, i32 %113, i32 %114, i32 %115)
  %117 = load i32, i32* @FormatStatus, align 4
  %118 = call i64 @IS_ERROR(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %106
  %121 = load i32, i32* @FormatStatus, align 4
  %122 = call i64 @HRESULT_CODE(i32 %121)
  %123 = load i64, i64* @ERROR_CANCELLED, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %120, %106
  br label %134

126:                                              ; preds = %120
  %127 = call i32 (...) @WindowsErrorString()
  %128 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @WRITE_TIMEOUT, align 4
  %130 = call i32 @Sleep(i32 %129)
  br label %131

131:                                              ; preds = %126
  %132 = load i64, i64* %19, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %19, align 8
  br label %102

134:                                              ; preds = %125, %102
  %135 = load i32, i32* @FormatStatus, align 4
  %136 = call i64 @IS_ERROR(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  br label %167

139:                                              ; preds = %134
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* @FP_COMPRESSION, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %159

144:                                              ; preds = %139
  %145 = load i8*, i8** %16, align 8
  %146 = load i8*, i8** %16, align 8
  %147 = call i64 @wcslen(i8* %146)
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  store i8 92, i8* %148, align 1
  %149 = load i8*, i8** %16, align 8
  %150 = load i32, i32* @FPF_COMPRESSED, align 4
  %151 = call i64 @pfEnableVolumeCompression(i8* %149, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %144
  %154 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %158

155:                                              ; preds = %144
  %156 = call i32 (...) @WindowsErrorString()
  %157 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %155, %153
  br label %159

159:                                              ; preds = %158, %139
  %160 = load i32, i32* @FormatStatus, align 4
  %161 = call i64 @IS_ERROR(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %159
  %164 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %165 = load i32, i32* @TRUE, align 4
  store i32 %165, i32* %13, align 4
  br label %166

166:                                              ; preds = %163, %159
  br label %167

167:                                              ; preds = %166, %138, %62
  %168 = load i32, i32* %13, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %182, label %170

170:                                              ; preds = %167
  %171 = load i32, i32* @FormatStatus, align 4
  %172 = call i64 @IS_ERROR(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %182, label %174

174:                                              ; preds = %170
  %175 = load i32, i32* @ERROR_SEVERITY_ERROR, align 4
  %176 = load i32, i32* @FACILITY_STORAGE, align 4
  %177 = call i32 @FAC(i32 %176)
  %178 = or i32 %175, %177
  %179 = call i32 (...) @GetLastError()
  %180 = call i32 @SCODE_CODE(i32 %179)
  %181 = or i32 %178, %180
  store i32 %181, i32* @FormatStatus, align 4
  br label %182

182:                                              ; preds = %174, %170, %167
  %183 = load i8*, i8** %15, align 8
  %184 = call i32 @safe_free(i8* %183)
  %185 = load i8*, i8** %16, align 8
  %186 = call i32 @safe_free(i8* %185)
  %187 = load i8*, i8** %17, align 8
  %188 = call i32 @safe_free(i8* %187)
  %189 = load i8*, i8** %18, align 8
  %190 = call i32 @safe_free(i8* %189)
  %191 = load i32, i32* %13, align 4
  ret i32 %191
}

declare dso_local i32 @PF_DECL(i32) #1

declare dso_local i8* @utf8_to_wchar(i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @PrintInfoDebug(i32, i32, i8*, ...) #1

declare dso_local i8* @GetLogicalName(i32, i32, i32, i32) #1

declare dso_local i32 @uprintf(i8*, ...) #1

declare dso_local i32 @FAC(i32) #1

declare dso_local i64 @wcslen(i8*) #1

declare dso_local i8* @setlocale(i32, i8*) #1

declare dso_local i32 @PF_INIT_OR_OUT(i32, i32) #1

declare dso_local i32 @PF_INIT(i32, i32) #1

declare dso_local i32 @pfFormatEx(i8*, i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i64 @IS_ERROR(i32) #1

declare dso_local i64 @HRESULT_CODE(i32) #1

declare dso_local i32 @WindowsErrorString(...) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i64 @pfEnableVolumeCompression(i8*, i32) #1

declare dso_local i32 @SCODE_CODE(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @safe_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
