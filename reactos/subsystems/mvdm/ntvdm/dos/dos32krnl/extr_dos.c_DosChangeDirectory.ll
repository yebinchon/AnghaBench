; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_dos.c_DosChangeDirectory.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_dos.c_DosChangeDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i8** }

@MAX_PATH = common dso_local global i32 0, align 4
@DOS_DIR_LENGTH = common dso_local global i32 0, align 4
@ERROR_PATH_NOT_FOUND = common dso_local global i8* null, align 8
@Sda = common dso_local global %struct.TYPE_5__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@SysVars = common dso_local global %struct.TYPE_4__* null, align 8
@INVALID_FILE_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@DosData = common dso_local global %struct.TYPE_6__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @DosChangeDirectory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DosChangeDirectory(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i32, i32* @DOS_DIR_LENGTH, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = load i32, i32* @DOS_DIR_LENGTH, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load i8*, i8** @ERROR_PATH_NOT_FOUND, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Sda, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %131

27:                                               ; preds = %1
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = icmp sge i32 %29, 2
  br i1 %30, label %31, label %54

31:                                               ; preds = %27
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 58
  br i1 %36, label %37, label %54

37:                                               ; preds = %31
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = call i64 @RtlUpperChar(i8 signext %40)
  %42 = sub i64 %41, 65
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SysVars, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp uge i64 %43, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load i8*, i8** @ERROR_PATH_NOT_FOUND, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Sda, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %131

53:                                               ; preds = %37
  br label %58

54:                                               ; preds = %31, %27
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Sda, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %54, %53
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @GetFileAttributesA(i8* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @INVALID_FILE_ATTRIBUTES, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %64, %58
  %70 = load i8*, i8** @ERROR_PATH_NOT_FOUND, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Sda, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* @FALSE, align 4
  store i32 %73, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %131

74:                                               ; preds = %64
  %75 = load i64, i64* %4, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Sda, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %75, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %74
  %81 = load i8*, i8** %3, align 8
  %82 = call i32 @SetCurrentDirectoryA(i8* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %80
  %85 = call i32 (...) @GetLastError()
  %86 = call i8* @LOWORD(i32 %85)
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Sda, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %131

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90, %74
  %92 = mul nuw i64 4, %12
  %93 = trunc i64 %92 to i32
  %94 = call i32 @GetCurrentDirectoryA(i32 %93, i32* %14)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* @FALSE, align 4
  store i32 %97, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %131

98:                                               ; preds = %91
  %99 = mul nuw i64 4, %16
  %100 = trunc i64 %99 to i32
  %101 = call i32 @GetShortPathNameA(i32* %14, i32* %17, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* @FALSE, align 4
  store i32 %104, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %131

105:                                              ; preds = %98
  %106 = call i8* @strchr(i32* %17, i8 signext 92)
  store i8* %106, i8** %6, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %121

109:                                              ; preds = %105
  %110 = load i8*, i8** %6, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %6, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** @DosData, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i8**, i8*** %113, align 8
  %115 = load i64, i64* %4, align 8
  %116 = getelementptr inbounds i8*, i8** %114, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = load i8*, i8** %6, align 8
  %119 = load i32, i32* @DOS_DIR_LENGTH, align 4
  %120 = call i32 @strncpy(i8* %117, i8* %118, i32 %119)
  br label %129

121:                                              ; preds = %105
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** @DosData, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i8**, i8*** %123, align 8
  %125 = load i64, i64* %4, align 8
  %126 = getelementptr inbounds i8*, i8** %124, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 0
  store i8 0, i8* %128, align 1
  br label %129

129:                                              ; preds = %121, %109
  %130 = load i32, i32* @TRUE, align 4
  store i32 %130, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %131

131:                                              ; preds = %129, %103, %96, %84, %69, %48, %22
  %132 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %132)
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @RtlUpperChar(i8 signext) #2

declare dso_local i32 @GetFileAttributesA(i8*) #2

declare dso_local i32 @SetCurrentDirectoryA(i8*) #2

declare dso_local i8* @LOWORD(i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @GetCurrentDirectoryA(i32, i32*) #2

declare dso_local i32 @GetShortPathNameA(i32*, i32*, i32) #2

declare dso_local i8* @strchr(i32*, i8 signext) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
