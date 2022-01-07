; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msvfw32/extr_msvideo_main.c_enum_compressors.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msvfw32/extr_msvideo_main.c_enum_compressors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.codec_info = type { i64, %struct.TYPE_9__ }

@ICMODE_COMPRESS = common dso_local global i32 0, align 4
@ICERR_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"fccHandler %s doesn't support input DIB format %d\0A\00", align 1
@CB_ADDSTRING = common dso_local global i32 0, align 4
@CB_SETITEMDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_10__*, i32)* @enum_compressors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enum_compressors(i32 %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca %struct.codec_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %14

14:                                               ; preds = %89, %50, %3
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @ICInfo(i32 %17, i64 %18, %struct.TYPE_9__* %9)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %92

21:                                               ; preds = %14
  %22 = load i64, i64* %7, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ICMODE_COMPRESS, align 4
  %29 = call i64 @ICOpen(i32 %25, i32 %27, i32 %28)
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %89

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %64, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = icmp ne %struct.TYPE_11__* %40, null
  br i1 %41, label %42, label %64

42:                                               ; preds = %37
  %43 = load i64, i64* %12, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = call i64 @ICCompressQuery(i64 %43, %struct.TYPE_11__* %46, i32* null)
  %48 = load i64, i64* @ICERR_OK, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @wine_dbgstr_fcc(i32 %52)
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @TRACE(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %59)
  %61 = load i64, i64* %12, align 8
  %62 = call i32 @ICClose(i64 %61)
  br label %14

63:                                               ; preds = %42
  br label %64

64:                                               ; preds = %63, %37, %32
  %65 = load i64, i64* %12, align 8
  %66 = call i32 @ICGetInfo(i64 %65, %struct.TYPE_9__* %9, i32 16)
  %67 = load i32, i32* %13, align 4
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  store i32 %67, i32* %68, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @CB_ADDSTRING, align 4
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @SendMessageW(i32 %69, i32 %70, i32 0, i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = call %struct.codec_info* @heap_alloc(i32 24)
  store %struct.codec_info* %75, %struct.codec_info** %10, align 8
  %76 = load %struct.codec_info*, %struct.codec_info** %10, align 8
  %77 = getelementptr inbounds %struct.codec_info, %struct.codec_info* %76, i32 0, i32 1
  %78 = bitcast %struct.TYPE_9__* %77 to i8*
  %79 = bitcast %struct.TYPE_9__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 16, i1 false)
  %80 = load i64, i64* %12, align 8
  %81 = load %struct.codec_info*, %struct.codec_info** %10, align 8
  %82 = getelementptr inbounds %struct.codec_info, %struct.codec_info* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @CB_SETITEMDATA, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.codec_info*, %struct.codec_info** %10, align 8
  %87 = ptrtoint %struct.codec_info* %86 to i32
  %88 = call i32 @SendMessageW(i32 %83, i32 %84, i32 %85, i32 %87)
  br label %89

89:                                               ; preds = %64, %21
  %90 = load i64, i64* %8, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %8, align 8
  br label %14

92:                                               ; preds = %14
  %93 = load i64, i64* %8, align 8
  %94 = icmp ne i64 %93, 0
  %95 = zext i1 %94 to i32
  ret i32 %95
}

declare dso_local i64 @ICInfo(i32, i64, %struct.TYPE_9__*) #1

declare dso_local i64 @ICOpen(i32, i32, i32) #1

declare dso_local i64 @ICCompressQuery(i64, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @wine_dbgstr_fcc(i32) #1

declare dso_local i32 @ICClose(i64) #1

declare dso_local i32 @ICGetInfo(i64, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local %struct.codec_info* @heap_alloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
