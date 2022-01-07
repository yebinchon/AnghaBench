; ModuleID = '/home/carl/AnghaBench/zstd/lib/decompress/extr_zstd_decompress.c_ZSTD_decompressBegin_usingDDict.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/decompress/extr_zstd_decompress.c_ZSTD_decompressBegin_usingDDict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* }

@.str = private unnamed_addr constant [32 x i8] c"ZSTD_decompressBegin_usingDDict\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"DDict is %s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"~cold~\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"hot!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_decompressBegin_usingDDict(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32*, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %39

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @ZSTD_DDict_dictContent(i32* %16)
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %5, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @ZSTD_DDict_dictSize(i32* %19)
  store i64 %20, i64* %6, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8* %23, i8** %7, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %26, %27
  %29 = zext i1 %28 to i32
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %38 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %15, %2
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = call i32 @ZSTD_decompressBegin(%struct.TYPE_5__* %40)
  %42 = call i32 @FORWARD_IF_ERROR(i32 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @ZSTD_copyDDictParameters(%struct.TYPE_5__* %46, i32* %47)
  br label %49

49:                                               ; preds = %45, %39
  ret i64 0
}

declare dso_local i32 @DEBUGLOG(i32, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ZSTD_DDict_dictContent(i32*) #1

declare dso_local i64 @ZSTD_DDict_dictSize(i32*) #1

declare dso_local i32 @FORWARD_IF_ERROR(i32) #1

declare dso_local i32 @ZSTD_decompressBegin(%struct.TYPE_5__*) #1

declare dso_local i32 @ZSTD_copyDDictParameters(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
