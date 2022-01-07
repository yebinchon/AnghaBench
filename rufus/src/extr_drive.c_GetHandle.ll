; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_drive.c_GetHandle.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_drive.c_GetHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@groot_name = common dso_local global i32 0, align 4
@groot_len = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"???\00", align 1
@DRIVE_ACCESS_RETRIES = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@ERROR_SHARING_VIOLATION = common dso_local global i64 0, align 8
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Waiting for access on %s [%s]...\00", align 1
@.str.2 = private unnamed_addr constant [83 x i8] c"Warning: Could not obtain exclusive rights. Retrying with write sharing enabled...\00", align 1
@TRUE = common dso_local global i64 0, align 8
@SEARCH_PROCESS_TIMEOUT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DRIVE_ACCESS_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Could not open %s: %s\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Opened %s for %s write access\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"exclusive\00", align 1
@FSCTL_ALLOW_EXTENDED_DASD_IO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"I/O boundary checks disabled\00", align 1
@FSCTL_LOCK_VOLUME = common dso_local global i32 0, align 4
@FormatStatus = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"Could not lock access to %s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i64)* @GetHandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @GetHandle(i8* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  store i64 %16, i64* %13, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @safe_strlen(i8* %21)
  %23 = icmp slt i32 %22, 5
  br i1 %23, label %42, label %24

24:                                               ; preds = %4
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 92
  br i1 %29, label %42, label %30

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 92
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 3
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 92
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %30, %24, %4
  br label %214

43:                                               ; preds = %36
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* @groot_name, align 4
  %46 = load i64, i64* @groot_len, align 8
  %47 = call i64 @safe_strncmp(i8* %44, i32 %45, i64 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load i8*, i8** %5, align 8
  %51 = load i64, i64* @groot_len, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = call i32 @static_strcpy(i8* %20, i8* %52)
  br label %63

54:                                               ; preds = %43
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 4
  %57 = trunc i64 %18 to i32
  %58 = call i64 @QueryDosDeviceA(i8* %56, i8* %20, i32 %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = call i32 @strcpy(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %54
  br label %63

63:                                               ; preds = %62, %49
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %133, %63
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @DRIVE_ACCESS_RETRIES, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %136

68:                                               ; preds = %64
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* @GENERIC_READ, align 4
  %71 = load i64, i64* %7, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @GENERIC_WRITE, align 4
  br label %76

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i32 [ %74, %73 ], [ 0, %75 ]
  %78 = or i32 %70, %77
  %79 = load i32, i32* @FILE_SHARE_READ, align 4
  %80 = load i64, i64* %8, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* @FILE_SHARE_WRITE, align 4
  br label %85

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %84, %82
  %86 = phi i32 [ %83, %82 ], [ 0, %84 ]
  %87 = or i32 %79, %86
  %88 = load i32, i32* @OPEN_EXISTING, align 4
  %89 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %90 = call i64 @CreateFileA(i8* %69, i32 %78, i32 %87, i32* null, i32 %88, i32 %89, i32* null)
  store i64 %90, i64* %13, align 8
  %91 = load i64, i64* %13, align 8
  %92 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %136

95:                                               ; preds = %85
  %96 = call i64 (...) @GetLastError()
  %97 = load i64, i64* @ERROR_SHARING_VIOLATION, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = call i64 (...) @GetLastError()
  %101 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %136

104:                                              ; preds = %99, %95
  %105 = load i32, i32* %9, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i8*, i8** %5, align 8
  %109 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %108, i8* %20)
  br label %128

110:                                              ; preds = %104
  %111 = load i64, i64* %8, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %127, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @DRIVE_ACCESS_RETRIES, align 4
  %116 = sdiv i32 %115, 3
  %117 = icmp sgt i32 %114, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %113
  %119 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0))
  %120 = load i64, i64* @TRUE, align 8
  store i64 %120, i64* %8, align 8
  %121 = load i32, i32* @SEARCH_PROCESS_TIMEOUT, align 4
  %122 = load i64, i64* @TRUE, align 8
  %123 = load i64, i64* @TRUE, align 8
  %124 = load i32, i32* @FALSE, align 4
  %125 = call i32 @SearchProcess(i8* %20, i32 %121, i64 %122, i64 %123, i32 %124)
  %126 = or i32 %125, 64
  store i32 %126, i32* %10, align 4
  br label %127

127:                                              ; preds = %118, %113, %110
  br label %128

128:                                              ; preds = %127, %107
  %129 = load i32, i32* @DRIVE_ACCESS_TIMEOUT, align 4
  %130 = load i32, i32* @DRIVE_ACCESS_RETRIES, align 4
  %131 = sdiv i32 %129, %130
  %132 = call i32 @Sleep(i32 %131)
  br label %133

133:                                              ; preds = %128
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %64

136:                                              ; preds = %103, %94, %64
  %137 = load i64, i64* %13, align 8
  %138 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = load i8*, i8** %5, align 8
  %142 = call i8* (...) @WindowsErrorString()
  %143 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %141, i8* %142)
  br label %214

144:                                              ; preds = %136
  %145 = load i64, i64* %7, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %144
  %148 = load i8*, i8** %5, align 8
  %149 = load i64, i64* %8, align 8
  %150 = icmp ne i64 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)
  %153 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %148, i8* %152)
  br label %154

154:                                              ; preds = %147, %144
  %155 = load i64, i64* %6, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %213

157:                                              ; preds = %154
  %158 = load i64, i64* %13, align 8
  %159 = load i32, i32* @FSCTL_ALLOW_EXTENDED_DASD_IO, align 4
  %160 = call i64 @DeviceIoControl(i64 %158, i32 %159, i32* null, i32 0, i32* null, i32 0, i32* %11, i32* null)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %157
  %165 = call i64 (...) @GetTickCount64()
  %166 = load i32, i32* @DRIVE_ACCESS_TIMEOUT, align 4
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %165, %167
  store i64 %168, i64* %12, align 8
  br label %169

169:                                              ; preds = %185, %164
  %170 = load i64, i64* %13, align 8
  %171 = load i32, i32* @FSCTL_LOCK_VOLUME, align 4
  %172 = call i64 @DeviceIoControl(i64 %170, i32 %171, i32* null, i32 0, i32* null, i32 0, i32* %11, i32* null)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  br label %214

175:                                              ; preds = %169
  %176 = load i32, i32* @FormatStatus, align 4
  %177 = call i64 @IS_ERROR(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %175
  br label %189

180:                                              ; preds = %175
  %181 = load i32, i32* @DRIVE_ACCESS_TIMEOUT, align 4
  %182 = load i32, i32* @DRIVE_ACCESS_RETRIES, align 4
  %183 = sdiv i32 %181, %182
  %184 = call i32 @Sleep(i32 %183)
  br label %185

185:                                              ; preds = %180
  %186 = call i64 (...) @GetTickCount64()
  %187 = load i64, i64* %12, align 8
  %188 = icmp slt i64 %186, %187
  br i1 %188, label %169, label %189

189:                                              ; preds = %185, %179
  %190 = load i8*, i8** %5, align 8
  %191 = call i8* (...) @WindowsErrorString()
  %192 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8* %190, i8* %191)
  %193 = load i32, i32* @FormatStatus, align 4
  %194 = call i64 @IS_ERROR(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %205, label %196

196:                                              ; preds = %189
  %197 = load i32, i32* %10, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %196
  %200 = load i32, i32* @SEARCH_PROCESS_TIMEOUT, align 4
  %201 = load i64, i64* @TRUE, align 8
  %202 = load i64, i64* @TRUE, align 8
  %203 = load i32, i32* @FALSE, align 4
  %204 = call i32 @SearchProcess(i8* %20, i32 %200, i64 %201, i64 %202, i32 %203)
  store i32 %204, i32* %10, align 4
  br label %205

205:                                              ; preds = %199, %196, %189
  %206 = load i32, i32* %10, align 4
  %207 = and i32 %206, 7
  %208 = icmp ne i32 %207, 1
  br i1 %208, label %209, label %212

209:                                              ; preds = %205
  %210 = load i64, i64* %13, align 8
  %211 = call i32 @safe_closehandle(i64 %210)
  br label %212

212:                                              ; preds = %209, %205
  br label %213

213:                                              ; preds = %212, %154
  br label %214

214:                                              ; preds = %213, %174, %140, %42
  %215 = load i64, i64* %13, align 8
  %216 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %216)
  ret i64 %215
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @safe_strlen(i8*) #2

declare dso_local i64 @safe_strncmp(i8*, i32, i64) #2

declare dso_local i32 @static_strcpy(i8*, i8*) #2

declare dso_local i64 @QueryDosDeviceA(i8*, i8*, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @uprintf(i8*, ...) #2

declare dso_local i32 @SearchProcess(i8*, i32, i64, i64, i32) #2

declare dso_local i32 @Sleep(i32) #2

declare dso_local i8* @WindowsErrorString(...) #2

declare dso_local i64 @DeviceIoControl(i64, i32, i32*, i32, i32*, i32, i32*, i32*) #2

declare dso_local i64 @GetTickCount64(...) #2

declare dso_local i64 @IS_ERROR(i32) #2

declare dso_local i32 @safe_closehandle(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
