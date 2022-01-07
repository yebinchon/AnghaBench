; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_vhd.c_IsCompressedBootableImage.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_vhd.c_IsCompressedBootableImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@BLED_COMPRESSION_NONE = common dso_local global i32 0, align 4
@img_report = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@file_assoc = common dso_local global %struct.TYPE_5__* null, align 8
@MBR_SIZE = common dso_local global i64 0, align 8
@FormatStatus = common dso_local global i64 0, align 8
@_uprintf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsCompressedBootableImage(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %5, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @BLED_COMPRESSION_NONE, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @img_report, i32 0, i32 0), align 4
  %11 = load i8*, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %11, i64 %15
  store i8* %16, i8** %4, align 8
  br label %17

17:                                               ; preds = %29, %1
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 46
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = icmp ne i8* %23, %24
  br label %26

26:                                               ; preds = %22, %17
  %27 = phi i1 [ false, %17 ], [ %25, %22 ]
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %28
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 -1
  store i8* %31, i8** %4, align 8
  br label %17

32:                                               ; preds = %26
  %33 = load i8*, i8** %4, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = icmp eq i8* %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %2, align 4
  br label %112

38:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %107, %38
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @file_assoc, align 8
  %42 = call i32 @ARRAYSIZE(%struct.TYPE_5__* %41)
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %110

44:                                               ; preds = %39
  %45 = load i8*, i8** %4, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @file_assoc, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @strcmp(i8* %45, i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %106

54:                                               ; preds = %44
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @file_assoc, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @img_report, i32 0, i32 0), align 4
  %61 = load i64, i64* @MBR_SIZE, align 8
  %62 = call i8* @malloc(i64 %61)
  store i8* %62, i8** %5, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %2, align 4
  br label %112

67:                                               ; preds = %54
  store i64 0, i64* @FormatStatus, align 8
  %68 = load i32, i32* @_uprintf, align 4
  %69 = call i32 @bled_init(i32 %68, i32* null, i64* @FormatStatus)
  %70 = load i8*, i8** %3, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = load i64, i64* @MBR_SIZE, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** @file_assoc, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @bled_uncompress_to_buffer(i8* %70, i8* %71, i64 %72, i32 %78)
  store i64 %79, i64* %8, align 8
  %80 = call i32 (...) @bled_exit()
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* @MBR_SIZE, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %67
  %85 = load i8*, i8** %5, align 8
  %86 = call i32 @free(i8* %85)
  %87 = load i32, i32* @FALSE, align 4
  store i32 %87, i32* %2, align 4
  br label %112

88:                                               ; preds = %67
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 510
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp eq i32 %92, 85
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 511
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %98, 170
  br label %100

100:                                              ; preds = %94, %88
  %101 = phi i1 [ false, %88 ], [ %99, %94 ]
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %7, align 4
  %103 = load i8*, i8** %5, align 8
  %104 = call i32 @free(i8* %103)
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %2, align 4
  br label %112

106:                                              ; preds = %44
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %39

110:                                              ; preds = %39
  %111 = load i32, i32* @FALSE, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %110, %100, %84, %65, %36
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ARRAYSIZE(%struct.TYPE_5__*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @bled_init(i32, i32*, i64*) #1

declare dso_local i64 @bled_uncompress_to_buffer(i8*, i8*, i64, i32) #1

declare dso_local i32 @bled_exit(...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
