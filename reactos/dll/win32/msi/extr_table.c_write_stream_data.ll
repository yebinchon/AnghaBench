; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_write_stream_data.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_write_stream_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@STGM_WRITE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"open stream failed r = %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Failed to SetSize\0A\00", align 1
@STREAM_SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Failed to Seek\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Failed to Write\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @write_stream_data(i32* %0, i32 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_5__, align 8
  %17 = alloca %struct.TYPE_6__, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %19, i64* %13, align 8
  store i32* null, i32** %15, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @encode_streamname(i32 %20, i32 %21)
  store i32 %22, i32* %18, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %18, align 4
  %25 = load i32, i32* @STGM_WRITE, align 4
  %26 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @IStorage_OpenStream(i32* %23, i32 %24, i32* null, i32 %27, i32 0, i32** %15)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = call i64 @FAILED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %5
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %18, align 4
  %35 = load i32, i32* @STGM_WRITE, align 4
  %36 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @IStorage_CreateStream(i32* %33, i32 %34, i32 %37, i32 0, i32 0, i32** %15)
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %32, %5
  %40 = load i32, i32* %18, align 4
  %41 = call i32 @msi_free(i32 %40)
  %42 = load i32, i32* %12, align 4
  %43 = call i64 @FAILED(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32, i32* %12, align 4
  %47 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i64, i64* %13, align 8
  store i64 %48, i64* %6, align 8
  br label %97

49:                                               ; preds = %39
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i64 %50, i64* %51, align 8
  %52 = load i32*, i32** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @IStream_SetSize(i32* %52, i64 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i64 @FAILED(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %93

61:                                               ; preds = %49
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = load i32, i32* @STREAM_SEEK_SET, align 4
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @IStream_Seek(i32* %63, i64 %66, i32 %64, i32* null)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i64 @FAILED(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %93

73:                                               ; preds = %61
  %74 = load i64, i64* %10, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %73
  %77 = load i32*, i32** %15, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @IStream_Write(i32* %77, i32 %78, i64 %79, i64* %14)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i64 @FAILED(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %76
  %85 = load i64, i64* %14, align 8
  %86 = load i64, i64* %10, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %84, %76
  %89 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %93

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90, %73
  %92 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %92, i64* %13, align 8
  br label %93

93:                                               ; preds = %91, %88, %71, %59
  %94 = load i32*, i32** %15, align 8
  %95 = call i32 @IStream_Release(i32* %94)
  %96 = load i64, i64* %13, align 8
  store i64 %96, i64* %6, align 8
  br label %97

97:                                               ; preds = %93, %45
  %98 = load i64, i64* %6, align 8
  ret i64 %98
}

declare dso_local i32 @encode_streamname(i32, i32) #1

declare dso_local i32 @IStorage_OpenStream(i32*, i32, i32*, i32, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IStorage_CreateStream(i32*, i32, i32, i32, i32, i32**) #1

declare dso_local i32 @msi_free(i32) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @IStream_SetSize(i32*, i64) #1

declare dso_local i32 @IStream_Seek(i32*, i64, i32, i32*) #1

declare dso_local i32 @IStream_Write(i32*, i32, i64, i64*) #1

declare dso_local i32 @IStream_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
