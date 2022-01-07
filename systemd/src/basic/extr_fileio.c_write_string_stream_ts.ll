; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_fileio.c_write_string_stream_ts.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_fileio.c_write_string_stream_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }

@EIO = common dso_local global i32 0, align 4
@WRITE_STRING_FILE_AVOID_NEWLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@WRITE_STRING_FILE_DISABLE_BUFFER = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@WRITE_STRING_FILE_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_string_stream_ts(i8* %0, i8* %1, i32 %2, %struct.timespec* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.timespec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x %struct.timespec], align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.timespec* %3, %struct.timespec** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @assert(i8* %13)
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @assert(i8* %15)
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @ferror(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %105

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @WRITE_STRING_FILE_AVOID_NEWLINE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @endswith(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i1 [ false, %23 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @WRITE_STRING_FILE_DISABLE_BUFFER, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %7, align 8
  %45 = call i8* @strjoina(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %45, i8** %7, align 8
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %43, %38, %33
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i64 @fputs(i8* %47, i8* %48)
  %50 = load i64, i64* @EOF, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @errno, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %105

55:                                               ; preds = %46
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load i8*, i8** %6, align 8
  %60 = call i64 @fputc(i8 signext 10, i8* %59)
  %61 = load i64, i64* @EOF, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @errno, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %105

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %55
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @WRITE_STRING_FILE_SYNC, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @fflush_sync_and_check(i8* %73)
  store i32 %74, i32* %11, align 4
  br label %78

75:                                               ; preds = %67
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @fflush_and_check(i8* %76)
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %5, align 4
  br label %105

83:                                               ; preds = %78
  %84 = load %struct.timespec*, %struct.timespec** %9, align 8
  %85 = icmp ne %struct.timespec* %84, null
  br i1 %85, label %86, label %104

86:                                               ; preds = %83
  %87 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %12, i64 0, i64 0
  %88 = load %struct.timespec*, %struct.timespec** %9, align 8
  %89 = bitcast %struct.timespec* %87 to i8*
  %90 = bitcast %struct.timespec* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 4 %90, i64 4, i1 false)
  %91 = getelementptr inbounds %struct.timespec, %struct.timespec* %87, i64 1
  %92 = load %struct.timespec*, %struct.timespec** %9, align 8
  %93 = bitcast %struct.timespec* %91 to i8*
  %94 = bitcast %struct.timespec* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %93, i8* align 4 %94, i64 4, i1 false)
  %95 = load i8*, i8** %6, align 8
  %96 = call i32 @fileno(i8* %95)
  %97 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %12, i64 0, i64 0
  %98 = call i64 @futimens(i32 %96, %struct.timespec* %97)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %86
  %101 = load i32, i32* @errno, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %105

103:                                              ; preds = %86
  br label %104

104:                                              ; preds = %103, %83
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %104, %100, %81, %63, %52, %20
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @ferror(i8*) #1

declare dso_local i32 @endswith(i8*, i8*) #1

declare dso_local i8* @strjoina(i8*, i8*) #1

declare dso_local i64 @fputs(i8*, i8*) #1

declare dso_local i64 @fputc(i8 signext, i8*) #1

declare dso_local i32 @fflush_sync_and_check(i8*) #1

declare dso_local i32 @fflush_and_check(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @futimens(i32, %struct.timespec*) #1

declare dso_local i32 @fileno(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
