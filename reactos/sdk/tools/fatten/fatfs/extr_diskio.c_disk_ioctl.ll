; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_diskio.c_disk_ioctl.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_diskio.c_disk_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@driveHandleCount = common dso_local global i64 0, align 8
@driveHandle = common dso_local global i32** null, align 8
@RES_OK = common dso_local global i32 0, align 4
@sectorCount = common dso_local global i32* null, align 8
@SEEK_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"fseek failed!\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@RES_ERROR = common dso_local global i32 0, align 4
@RES_PARERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @disk_ioctl(i64 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @driveHandleCount, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %121

13:                                               ; preds = %3
  %14 = load i32**, i32*** @driveHandle, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i32*, i32** %14, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %120

19:                                               ; preds = %13
  %20 = load i64, i64* %6, align 8
  switch i64 %20, label %119 [
    i64 132, label %21
    i64 129, label %28
    i64 131, label %32
    i64 130, label %36
    i64 128, label %71
  ]

21:                                               ; preds = %19
  %22 = load i32**, i32*** @driveHandle, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds i32*, i32** %22, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @fflush(i32* %25)
  %27 = load i32, i32* @RES_OK, align 4
  store i32 %27, i32* %4, align 4
  br label %123

28:                                               ; preds = %19
  %29 = load i8*, i8** %7, align 8
  %30 = bitcast i8* %29 to i32*
  store i32 512, i32* %30, align 4
  %31 = load i32, i32* @RES_OK, align 4
  store i32 %31, i32* %4, align 4
  br label %123

32:                                               ; preds = %19
  %33 = load i8*, i8** %7, align 8
  %34 = bitcast i8* %33 to i32*
  store i32 512, i32* %34, align 4
  %35 = load i32, i32* @RES_OK, align 4
  store i32 %35, i32* %4, align 4
  br label %123

36:                                               ; preds = %19
  %37 = load i32*, i32** @sectorCount, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %36
  %43 = load i32**, i32*** @driveHandle, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds i32*, i32** %43, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @SEEK_END, align 4
  %48 = call i32 @fseek(i32* %46, i32 0, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %62

52:                                               ; preds = %42
  %53 = load i32**, i32*** @driveHandle, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds i32*, i32** %53, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @ftell(i32* %56)
  %58 = sdiv i32 %57, 512
  %59 = load i32*, i32** @sectorCount, align 8
  %60 = load i64, i64* %5, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32 %58, i32* %61, align 4
  br label %62

62:                                               ; preds = %52, %50
  br label %63

63:                                               ; preds = %62, %36
  %64 = load i32*, i32** @sectorCount, align 8
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %7, align 8
  %69 = bitcast i8* %68 to i32*
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @RES_OK, align 4
  store i32 %70, i32* %4, align 4
  br label %123

71:                                               ; preds = %19
  %72 = load i8*, i8** %7, align 8
  %73 = bitcast i8* %72 to i32*
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32*, i32** @sectorCount, align 8
  %77 = load i64, i64* %5, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32 %75, i32* %78, align 4
  %79 = load i32**, i32*** @driveHandle, align 8
  %80 = load i64, i64* %5, align 8
  %81 = getelementptr inbounds i32*, i32** %79, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* @SEEK_END, align 4
  %84 = call i32 @fseek(i32* %82, i32 0, i32 %83)
  %85 = load i32**, i32*** @driveHandle, align 8
  %86 = load i64, i64* %5, align 8
  %87 = getelementptr inbounds i32*, i32** %85, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @ftell(i32* %88)
  %90 = sdiv i32 %89, 512
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %9, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp slt i64 %92, %94
  br i1 %95, label %96, label %117

96:                                               ; preds = %71
  %97 = load i32**, i32*** @driveHandle, align 8
  %98 = load i64, i64* %5, align 8
  %99 = getelementptr inbounds i32*, i32** %97, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = mul nsw i32 %101, 512
  %103 = sub nsw i32 %102, 1
  %104 = load i32, i32* @SEEK_SET, align 4
  %105 = call i32 @fseek(i32* %100, i32 %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %96
  %108 = load i32, i32* @RES_ERROR, align 4
  store i32 %108, i32* %4, align 4
  br label %123

109:                                              ; preds = %96
  %110 = load i8*, i8** %7, align 8
  %111 = load i32**, i32*** @driveHandle, align 8
  %112 = load i64, i64* %5, align 8
  %113 = getelementptr inbounds i32*, i32** %111, i64 %112
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @fwrite(i8* %110, i32 1, i32 1, i32* %114)
  %116 = load i32, i32* @RES_OK, align 4
  store i32 %116, i32* %4, align 4
  br label %123

117:                                              ; preds = %71
  %118 = load i32, i32* @RES_OK, align 4
  store i32 %118, i32* %4, align 4
  br label %123

119:                                              ; preds = %19
  br label %120

120:                                              ; preds = %119, %13
  br label %121

121:                                              ; preds = %120, %3
  %122 = load i32, i32* @RES_PARERR, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %121, %117, %109, %107, %63, %32, %28, %21
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
