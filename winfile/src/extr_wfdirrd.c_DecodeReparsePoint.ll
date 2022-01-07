; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfdirrd.c_DecodeReparsePoint.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfdirrd.c_DecodeReparsePoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i8*, i32 }

@MAXIMUM_REPARSE_DATA_BUFFER_SIZE = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@FILE_READ_EA = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_DELETE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_FLAG_BACKUP_SEMANTICS = common dso_local global i32 0, align 4
@FILE_FLAG_OPEN_REPARSE_POINT = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@IO_REPARSE_TAG_RESERVED_ZERO = common dso_local global i32 0, align 4
@LMEM_FIXED = common dso_local global i32 0, align 4
@FSCTL_GET_REPARSE_POINT = common dso_local global i32 0, align 4
@IO_REPARSE_TAG_MOUNT_POINT = common dso_local global i64 0, align 8
@IO_REPARSE_TAG_SYMLINK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i32] [i32 60, i32 115, i32 121, i32 109, i32 98, i32 111, i32 108, i32 32, i32 108, i32 105, i32 110, i32 107, i32 32, i32 114, i32 101, i32 102, i32 101, i32 114, i32 101, i32 110, i32 99, i32 101, i32 32, i32 116, i32 111, i32 111, i32 32, i32 108, i32 111, i32 110, i32 103, i32 62, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DecodeReparsePoint(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load i32, i32* @MAXIMUM_REPARSE_DATA_BUFFER_SIZE, align 4
  store i32 %21, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %22 = load i32, i32* @MAXPATHLEN, align 4
  %23 = mul nsw i32 2, %22
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %17, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %18, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @lstrcpy(i8* %26, i8* %27)
  %29 = call i32 @StripFilespec(i8* %26)
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @AppendToPath(i8* %26, i8* %33)
  br label %35

35:                                               ; preds = %32, %4
  %36 = load i32, i32* @FILE_READ_EA, align 4
  %37 = load i32, i32* @FILE_SHARE_READ, align 4
  %38 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @FILE_SHARE_DELETE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @OPEN_EXISTING, align 4
  %43 = load i32, i32* @FILE_FLAG_BACKUP_SEMANTICS, align 4
  %44 = load i32, i32* @FILE_FLAG_OPEN_REPARSE_POINT, align 4
  %45 = or i32 %43, %44
  %46 = call i64 @CreateFile(i8* %26, i32 %36, i32 %41, i32* null, i32 %42, i32 %45, i32* null)
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %35
  %51 = load i32, i32* @IO_REPARSE_TAG_RESERVED_ZERO, align 4
  store i32 %51, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %150

52:                                               ; preds = %35
  %53 = load i32, i32* @LMEM_FIXED, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i64 @LocalAlloc(i32 %53, i32 %54)
  %56 = inttoptr i64 %55 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %12, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i32, i32* @FSCTL_GET_REPARSE_POINT, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @DeviceIoControl(i64 %57, i32 %58, i32* null, i32 0, %struct.TYPE_6__* %59, i32 %60, i32* %13, i32* null)
  store i32 %61, i32* %16, align 4
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @CloseHandle(i64 %62)
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %52
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %68 = call i32 @LocalFree(%struct.TYPE_6__* %67)
  %69 = load i32, i32* @IO_REPARSE_TAG_RESERVED_ZERO, align 4
  store i32 %69, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %150

70:                                               ; preds = %52
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %15, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @IsReparseTagMicrosoft(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %146

79:                                               ; preds = %70
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* @IO_REPARSE_TAG_MOUNT_POINT, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %93, label %86

86:                                               ; preds = %79
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* @IO_REPARSE_TAG_SYMLINK, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %146

93:                                               ; preds = %86, %79
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = udiv i64 %98, 1
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %142

104:                                              ; preds = %93
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = udiv i64 %113, 1
  %115 = getelementptr inbounds i8, i8* %108, i64 %114
  store i8* %115, i8** %20, align 8
  %116 = load i8*, i8** %20, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 0
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 63
  br i1 %120, label %121, label %132

121:                                              ; preds = %104
  %122 = load i8*, i8** %20, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 1
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 92
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load i8*, i8** %20, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 2
  store i8* %129, i8** %20, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sub nsw i32 %130, 2
  store i32 %131, i32* %14, align 4
  br label %132

132:                                              ; preds = %127, %121, %104
  %133 = load i8*, i8** %8, align 8
  %134 = load i32, i32* @MAXPATHLEN, align 4
  %135 = load i8*, i8** %20, align 8
  %136 = load i32, i32* %14, align 4
  %137 = call i32 @wcsncpy_s(i8* %133, i32 %134, i8* %135, i32 %136)
  %138 = load i8*, i8** %8, align 8
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  store i8 0, i8* %141, align 1
  br label %145

142:                                              ; preds = %93
  %143 = load i8*, i8** %8, align 8
  %144 = call i32 @lstrcpy(i8* %143, i8* bitcast ([33 x i32]* @.str to i8*))
  br label %145

145:                                              ; preds = %142, %132
  br label %146

146:                                              ; preds = %145, %86, %70
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %148 = call i32 @LocalFree(%struct.TYPE_6__* %147)
  %149 = load i32, i32* %15, align 4
  store i32 %149, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %150

150:                                              ; preds = %146, %66, %50
  %151 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %151)
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lstrcpy(i8*, i8*) #2

declare dso_local i32 @StripFilespec(i8*) #2

declare dso_local i32 @AppendToPath(i8*, i8*) #2

declare dso_local i64 @CreateFile(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i64 @LocalAlloc(i32, i32) #2

declare dso_local i32 @DeviceIoControl(i64, i32, i32*, i32, %struct.TYPE_6__*, i32, i32*, i32*) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i32 @LocalFree(%struct.TYPE_6__*) #2

declare dso_local i64 @IsReparseTagMicrosoft(i32) #2

declare dso_local i32 @wcsncpy_s(i8*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
