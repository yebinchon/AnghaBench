; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_zipfile.c_zipfileReadEOCD.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_zipfile.c_zipfileReadEOCD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i8*, i8*, i8*, i8*, i8* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@ZIPFILE_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"cannot find end of central directory record\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32, i32*, %struct.TYPE_9__*)* @zipfileReadEOCD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zipfileReadEOCD(%struct.TYPE_8__* %0, i32* %1, i32 %2, i32* %3, %struct.TYPE_9__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %11, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %12, align 8
  %21 = load i32, i32* @SQLITE_OK, align 4
  store i32 %21, i32* %14, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %54

24:                                               ; preds = %5
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* @SEEK_END, align 4
  %27 = call i32 @fseek(i32* %25, i32 0, i32 %26)
  %28 = load i32*, i32** %10, align 8
  %29 = call i64 @ftell(i32* %28)
  store i64 %29, i64* %16, align 8
  %30 = load i64, i64* %16, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %34 = call i32 @memset(%struct.TYPE_9__* %33, i32 0, i32 48)
  %35 = load i32, i32* @SQLITE_OK, align 4
  store i32 %35, i32* %6, align 4
  br label %152

36:                                               ; preds = %24
  %37 = load i64, i64* %16, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @ZIPFILE_BUFFER_SIZE, align 4
  %40 = call i64 @MIN(i32 %38, i32 %39)
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %13, align 4
  %42 = load i64, i64* %16, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %42, %44
  store i64 %45, i64* %15, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i64, i64* %15, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = call i32 @zipfileReadData(i32* %46, i32* %47, i32 %48, i64 %49, i32* %52)
  store i32 %53, i32* %14, align 4
  br label %65

54:                                               ; preds = %5
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @ZIPFILE_BUFFER_SIZE, align 4
  %57 = call i64 @MIN(i32 %55, i32 %56)
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %13, align 4
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %13, align 4
  %62 = sub nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  store i32* %64, i32** %12, align 8
  br label %65

65:                                               ; preds = %54, %36
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @SQLITE_OK, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %150

69:                                               ; preds = %65
  %70 = load i32, i32* %13, align 4
  %71 = sub nsw i32 %70, 20
  store i32 %71, i32* %17, align 4
  br label %72

72:                                               ; preds = %108, %69
  %73 = load i32, i32* %17, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %111

75:                                               ; preds = %72
  %76 = load i32*, i32** %12, align 8
  %77 = load i32, i32* %17, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 80
  br i1 %81, label %82, label %107

82:                                               ; preds = %75
  %83 = load i32*, i32** %12, align 8
  %84 = load i32, i32* %17, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 75
  br i1 %89, label %90, label %107

90:                                               ; preds = %82
  %91 = load i32*, i32** %12, align 8
  %92 = load i32, i32* %17, align 4
  %93 = add nsw i32 %92, 2
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 5
  br i1 %97, label %98, label %107

98:                                               ; preds = %90
  %99 = load i32*, i32** %12, align 8
  %100 = load i32, i32* %17, align 4
  %101 = add nsw i32 %100, 3
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 6
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %111

107:                                              ; preds = %98, %90, %82, %75
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %17, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %17, align 4
  br label %72

111:                                              ; preds = %106, %72
  %112 = load i32, i32* %17, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = call i32 @sqlite3_mprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  store i32 %115, i32* %118, align 8
  %119 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %119, i32* %6, align 4
  br label %152

120:                                              ; preds = %111
  %121 = load i32, i32* %17, align 4
  %122 = add nsw i32 %121, 4
  %123 = load i32*, i32** %12, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32* %125, i32** %12, align 8
  %126 = load i32*, i32** %12, align 8
  %127 = call i8* @zipfileRead16(i32* %126)
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 5
  store i8* %127, i8** %129, align 8
  %130 = load i32*, i32** %12, align 8
  %131 = call i8* @zipfileRead16(i32* %130)
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 4
  store i8* %131, i8** %133, align 8
  %134 = load i32*, i32** %12, align 8
  %135 = call i8* @zipfileRead16(i32* %134)
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 3
  store i8* %135, i8** %137, align 8
  %138 = load i32*, i32** %12, align 8
  %139 = call i8* @zipfileRead16(i32* %138)
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 2
  store i8* %139, i8** %141, align 8
  %142 = load i32*, i32** %12, align 8
  %143 = call i8* @zipfileRead32(i32* %142)
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  store i8* %143, i8** %145, align 8
  %146 = load i32*, i32** %12, align 8
  %147 = call i8* @zipfileRead32(i32* %146)
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  store i8* %147, i8** %149, align 8
  br label %150

150:                                              ; preds = %120, %65
  %151 = load i32, i32* %14, align 4
  store i32 %151, i32* %6, align 4
  br label %152

152:                                              ; preds = %150, %114, %32
  %153 = load i32, i32* %6, align 4
  ret i32 %153
}

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local i32 @zipfileReadData(i32*, i32*, i32, i64, i32*) #1

declare dso_local i32 @sqlite3_mprintf(i8*) #1

declare dso_local i8* @zipfileRead16(i32*) #1

declare dso_local i8* @zipfileRead32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
