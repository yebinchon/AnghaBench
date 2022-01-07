; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_hardware.c_PrintRingBufferHome.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_hardware.c_PrintRingBufferHome.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [48 x i8] c"PrintRingBufferHome(): no lines in ring buffer\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@ulLastPos = common dso_local global i64 0, align 8
@OUTPUT_WINDOW = common dso_local global i64 0, align 8
@wWindow = common dso_local global %struct.TYPE_2__* null, align 8
@OUTPUT_WINDOW_UNBUFFERED = common dso_local global i32 0, align 4
@aBuffers = common dso_local global i8** null, align 8
@LINES_IN_BUFFER = common dso_local global i64 0, align 8
@ulInPos = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PrintRingBufferHome(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = call i64 (...) @LinesInRingBuffer()
  store i64 %7, i64* %4, align 8
  store i64 0, i64* %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = call i32 @DPRINT(i32 ptrtoint ([48 x i8]* @.str to i32))
  %12 = call i32 (...) @LEAVE_FUNC()
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %2, align 4
  br label %100

14:                                               ; preds = %1
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* %3, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i64, i64* %4, align 8
  store i64 %19, i64* %3, align 8
  br label %20

20:                                               ; preds = %18, %14
  %21 = load i64, i64* @ulLastPos, align 8
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* @OUTPUT_WINDOW, align 8
  %23 = call i32 @Home(i64 %22)
  br label %24

24:                                               ; preds = %28, %20
  %25 = load i64, i64* %3, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %3, align 8
  %27 = icmp ne i64 %25, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %30 = load i64, i64* @OUTPUT_WINDOW, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @ClrLine(i64 %35)
  %37 = load i32, i32* @OUTPUT_WINDOW_UNBUFFERED, align 4
  %38 = load i8**, i8*** @aBuffers, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds i8*, i8** %38, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @Print(i32 %37, i8* %41)
  %43 = load i64, i64* %6, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %5, align 8
  %46 = add nsw i64 %45, 1
  %47 = load i64, i64* @LINES_IN_BUFFER, align 8
  %48 = srem i64 %46, %47
  store i64 %48, i64* %5, align 8
  br label %24

49:                                               ; preds = %24
  %50 = load i8**, i8*** @aBuffers, align 8
  %51 = load i64, i64* @ulInPos, align 8
  %52 = getelementptr inbounds i8*, i8** %50, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 58
  br i1 %57, label %58, label %98

58:                                               ; preds = %49
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %60 = load i64, i64* @OUTPUT_WINDOW, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %65 = load i64, i64* @OUTPUT_WINDOW, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %63, %68
  %70 = sub nsw i64 %69, 1
  %71 = call i32 @ClrLine(i64 %70)
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %73 = load i64, i64* @OUTPUT_WINDOW, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %76, 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %79 = load i64, i64* @OUTPUT_WINDOW, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  store i64 %77, i64* %81, align 8
  %82 = load i32, i32* @OUTPUT_WINDOW_UNBUFFERED, align 4
  %83 = load i8**, i8*** @aBuffers, align 8
  %84 = load i64, i64* @ulInPos, align 8
  %85 = getelementptr inbounds i8*, i8** %83, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @Print(i32 %82, i8* %86)
  %88 = load i8**, i8*** @aBuffers, align 8
  %89 = load i64, i64* @ulInPos, align 8
  %90 = getelementptr inbounds i8*, i8** %88, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @PICE_strlen(i8* %91)
  %93 = add nsw i64 %92, 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %95 = load i64, i64* @OUTPUT_WINDOW, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 3
  store i64 %93, i64* %97, align 8
  br label %98

98:                                               ; preds = %58, %49
  %99 = load i32, i32* @TRUE, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %98, %10
  %101 = load i32, i32* %2, align 4
  ret i32 %101
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
