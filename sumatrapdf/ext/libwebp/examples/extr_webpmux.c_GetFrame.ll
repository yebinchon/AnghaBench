; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpmux.c_GetFrame.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpmux.c_GetFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32 }

@WEBP_MUX_OK = common dso_local global i64 0, align 8
@WEBP_CHUNK_ANMF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"ERROR: Frame/Fragment index must be non-negative.\0A\00", align 1
@ErrGet = common dso_local global i32 0, align 4
@WEBP_MUX_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"ERROR (%s): Could not get frame %d.\0A\00", align 1
@WEBP_MUX_MEMORY_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"ERROR (%s): Could not allocate a mux object.\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"ERROR (%s): Could not create single image mux object.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*)* @GetFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetFrame(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %12 = load i64, i64* @WEBP_MUX_OK, align 8
  store i64 %12, i64* %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load i64, i64* @WEBP_CHUNK_ANMF, align 8
  store i64 %13, i64* %10, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %15 = call i32 @WebPDataInit(i32* %14)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ExUtilGetInt(i32 %21, i32 10, i32* %9)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @ErrGet, align 4
  %27 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %25, %2
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %84

32:                                               ; preds = %28
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @WebPMuxGetFrame(i32* %33, i32 %34, %struct.TYPE_7__* %11)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @WEBP_MUX_OK, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %10, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i64, i64* @WEBP_MUX_NOT_FOUND, align 8
  store i64 %45, i64* %5, align 8
  br label %46

46:                                               ; preds = %44, %39, %32
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @WEBP_MUX_OK, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @ErrorString(i64 %51)
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @ErrGet, align 4
  %55 = call i32 @ERROR_GOTO3(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %50, %46
  %57 = call i32* (...) @WebPMuxNew()
  store i32* %57, i32** %6, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i64, i64* @WEBP_MUX_MEMORY_ERROR, align 8
  store i64 %61, i64* %5, align 8
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @ErrorString(i64 %62)
  %64 = load i32, i32* @ErrGet, align 4
  %65 = call i32 @ERROR_GOTO2(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %60, %56
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %69 = call i64 @WebPMuxSetImage(i32* %67, i32* %68, i32 1)
  store i64 %69, i64* %5, align 8
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* @WEBP_MUX_OK, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @ErrorString(i64 %74)
  %76 = load i32, i32* @ErrGet, align 4
  %77 = call i32 @ERROR_GOTO2(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %66
  %79 = load i32*, i32** %6, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @WriteWebP(i32* %79, i32 %82)
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %78, %31
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %86 = call i32 @WebPDataClear(i32* %85)
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @WebPMuxDelete(i32* %87)
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %84
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  br label %95

95:                                               ; preds = %91, %84
  %96 = phi i1 [ false, %84 ], [ %94, %91 ]
  %97 = zext i1 %96 to i32
  ret i32 %97
}

declare dso_local i32 @WebPDataInit(i32*) #1

declare dso_local i32 @ExUtilGetInt(i32, i32, i32*) #1

declare dso_local i32 @ERROR_GOTO1(i8*, i32) #1

declare dso_local i64 @WebPMuxGetFrame(i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @ERROR_GOTO3(i8*, i32, i32, i32) #1

declare dso_local i32 @ErrorString(i64) #1

declare dso_local i32* @WebPMuxNew(...) #1

declare dso_local i32 @ERROR_GOTO2(i8*, i32, i32) #1

declare dso_local i64 @WebPMuxSetImage(i32*, i32*, i32) #1

declare dso_local i32 @WriteWebP(i32*, i32) #1

declare dso_local i32 @WebPDataClear(i32*) #1

declare dso_local i32 @WebPMuxDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
