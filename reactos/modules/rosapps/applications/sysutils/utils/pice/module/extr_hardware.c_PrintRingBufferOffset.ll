; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_hardware.c_PrintRingBufferOffset.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_hardware.c_PrintRingBufferOffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [51 x i8] c"PrintRingBufferOffset(): ulLinesInRingBuffer is 0\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"PrintRingBufferOffset(): ulLinesInRingBuffer < ulOffset+ulLines\0A\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"PrintRingBufferOffset(): ulLinesInRingBuffer %u ulLines %u ulOffset %u\0A\00", align 1
@ulInPos = common dso_local global i64 0, align 8
@LINES_IN_BUFFER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"PrintRingBufferOffset(): ulOutPos = %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"PrintRingBufferOffset(): ulOutPos == ulInPos\0A\00", align 1
@OUTPUT_WINDOW = common dso_local global i64 0, align 8
@wWindow = common dso_local global %struct.TYPE_2__* null, align 8
@OUTPUT_WINDOW_UNBUFFERED = common dso_local global i32 0, align 4
@aBuffers = common dso_local global i8** null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PrintRingBufferOffset(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = call i64 (...) @LinesInRingBuffer()
  store i64 %9, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = call i32 @DPRINT(i32 ptrtoint ([51 x i8]* @.str to i32))
  %14 = call i32 (...) @LEAVE_FUNC()
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %3, align 4
  br label %134

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i64, i64* %6, align 8
  store i64 %21, i64* %4, align 8
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %4, align 8
  %26 = add nsw i64 %24, %25
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = call i32 @DPRINT(i32 ptrtoint ([65 x i8]* @.str.1 to i32))
  %30 = call i32 (...) @LEAVE_FUNC()
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %3, align 4
  br label %134

32:                                               ; preds = %22
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @DPRINT(i32 %36)
  %38 = load i64, i64* @ulInPos, align 8
  %39 = load i64, i64* %5, align 8
  %40 = sub nsw i64 %38, %39
  %41 = load i64, i64* %4, align 8
  %42 = sub nsw i64 %40, %41
  %43 = load i64, i64* @LINES_IN_BUFFER, align 8
  %44 = srem i64 %42, %43
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @DPRINT(i32 %46)
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @ulInPos, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %32
  %52 = call i32 @DPRINT(i32 ptrtoint ([46 x i8]* @.str.4 to i32))
  %53 = call i32 (...) @LEAVE_FUNC()
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %3, align 4
  br label %134

55:                                               ; preds = %32
  %56 = load i64, i64* @OUTPUT_WINDOW, align 8
  %57 = call i32 @Home(i64 %56)
  br label %58

58:                                               ; preds = %62, %55
  %59 = load i64, i64* %4, align 8
  %60 = add nsw i64 %59, -1
  store i64 %60, i64* %4, align 8
  %61 = icmp ne i64 %59, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %58
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %64 = load i64, i64* @OUTPUT_WINDOW, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @ClrLine(i64 %69)
  %71 = load i32, i32* @OUTPUT_WINDOW_UNBUFFERED, align 4
  %72 = load i8**, i8*** @aBuffers, align 8
  %73 = load i64, i64* %7, align 8
  %74 = getelementptr inbounds i8*, i8** %72, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @Print(i32 %71, i8* %75)
  %77 = load i64, i64* %8, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %7, align 8
  %80 = add nsw i64 %79, 1
  %81 = load i64, i64* @LINES_IN_BUFFER, align 8
  %82 = srem i64 %80, %81
  store i64 %82, i64* %7, align 8
  br label %58

83:                                               ; preds = %58
  %84 = load i8**, i8*** @aBuffers, align 8
  %85 = load i64, i64* @ulInPos, align 8
  %86 = getelementptr inbounds i8*, i8** %84, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 58
  br i1 %91, label %92, label %132

92:                                               ; preds = %83
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %94 = load i64, i64* @OUTPUT_WINDOW, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %99 = load i64, i64* @OUTPUT_WINDOW, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %97, %102
  %104 = sub nsw i64 %103, 1
  %105 = call i32 @ClrLine(i64 %104)
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %107 = load i64, i64* @OUTPUT_WINDOW, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %110, 1
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %113 = load i64, i64* @OUTPUT_WINDOW, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  store i64 %111, i64* %115, align 8
  %116 = load i32, i32* @OUTPUT_WINDOW_UNBUFFERED, align 4
  %117 = load i8**, i8*** @aBuffers, align 8
  %118 = load i64, i64* @ulInPos, align 8
  %119 = getelementptr inbounds i8*, i8** %117, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @Print(i32 %116, i8* %120)
  %122 = load i8**, i8*** @aBuffers, align 8
  %123 = load i64, i64* @ulInPos, align 8
  %124 = getelementptr inbounds i8*, i8** %122, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = call i64 @PICE_strlen(i8* %125)
  %127 = add nsw i64 %126, 1
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %129 = load i64, i64* @OUTPUT_WINDOW, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 3
  store i64 %127, i64* %131, align 8
  br label %132

132:                                              ; preds = %92, %83
  %133 = load i32, i32* @TRUE, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %132, %51, %28, %12
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i64 @LinesInRingBuffer(...) #1

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

declare dso_local i32 @Home(i64) #1

declare dso_local i32 @ClrLine(i64) #1

declare dso_local i32 @Print(i32, i8*) #1

declare dso_local i64 @PICE_strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
