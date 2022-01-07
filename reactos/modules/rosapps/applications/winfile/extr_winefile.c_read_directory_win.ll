; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_read_directory_win.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_read_directory_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, %struct.TYPE_5__*, %struct.TYPE_5__*, i8*, i32, %struct.TYPE_6__, i32, i8*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@ET_WINDOWS = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_DELETE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_FLAG_BACKUP_SEMANTICS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64*)* @read_directory_win to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_directory_win(%struct.TYPE_5__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64* %1, i64** %4, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  store i8* %22, i8** %14, align 8
  br label %23

23:                                               ; preds = %27, %2
  %24 = load i64*, i64** %4, align 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i64*, i64** %4, align 8
  %29 = getelementptr inbounds i64, i64* %28, i32 1
  store i64* %29, i64** %4, align 8
  %30 = load i64, i64* %28, align 8
  %31 = trunc i64 %30 to i8
  %32 = load i8*, i8** %14, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %14, align 8
  store i8 %31, i8* %32, align 1
  br label %23

34:                                               ; preds = %23
  %35 = load i8*, i8** %14, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %14, align 8
  store i8 92, i8* %35, align 1
  %37 = load i8*, i8** %14, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 42, i8* %38, align 1
  %39 = load i8*, i8** %14, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  store i8 0, i8* %40, align 1
  %41 = call i64 @FindFirstFileW(i8* %22, i32* %9)
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %129

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %116, %45
  %47 = call %struct.TYPE_5__* (...) @alloc_entry()
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %7, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = icmp ne %struct.TYPE_5__* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** %5, align 8
  br label %52

52:                                               ; preds = %50, %46
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = icmp ne %struct.TYPE_5__* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %58, align 8
  br label %59

59:                                               ; preds = %55, %52
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 6
  %62 = call i32 @memcpy(%struct.TYPE_6__* %61, i32* %9, i32 4)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %64, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 9
  store %struct.TYPE_5__* %65, %struct.TYPE_5__** %67, align 8
  %68 = load i8*, i8** @FALSE, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 8
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** @FALSE, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @ET_WINDOWS, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 8
  %80 = load i8*, i8** @FALSE, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 4
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** %14, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @lstrcpyW(i8* %83, i32 %87)
  %89 = load i32, i32* @GENERIC_READ, align 4
  %90 = load i32, i32* @FILE_SHARE_READ, align 4
  %91 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @FILE_SHARE_DELETE, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @OPEN_EXISTING, align 4
  %96 = load i32, i32* @FILE_FLAG_BACKUP_SEMANTICS, align 4
  %97 = call i64 @CreateFileW(i8* %22, i32 %89, i32 %94, i32 0, i32 %95, i32 %96, i32 0)
  store i64 %97, i64* %11, align 8
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %59
  %102 = load i64, i64* %11, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 5
  %105 = call i64 @GetFileInformationByHandle(i64 %102, i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load i8*, i8** @TRUE, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 4
  store i8* %108, i8** %110, align 8
  br label %111

111:                                              ; preds = %107, %101
  %112 = load i64, i64* %11, align 8
  %113 = call i32 @CloseHandle(i64 %112)
  br label %114

114:                                              ; preds = %111, %59
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %115, %struct.TYPE_5__** %6, align 8
  br label %116

116:                                              ; preds = %114
  %117 = load i64, i64* %10, align 8
  %118 = call i64 @FindNextFileW(i64 %117, i32* %9)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %46, label %120

120:                                              ; preds = %116
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %122 = icmp ne %struct.TYPE_5__* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %125, align 8
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i64, i64* %10, align 8
  %128 = call i32 @FindClose(i64 %127)
  br label %129

129:                                              ; preds = %126, %34
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 2
  store %struct.TYPE_5__* %130, %struct.TYPE_5__** %132, align 8
  %133 = load i8*, i8** @TRUE, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  store i8* %133, i8** %135, align 8
  %136 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %136)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @FindFirstFileW(i8*, i32*) #2

declare dso_local %struct.TYPE_5__* @alloc_entry(...) #2

declare dso_local i32 @memcpy(%struct.TYPE_6__*, i32*, i32) #2

declare dso_local i32 @lstrcpyW(i8*, i32) #2

declare dso_local i64 @CreateFileW(i8*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i64 @GetFileInformationByHandle(i64, i32*) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i64 @FindNextFileW(i64, i32*) #2

declare dso_local i32 @FindClose(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
