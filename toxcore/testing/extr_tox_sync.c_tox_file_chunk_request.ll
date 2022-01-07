; ModuleID = '/home/carl/AnghaBench/toxcore/testing/extr_tox_sync.c_tox_file_chunk_request.c'
source_filename = "/home/carl/AnghaBench/toxcore/testing/extr_tox_sync.c_tox_file_chunk_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }

@NUM_FILE_SENDERS = common dso_local global i32 0, align 4
@file_senders = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"[t] %u file transfer: %u completed\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tox_file_chunk_request(i32* %0, i64 %1, i64 %2, i32 %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %105, %6
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* @NUM_FILE_SENDERS, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %108

21:                                               ; preds = %17
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_senders, align 8
  %23 = load i32, i32* %13, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %104

29:                                               ; preds = %21
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_senders, align 8
  %31 = load i32, i32* %13, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %104

38:                                               ; preds = %29
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_senders, align 8
  %40 = load i32, i32* %13, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %104

47:                                               ; preds = %38
  %48 = load i64, i64* %11, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %76

50:                                               ; preds = %47
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_senders, align 8
  %52 = load i32, i32* %13, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @fclose(i64 %56)
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_senders, align 8
  %59 = load i32, i32* %13, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_senders, align 8
  %64 = load i32, i32* %13, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_senders, align 8
  %70 = load i32, i32* %13, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %68, i64 %74)
  br label %108

76:                                               ; preds = %47
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_senders, align 8
  %78 = load i32, i32* %13, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @SEEK_SET, align 4
  %85 = call i32 @fseek(i64 %82, i32 %83, i32 %84)
  %86 = load i64, i64* %11, align 8
  %87 = call i8* @llvm.stacksave()
  store i8* %87, i8** %14, align 8
  %88 = alloca i32, i64 %86, align 16
  store i64 %86, i64* %15, align 8
  %89 = load i64, i64* %11, align 8
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_senders, align 8
  %91 = load i32, i32* %13, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @fread(i32* %88, i32 1, i64 %89, i64 %95)
  store i32 %96, i32* %16, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* %9, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %16, align 4
  %102 = call i32 @tox_file_send_chunk(i32* %97, i64 %98, i64 %99, i32 %100, i32* %88, i32 %101, i32 0)
  %103 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %103)
  br label %108

104:                                              ; preds = %38, %29, %21
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %13, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %13, align 4
  br label %17

108:                                              ; preds = %76, %50, %17
  ret void
}

declare dso_local i32 @fclose(i64) #1

declare dso_local i32 @printf(i8*, i64, i64) #1

declare dso_local i32 @fseek(i64, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @fread(i32*, i32, i64, i64) #1

declare dso_local i32 @tox_file_send_chunk(i32*, i64, i64, i32, i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
