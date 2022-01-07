; ModuleID = '/home/carl/AnghaBench/toxcore/testing/extr_nTox.c_tox_file_chunk_request.c'
source_filename = "/home/carl/AnghaBench/toxcore/testing/extr_nTox.c_tox_file_chunk_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }

@NUM_FILE_SENDERS = common dso_local global i32 0, align 4
@file_senders = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"[t] %u file transfer: %u completed\00", align 1
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
  %14 = alloca [512 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  store i32 0, i32* %13, align 4
  br label %18

18:                                               ; preds = %109, %6
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @NUM_FILE_SENDERS, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %112

22:                                               ; preds = %18
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_senders, align 8
  %24 = load i32, i32* %13, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %108

30:                                               ; preds = %22
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_senders, align 8
  %32 = load i32, i32* %13, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %108

39:                                               ; preds = %30
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_senders, align 8
  %41 = load i32, i32* %13, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %108

48:                                               ; preds = %39
  %49 = load i64, i64* %11, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %80

51:                                               ; preds = %48
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_senders, align 8
  %53 = load i32, i32* %13, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @fclose(i64 %57)
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_senders, align 8
  %60 = load i32, i32* %13, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  %64 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_senders, align 8
  %66 = load i32, i32* %13, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_senders, align 8
  %72 = load i32, i32* %13, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @sprintf(i8* %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %70, i64 %76)
  %78 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %79 = call i32 @new_lines(i8* %78)
  br label %112

80:                                               ; preds = %48
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_senders, align 8
  %82 = load i32, i32* %13, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @SEEK_SET, align 4
  %89 = call i32 @fseek(i64 %86, i32 %87, i32 %88)
  %90 = load i64, i64* %11, align 8
  %91 = call i8* @llvm.stacksave()
  store i8* %91, i8** %15, align 8
  %92 = alloca i32, i64 %90, align 16
  store i64 %90, i64* %16, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_senders, align 8
  %95 = load i32, i32* %13, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @fread(i32* %92, i32 1, i64 %93, i64 %99)
  store i32 %100, i32* %17, align 4
  %101 = load i32*, i32** %7, align 8
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* %9, align 8
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %17, align 4
  %106 = call i32 @tox_file_send_chunk(i32* %101, i64 %102, i64 %103, i32 %104, i32* %92, i32 %105, i32 0)
  %107 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %107)
  br label %112

108:                                              ; preds = %39, %30, %22
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %13, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %13, align 4
  br label %18

112:                                              ; preds = %80, %51, %18
  ret void
}

declare dso_local i32 @fclose(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i64, i64) #1

declare dso_local i32 @new_lines(i8*) #1

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
