; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_files.c_copy_install_file.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_files.c_copy_install_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64* }

@.str = private unnamed_addr constant [18 x i8] c"Copying %s to %s\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_ALREADY_EXISTS = common dso_local global i64 0, align 8
@msifs_overwrite = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"overwriting existing file\0A\00", align 1
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Overwriting existing file: %d\0A\00", align 1
@ERROR_SHARING_VIOLATION = common dso_local global i64 0, align 8
@ERROR_USER_MAPPED_FILE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"file in use, scheduling rename operation\0A\00", align 1
@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8
@szMsi = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MOVEFILE_DELAY_UNTIL_REBOOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"failed to schedule rename operation: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, %struct.TYPE_7__*, i64*)* @copy_install_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @copy_install_file(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load i64*, i64** %7, align 8
  %14 = call i32 @debugstr_w(i64* %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = call i32 @debugstr_w(i64* %17)
  %19 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = call i64 @copy_file(%struct.TYPE_7__* %20, i64* %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @ERROR_SUCCESS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i64, i64* %8, align 8
  store i64 %27, i64* %4, align 8
  br label %141

28:                                               ; preds = %3
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @ERROR_ALREADY_EXISTS, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @msifs_overwrite, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %40, i64* %4, align 8
  br label %141

41:                                               ; preds = %32, %28
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %50 = call i32 @SetFileAttributesW(i64* %48, i32 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = load i64*, i64** %7, align 8
  %53 = call i64 @copy_file(%struct.TYPE_7__* %51, i64* %52)
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %54)
  br label %56

56:                                               ; preds = %45, %41
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* @ERROR_SHARING_VIOLATION, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* @ERROR_USER_MAPPED_FILE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %139

65:                                               ; preds = %61, %57
  %66 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = call i64* @strdupW(i64* %69)
  store i64* %70, i64** %10, align 8
  %71 = icmp ne i64* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %65
  %73 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %73, i64* %4, align 8
  br label %141

74:                                               ; preds = %65
  %75 = load i64*, i64** %10, align 8
  %76 = call i64* @strrchrW(i64* %75, i8 signext 92)
  store i64* %76, i64** %11, align 8
  %77 = icmp ne i64* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i64*, i64** %11, align 8
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %78, %74
  %81 = load i64*, i64** %10, align 8
  %82 = call i32 @strlenW(i64* %81)
  %83 = add nsw i32 %82, 16
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 8
  %87 = trunc i64 %86 to i32
  %88 = call i64* @msi_alloc(i32 %87)
  store i64* %88, i64** %9, align 8
  %89 = icmp ne i64* %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %80
  %91 = load i64*, i64** %10, align 8
  %92 = call i32 @msi_free(i64* %91)
  %93 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %93, i64* %4, align 8
  br label %141

94:                                               ; preds = %80
  %95 = load i64*, i64** %10, align 8
  %96 = load i32, i32* @szMsi, align 4
  %97 = load i64*, i64** %9, align 8
  %98 = call i32 @GetTempFileNameW(i64* %95, i32 %96, i32 0, i64* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %94
  %101 = load i64*, i64** %9, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 0
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %100, %94
  %104 = load i64*, i64** %10, align 8
  %105 = call i32 @msi_free(i64* %104)
  %106 = load i64*, i64** %7, align 8
  %107 = load i64*, i64** %9, align 8
  %108 = load i32, i32* @FALSE, align 4
  %109 = call i64 @CopyFileW(i64* %106, i64* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %130

111:                                              ; preds = %103
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i64*, i64** %113, align 8
  %115 = load i32, i32* @MOVEFILE_DELAY_UNTIL_REBOOT, align 4
  %116 = call i64 @MoveFileExW(i64* %114, i64* null, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %111
  %119 = load i64*, i64** %9, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i64*, i64** %121, align 8
  %123 = load i32, i32* @MOVEFILE_DELAY_UNTIL_REBOOT, align 4
  %124 = call i64 @MoveFileExW(i64* %119, i64* %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %118
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  store i32 1, i32* %128, align 4
  %129 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %129, i64* %8, align 8
  br label %136

130:                                              ; preds = %118, %111, %103
  %131 = call i64 (...) @GetLastError()
  store i64 %131, i64* %8, align 8
  %132 = load i64, i64* %8, align 8
  %133 = call i32 @WARN(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %132)
  %134 = load i64*, i64** %9, align 8
  %135 = call i32 @DeleteFileW(i64* %134)
  br label %136

136:                                              ; preds = %130, %126
  %137 = load i64*, i64** %9, align 8
  %138 = call i32 @msi_free(i64* %137)
  br label %139

139:                                              ; preds = %136, %61
  %140 = load i64, i64* %8, align 8
  store i64 %140, i64* %4, align 8
  br label %141

141:                                              ; preds = %139, %90, %72, %38, %26
  %142 = load i64, i64* %4, align 8
  ret i64 %142
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debugstr_w(i64*) #1

declare dso_local i64 @copy_file(%struct.TYPE_7__*, i64*) #1

declare dso_local i32 @SetFileAttributesW(i64*, i32) #1

declare dso_local i64* @strdupW(i64*) #1

declare dso_local i64* @strrchrW(i64*, i8 signext) #1

declare dso_local i32 @strlenW(i64*) #1

declare dso_local i64* @msi_alloc(i32) #1

declare dso_local i32 @msi_free(i64*) #1

declare dso_local i32 @GetTempFileNameW(i64*, i32, i32, i64*) #1

declare dso_local i64 @CopyFileW(i64*, i64*, i32) #1

declare dso_local i64 @MoveFileExW(i64*, i64*, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @WARN(i8*, i64) #1

declare dso_local i32 @DeleteFileW(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
