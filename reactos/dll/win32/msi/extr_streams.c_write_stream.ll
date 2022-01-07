; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_streams.c_write_stream.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_streams.c_write_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@STATFLAG_NONAME = common dso_local global i32 0, align 4
@STREAM_SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to read stream: %08x\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to write stream: %08x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @write_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_stream(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4096 x i8], align 16
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca %struct.TYPE_7__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* @STATFLAG_NONAME, align 4
  %14 = call i32 @IStream_Stat(i32* %12, %struct.TYPE_6__* %8, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @FAILED(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %99

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @IStream_SetSize(i32* %21, i64 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @FAILED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %99

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* @STREAM_SEEK_SET, align 4
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @IStream_Seek(i32* %33, i64 %36, i32 %34, i32* null)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @FAILED(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %99

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %96, %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @min(i32 4096, i64 %47)
  store i64 %48, i64* %11, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @IStream_Read(i32* %49, i8* %50, i64 %51, i64* %10)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i64 @FAILED(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %44
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %11, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56, %44
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %63, i32* %3, align 4
  br label %99

64:                                               ; preds = %56
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %68, %65
  store i64 %69, i64* %67, align 8
  %70 = load i64, i64* %10, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %64
  %73 = load i64, i64* %10, align 8
  store i64 %73, i64* %11, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @IStream_Write(i32* %74, i8* %75, i64 %76, i64* %10)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i64 @FAILED(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %72
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* %11, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81, %72
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %88, i32* %3, align 4
  br label %99

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %64
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  br label %97

96:                                               ; preds = %90
  br label %44

97:                                               ; preds = %95
  %98 = load i32, i32* @S_OK, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %85, %60, %41, %29, %18
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @IStream_Stat(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IStream_SetSize(i32*, i64) #1

declare dso_local i32 @IStream_Seek(i32*, i64, i32, i32*) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @IStream_Read(i32*, i8*, i64, i64*) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @IStream_Write(i32*, i8*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
