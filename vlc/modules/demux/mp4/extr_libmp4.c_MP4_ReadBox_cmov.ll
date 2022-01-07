; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_libmp4.c_MP4_ReadBox_cmov.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_libmp4.c_MP4_ReadBox_cmov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_19__, %struct.TYPE_16__* }
%struct.TYPE_19__ = type { %struct.TYPE_15__*, %struct.TYPE_18__*, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i64, i32*, i64, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i64 }

@ATOM_moov = common dso_local global i64 0, align 8
@ATOM_foov = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Read box: \22cmov\22 box alone\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"dcom\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"cmvd\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"read box: \22cmov\22 incomplete\00", align 1
@ATOM_zlib = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [61 x i8] c"read box: \22cmov\22 compression algorithm : %4.4s not supported\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"read box: \22cmov\22 zlib unsupported\00", align 1
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@Z_NULL = common dso_local global i64 0, align 8
@Z_OK = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_21__*)* @MP4_ReadBox_cmov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MP4_ReadBox_cmov(i32* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %8 = call %struct.TYPE_15__* @calloc(i32 1, i32 4)
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  store %struct.TYPE_15__* %8, %struct.TYPE_15__** %11, align 8
  %12 = icmp ne %struct.TYPE_15__* %8, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %84

14:                                               ; preds = %2
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %18 = icmp ne %struct.TYPE_16__* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ATOM_moov, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %19
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ATOM_foov, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27, %14
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @msg_Warn(i32* %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %84

38:                                               ; preds = %27, %19
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %41 = call i32 @MP4_ReadBoxContainer(i32* %39, %struct.TYPE_21__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %84

44:                                               ; preds = %38
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %46 = call %struct.TYPE_21__* @MP4_BoxGet(%struct.TYPE_21__* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_21__* %46, %struct.TYPE_21__** %6, align 8
  %47 = icmp eq %struct.TYPE_21__* %46, null
  br i1 %47, label %60, label %48

48:                                               ; preds = %44
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %50 = call %struct.TYPE_21__* @MP4_BoxGet(%struct.TYPE_21__* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_21__* %50, %struct.TYPE_21__** %7, align 8
  %51 = icmp eq %struct.TYPE_21__* %50, null
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %52, %48, %44
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @msg_Warn(i32* %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %84

63:                                               ; preds = %52
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ATOM_zlib, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %63
  %73 = load i32*, i32** %4, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = bitcast i64* %78 to i8*
  %80 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %73, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i8* %79)
  store i32 0, i32* %3, align 4
  br label %84

81:                                               ; preds = %63
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %81, %72, %60, %43, %35, %13
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.TYPE_15__* @calloc(i32, i32) #1

declare dso_local i32 @msg_Warn(i32*, i8*) #1

declare dso_local i32 @MP4_ReadBoxContainer(i32*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @MP4_BoxGet(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
