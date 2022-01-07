; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfinfo.c_NetCon_UpdateAltName.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfinfo.c_NetCon_UpdateAltName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64*, i64*, i32*, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@aDriveInfo = common dso_local global %struct.TYPE_5__* null, align 8
@MAX_ALTNAME = common dso_local global i64 0, align 8
@REMOTE_DEFAULT_SIZE = common dso_local global i64 0, align 8
@LPTR = common dso_local global i32 0, align 4
@DRIVE_INFO_NAME_HEADER = common dso_local global i64 0, align 8
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i64 0, align 8
@adwAltNameTrans = common dso_local global i32* null, align 8
@cchDriveListMax = common dso_local global i32 0, align 4
@ERROR_MORE_DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @NetCon_UpdateAltName(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @aDriveInfo, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i64 %11
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %5, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %8, align 8
  store i64 0, i64* %9, align 8
  br label %16

16:                                               ; preds = %99, %2
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @MAX_ALTNAME, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %102

20:                                               ; preds = %16
  %21 = load i64, i64* %4, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %102

24:                                               ; preds = %20
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %6, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %24
  %40 = load i64, i64* @REMOTE_DEFAULT_SIZE, align 8
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %39, %24
  %42 = load i64, i64* %6, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %87, %44
  %46 = load i32, i32* @LPTR, align 4
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @DRIVE_INFO_NAME_HEADER, align 8
  %49 = add i64 %47, %48
  %50 = call i32 @ByteCountOf(i64 %49)
  %51 = call i64 @LocalAlloc(i32 %46, i32 %50)
  store i64 %51, i64* %6, align 8
  br label %52

52:                                               ; preds = %45, %41
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  store i64 %53, i64* %58, align 8
  %59 = load i64, i64* %6, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %52
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  store i64 0, i64* %66, align 8
  %67 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %67, i64* %4, align 8
  br label %103

68:                                               ; preds = %52
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @DRIVE_INFO_NAME_HEADER, align 8
  %77 = add i64 %75, %76
  %78 = load i32*, i32** @adwAltNameTrans, align 8
  %79 = load i64, i64* %9, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @cchDriveListMax, align 4
  %83 = call i64 @WNetFormatNetworkNameW(i32 %71, i32 %74, i64 %77, i64* %7, i32 %81, i32 %82)
  store i64 %83, i64* %4, align 8
  %84 = load i64, i64* @ERROR_MORE_DATA, align 8
  %85 = load i64, i64* %4, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %68
  %88 = load i64, i64* %6, align 8
  %89 = trunc i64 %88 to i32
  %90 = call i32 @LocalFree(i32 %89)
  br label %45

91:                                               ; preds = %68
  %92 = load i64, i64* %4, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %102

95:                                               ; preds = %91
  %96 = load i64, i64* %3, align 8
  %97 = load i64, i64* %9, align 8
  %98 = call i32 @NetCon_UpdateLines(i64 %96, i64 %97)
  br label %99

99:                                               ; preds = %95
  %100 = load i64, i64* %9, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %9, align 8
  br label %16

102:                                              ; preds = %94, %23, %16
  br label %103

103:                                              ; preds = %102, %61
  %104 = load i64, i64* %4, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %103
  store i64 0, i64* %9, align 8
  br label %107

107:                                              ; preds = %117, %106
  %108 = load i64, i64* %9, align 8
  %109 = load i64, i64* @MAX_ALTNAME, align 8
  %110 = icmp ult i64 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %107
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* %9, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32 1, i32* %116, align 4
  br label %117

117:                                              ; preds = %111
  %118 = load i64, i64* %9, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %9, align 8
  br label %107

120:                                              ; preds = %107
  br label %121

121:                                              ; preds = %120, %103
  %122 = load i64, i64* %4, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 3
  store i64 %122, i64* %124, align 8
  %125 = load i64, i64* %4, align 8
  ret i64 %125
}

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i32 @ByteCountOf(i64) #1

declare dso_local i64 @WNetFormatNetworkNameW(i32, i32, i64, i64*, i32, i32) #1

declare dso_local i32 @LocalFree(i32) #1

declare dso_local i32 @NetCon_UpdateLines(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
