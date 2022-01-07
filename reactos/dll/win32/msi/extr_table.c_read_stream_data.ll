; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_read_stream_data.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_read_stream_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s -> %s\0A\00", align 1
@STGM_READ = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"open stream failed r = %08x - empty table?\0A\00", align 1
@STATFLAG_NONAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"open stream failed r = %08x!\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Too big!\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"couldn't allocate memory r=%08x!\0A\00", align 1
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"read stream failed r = %08x!\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_stream_data(i32* %0, i32* %1, i32 %2, i32** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_5__, align 4
  %19 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32** %3, i32*** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %20, i32* %13, align 4
  store i32* null, i32** %17, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = call i32* @encode_streamname(i32 %21, i32* %22)
  store i32* %23, i32** %19, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @debugstr_w(i32* %24)
  %26 = load i32*, i32** %19, align 8
  %27 = call i32 @debugstr_w(i32* %26)
  %28 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %27)
  %29 = load i32*, i32** %7, align 8
  %30 = load i32*, i32** %19, align 8
  %31 = load i32, i32* @STGM_READ, align 4
  %32 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @IStorage_OpenStream(i32* %29, i32* %30, i32* null, i32 %33, i32 0, i32** %17)
  store i32 %34, i32* %12, align 4
  %35 = load i32*, i32** %19, align 8
  %36 = call i32 @msi_free(i32* %35)
  %37 = load i32, i32* %12, align 4
  %38 = call i64 @FAILED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %5
  %41 = load i32, i32* %12, align 4
  %42 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %6, align 4
  br label %101

44:                                               ; preds = %5
  %45 = load i32*, i32** %17, align 8
  %46 = load i32, i32* @STATFLAG_NONAME, align 4
  %47 = call i32 @IStream_Stat(i32* %45, %struct.TYPE_5__* %18, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i64 @FAILED(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* %12, align 4
  %53 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %97

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %97

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = call i32* @msi_alloc(i32 %66)
  store i32* %67, i32** %14, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %12, align 4
  %72 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  store i32 %73, i32* %13, align 4
  br label %97

74:                                               ; preds = %62
  %75 = load i32*, i32** %17, align 8
  %76 = load i32*, i32** %14, align 8
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @IStream_Read(i32* %75, i32* %76, i32 %77, i32* %16)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i64 @FAILED(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %74
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %82, %74
  %87 = load i32*, i32** %14, align 8
  %88 = call i32 @msi_free(i32* %87)
  %89 = load i32, i32* %12, align 4
  %90 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  br label %97

91:                                               ; preds = %82
  %92 = load i32*, i32** %14, align 8
  %93 = load i32**, i32*** %10, align 8
  store i32* %92, i32** %93, align 8
  %94 = load i32, i32* %15, align 4
  %95 = load i32*, i32** %11, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %96, i32* %13, align 4
  br label %97

97:                                               ; preds = %91, %86, %70, %60, %51
  %98 = load i32*, i32** %17, align 8
  %99 = call i32 @IStream_Release(i32* %98)
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %97, %40
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32* @encode_streamname(i32, i32*) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @IStorage_OpenStream(i32*, i32*, i32*, i32, i32, i32**) #1

declare dso_local i32 @msi_free(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @IStream_Stat(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32* @msi_alloc(i32) #1

declare dso_local i32 @IStream_Read(i32*, i32*, i32, i32*) #1

declare dso_local i32 @IStream_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
