; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_PrintImageInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_PrintImageInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@MSG_GET_LINK_NG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MSG_GET_FILE_NG = common dso_local global i32 0, align 4
@VFD_MEDIA_NONE = common dso_local global i64 0, align 8
@MSG_IMAGE_NONE = common dso_local global i32 0, align 4
@MSG_IMAGE_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"<RAM>\00", align 1
@VFD_FILETYPE_NONE = common dso_local global i32 0, align 4
@MSG_FILE_DESC = common dso_local global i32 0, align 4
@VFD_DISKTYPE_FILE = common dso_local global i64 0, align 8
@MSG_DISKTYPE_FILE = common dso_local global i32 0, align 4
@VFD_FLAG_DATA_MODIFIED = common dso_local global i32 0, align 4
@MSG_DISKTYPE_RAM_DIRTY = common dso_local global i32 0, align 4
@MSG_DISKTYPE_RAM_CLEAN = common dso_local global i32 0, align 4
@MSG_MEDIA_TYPE = common dso_local global i32 0, align 4
@VFD_FLAG_WRITE_PROTECTED = common dso_local global i32 0, align 4
@MSG_MEDIA_PROTECTED = common dso_local global i32 0, align 4
@MSG_MEDIA_WRITABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrintImageInfo(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %4, align 8
  %17 = alloca i64, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i64, i64 %19, align 16
  store i64 %19, i64* %6, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %2, align 4
  %23 = call i64 @VfdGetDeviceNumber(i32 %22, i64* %3)
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* @ERROR_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load i32, i32* @MSG_GET_LINK_NG, align 4
  %29 = call i32 (i32, ...) @PrintMessage(i32 %28)
  %30 = load i64, i64* %12, align 8
  %31 = call i8* @SystemError(i64 %30)
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  store i64 -1, i64* %3, align 8
  br label %33

33:                                               ; preds = %27, %1
  %34 = load i32, i32* %2, align 4
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @PrintDriveLetter(i32 %34, i64 %35)
  %37 = load i32, i32* %2, align 4
  %38 = call i64 @VfdGetImageInfo(i32 %37, i64* %17, i64* %7, i64* %8, i32* %9, i32* %10, i64* %11)
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* @ERROR_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %33
  %43 = load i32, i32* @MSG_GET_FILE_NG, align 4
  %44 = call i32 (i32, ...) @PrintMessage(i32 %43)
  %45 = load i64, i64* %12, align 8
  %46 = call i8* @SystemError(i64 %45)
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  store i32 1, i32* %13, align 4
  br label %113

48:                                               ; preds = %33
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @VFD_MEDIA_NONE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @MSG_IMAGE_NONE, align 4
  %54 = call i32 (i32, ...) @PrintMessage(i32 %53)
  store i32 1, i32* %13, align 4
  br label %113

55:                                               ; preds = %48
  %56 = getelementptr inbounds i64, i64* %17, i64 0
  %57 = load i64, i64* %56, align 16
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load i32, i32* @MSG_IMAGE_NAME, align 4
  %61 = call i32 (i32, ...) @PrintMessage(i32 %60, i64* %17)
  %62 = mul nuw i64 8, %19
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* %10, align 4
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @GetFileAttributes(i64* %17)
  %67 = call i32 @VfdMakeFileDesc(i64* %20, i32 %63, i32 %64, i64 %65, i32 %66)
  br label %76

68:                                               ; preds = %55
  %69 = load i32, i32* @MSG_IMAGE_NAME, align 4
  %70 = call i32 (i32, ...) @PrintMessage(i32 %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %71 = mul nuw i64 8, %19
  %72 = trunc i64 %71 to i32
  %73 = load i32, i32* @VFD_FILETYPE_NONE, align 4
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @VfdMakeFileDesc(i64* %20, i32 %72, i32 %73, i64 %74, i32 0)
  br label %76

76:                                               ; preds = %68, %59
  %77 = load i32, i32* @MSG_FILE_DESC, align 4
  %78 = call i32 (i32, ...) @PrintMessage(i32 %77, i64* %20)
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* @VFD_DISKTYPE_FILE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32, i32* @MSG_DISKTYPE_FILE, align 4
  %84 = call i32 (i32, ...) @PrintMessage(i32 %83)
  br label %97

85:                                               ; preds = %76
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @VFD_FLAG_DATA_MODIFIED, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* @MSG_DISKTYPE_RAM_DIRTY, align 4
  %92 = call i32 (i32, ...) @PrintMessage(i32 %91)
  br label %96

93:                                               ; preds = %85
  %94 = load i32, i32* @MSG_DISKTYPE_RAM_CLEAN, align 4
  %95 = call i32 (i32, ...) @PrintMessage(i32 %94)
  br label %96

96:                                               ; preds = %93, %90
  br label %97

97:                                               ; preds = %96, %82
  %98 = load i32, i32* @MSG_MEDIA_TYPE, align 4
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @VfdMediaTypeName(i64 %99)
  %101 = call i32 (i32, ...) @PrintMessage(i32 %98, i32 %100)
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @VFD_FLAG_WRITE_PROTECTED, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %97
  %107 = load i32, i32* @MSG_MEDIA_PROTECTED, align 4
  %108 = call i32 (i32, ...) @PrintMessage(i32 %107)
  br label %112

109:                                              ; preds = %97
  %110 = load i32, i32* @MSG_MEDIA_WRITABLE, align 4
  %111 = call i32 (i32, ...) @PrintMessage(i32 %110)
  br label %112

112:                                              ; preds = %109, %106
  store i32 0, i32* %13, align 4
  br label %113

113:                                              ; preds = %112, %52, %42
  %114 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i32, i32* %13, align 4
  switch i32 %115, label %117 [
    i32 0, label %116
    i32 1, label %116
  ]

116:                                              ; preds = %113, %113
  ret void

117:                                              ; preds = %113
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @VfdGetDeviceNumber(i32, i64*) #2

declare dso_local i32 @PrintMessage(i32, ...) #2

declare dso_local i8* @SystemError(i64) #2

declare dso_local i32 @PrintDriveLetter(i32, i64) #2

declare dso_local i64 @VfdGetImageInfo(i32, i64*, i64*, i64*, i32*, i32*, i64*) #2

declare dso_local i32 @VfdMakeFileDesc(i64*, i32, i32, i64, i32) #2

declare dso_local i32 @GetFileAttributes(i64*) #2

declare dso_local i32 @VfdMediaTypeName(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
