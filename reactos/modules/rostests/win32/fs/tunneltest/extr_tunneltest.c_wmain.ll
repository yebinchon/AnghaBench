; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/fs/tunneltest/extr_tunneltest.c_wmain.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/fs/tunneltest/extr_tunneltest.c_wmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@__const.wmain.RootPath = private unnamed_addr constant [4 x i8] c"A:\\\00", align 1
@__const.wmain.File1 = private unnamed_addr constant [7 x i8] c"\\file1\00", align 1
@__const.wmain.File2 = private unnamed_addr constant [7 x i8] c"\\file2\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to get temp path\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to get volume info\0A\00", align 1
@FatName = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@Fat32Name = common dso_local global i32 0, align 4
@NtfsName = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"!(FAT, FAT32, NTFS): '%S'\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Files won't fit\0A\00", align 1
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"Failed to create file1\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to read creation time\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Failed to create file2\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Failed to rename file1\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Failed to rename file2\0A\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"Failed to open file1\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"Tunnel cache in action\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Tunnel cache NOT in action\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmain(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [4 x i8], align 1
  %10 = alloca [6 x i8], align 1
  %11 = alloca %struct.TYPE_4__, align 4
  %12 = alloca [7 x i8], align 1
  %13 = alloca [7 x i8], align 1
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %6, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %7, align 8
  %24 = load i32, i32* @MAX_PATH, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %8, align 8
  %28 = bitcast [4 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.wmain.RootPath, i32 0, i32 0), i64 4, i1 false)
  %29 = bitcast [7 x i8]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %29, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.wmain.File1, i32 0, i32 0), i64 7, i1 false)
  %30 = bitcast [7 x i8]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %30, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.wmain.File2, i32 0, i32 0), i64 7, i1 false)
  %31 = udiv i64 %21, 1
  %32 = trunc i64 %31 to i32
  %33 = call i64 @GetTempPathW(i32 %32, i8* %23)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %38 = call i32 (...) @GetLastError()
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %197

39:                                               ; preds = %2
  %40 = getelementptr inbounds i8, i8* %23, i64 0
  %41 = load i8, i8* %40, align 16
  %42 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  store i8 %41, i8* %42, align 1
  %43 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %44 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %45 = call i64 @GetVolumeInformationW(i8* %43, i32* null, i32 0, i32* null, i32* null, i32* null, i8* %44, i32 6)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %50 = call i32 (...) @GetLastError()
  store i32 %50, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %197

51:                                               ; preds = %39
  %52 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %53 = call i32 @RtlInitUnicodeString(%struct.TYPE_4__* %11, i8* %52)
  %54 = load i64, i64* @FALSE, align 8
  %55 = call i64 @RtlCompareUnicodeString(%struct.TYPE_4__* %11, i32* @FatName, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = load i64, i64* @FALSE, align 8
  %59 = call i64 @RtlCompareUnicodeString(%struct.TYPE_4__* %11, i32* @Fat32Name, i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load i64, i64* @FALSE, align 8
  %63 = call i64 @RtlCompareUnicodeString(%struct.TYPE_4__* %11, i32* @NtfsName, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i32, i32* @stderr, align 4
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %197

70:                                               ; preds = %61, %57, %51
  %71 = call i32 @wcslen(i8* %23)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = load i32, i32* @MAX_PATH, align 4
  %75 = sext i32 %74 to i64
  %76 = sub i64 %75, 7
  %77 = icmp ugt i64 %73, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32, i32* @stderr, align 4
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %197

81:                                               ; preds = %70
  %82 = getelementptr inbounds [7 x i8], [7 x i8]* %12, i64 0, i64 0
  %83 = call i32 @wcscat(i8* %23, i8* %82)
  %84 = load i32, i32* @CREATE_ALWAYS, align 4
  %85 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %86 = call i64 @CreateFileW(i8* %23, i32 0, i32 0, i32* null, i32 %84, i32 %85, i32* null)
  store i64 %86, i64* %15, align 8
  %87 = load i64, i64* %15, align 8
  %88 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %81
  %91 = load i32, i32* @stderr, align 4
  %92 = call i32 (i32, i8*, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %93 = call i32 (...) @GetLastError()
  store i32 %93, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %197

94:                                               ; preds = %81
  %95 = load i64, i64* %15, align 8
  %96 = call i64 @GetFileTime(i64 %95, i32* %16, i32* null, i32* null)
  %97 = load i64, i64* @FALSE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load i32, i32* @stderr, align 4
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %102 = load i64, i64* %15, align 8
  %103 = call i32 @CloseHandle(i64 %102)
  %104 = call i32 (...) @GetLastError()
  store i32 %104, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %197

105:                                              ; preds = %94
  %106 = load i64, i64* %15, align 8
  %107 = call i32 @CloseHandle(i64 %106)
  %108 = call i32 @Sleep(i32 1000)
  %109 = load i32, i32* %14, align 4
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %23, i64 %111
  store i8 0, i8* %112, align 1
  %113 = getelementptr inbounds [7 x i8], [7 x i8]* %13, i64 0, i64 0
  %114 = call i32 @wcscat(i8* %23, i8* %113)
  %115 = load i32, i32* @CREATE_ALWAYS, align 4
  %116 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %117 = call i64 @CreateFileW(i8* %23, i32 0, i32 0, i32* null, i32 %115, i32 %116, i32* null)
  store i64 %117, i64* %15, align 8
  %118 = load i64, i64* %15, align 8
  %119 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %105
  %122 = load i32, i32* @stderr, align 4
  %123 = call i32 (i32, i8*, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %124 = call i32 (...) @GetLastError()
  store i32 %124, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %197

125:                                              ; preds = %105
  %126 = load i64, i64* %15, align 8
  %127 = call i32 @CloseHandle(i64 %126)
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %23, i64 %129
  store i8 0, i8* %130, align 1
  %131 = getelementptr inbounds [7 x i8], [7 x i8]* %12, i64 0, i64 0
  %132 = call i32 @wcscat(i8* %23, i8* %131)
  %133 = call i32 @wcscpy(i8* %27, i8* %23)
  %134 = call i32 @wcslen(i8* %23)
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %27, i64 %136
  store i8 0, i8* %137, align 1
  %138 = call i64 @MoveFileW(i8* %23, i8* %27)
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %125
  %141 = load i32, i32* @stderr, align 4
  %142 = call i32 (i32, i8*, ...) @fprintf(i32 %141, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %143 = call i32 (...) @GetLastError()
  store i32 %143, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %197

144:                                              ; preds = %125
  %145 = call i32 @wcscpy(i8* %27, i8* %23)
  %146 = call i32 @wcslen(i8* %23)
  %147 = sub nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %27, i64 %148
  store i8 50, i8* %149, align 1
  %150 = call i64 @MoveFileW(i8* %27, i8* %23)
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %144
  %153 = load i32, i32* @stderr, align 4
  %154 = call i32 (i32, i8*, ...) @fprintf(i32 %153, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %155 = call i32 (...) @GetLastError()
  store i32 %155, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %197

156:                                              ; preds = %144
  %157 = load i32, i32* @GENERIC_READ, align 4
  %158 = load i32, i32* @OPEN_EXISTING, align 4
  %159 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %160 = call i64 @CreateFileW(i8* %23, i32 %157, i32 0, i32* null, i32 %158, i32 %159, i32* null)
  store i64 %160, i64* %15, align 8
  %161 = load i64, i64* %15, align 8
  %162 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %156
  %165 = load i32, i32* @stderr, align 4
  %166 = call i32 (i32, i8*, ...) @fprintf(i32 %165, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %167 = call i32 (...) @GetLastError()
  store i32 %167, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %197

168:                                              ; preds = %156
  %169 = load i64, i64* %15, align 8
  %170 = call i64 @GetFileTime(i64 %169, i32* %17, i32* null, i32* null)
  %171 = load i64, i64* @FALSE, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %168
  %174 = load i32, i32* @stderr, align 4
  %175 = call i32 (i32, i8*, ...) @fprintf(i32 %174, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %176 = load i64, i64* %15, align 8
  %177 = call i32 @CloseHandle(i64 %176)
  %178 = call i32 (...) @GetLastError()
  store i32 %178, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %197

179:                                              ; preds = %168
  %180 = load i64, i64* %15, align 8
  %181 = call i32 @CloseHandle(i64 %180)
  %182 = call i32 @wcslen(i8* %23)
  %183 = sub nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %27, i64 %184
  store i8 0, i8* %185, align 1
  %186 = call i32 @DeleteFileW(i8* %23)
  %187 = call i32 @DeleteFileW(i8* %27)
  %188 = call i32 @RtlCompareMemory(i32* %16, i32* %17, i32 4)
  %189 = sext i32 %188 to i64
  %190 = icmp eq i64 %189, 4
  br i1 %190, label %191, label %194

191:                                              ; preds = %179
  %192 = load i32, i32* @stdout, align 4
  %193 = call i32 (i32, i8*, ...) @fprintf(i32 %192, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %197

194:                                              ; preds = %179
  %195 = load i32, i32* @stdout, align 4
  %196 = call i32 (i32, i8*, ...) @fprintf(i32 %195, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %197

197:                                              ; preds = %194, %191, %173, %164, %152, %140, %121, %99, %90, %78, %65, %47, %35
  %198 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %198)
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @GetTempPathW(i32, i8*) #3

declare dso_local i32 @fprintf(i32, i8*, ...) #3

declare dso_local i32 @GetLastError(...) #3

declare dso_local i64 @GetVolumeInformationW(i8*, i32*, i32, i32*, i32*, i32*, i8*, i32) #3

declare dso_local i32 @RtlInitUnicodeString(%struct.TYPE_4__*, i8*) #3

declare dso_local i64 @RtlCompareUnicodeString(%struct.TYPE_4__*, i32*, i64) #3

declare dso_local i32 @wcslen(i8*) #3

declare dso_local i32 @wcscat(i8*, i8*) #3

declare dso_local i64 @CreateFileW(i8*, i32, i32, i32*, i32, i32, i32*) #3

declare dso_local i64 @GetFileTime(i64, i32*, i32*, i32*) #3

declare dso_local i32 @CloseHandle(i64) #3

declare dso_local i32 @Sleep(i32) #3

declare dso_local i32 @wcscpy(i8*, i8*) #3

declare dso_local i64 @MoveFileW(i8*, i8*) #3

declare dso_local i32 @DeleteFileW(i8*) #3

declare dso_local i32 @RtlCompareMemory(i32*, i32*, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
