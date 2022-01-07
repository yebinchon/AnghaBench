; ModuleID = '/home/carl/AnghaBench/zstd/programs/extr_fileio.c_FIO_compressMultipleFilenames.c'
source_filename = "/home/carl/AnghaBench/zstd/programs/extr_fileio.c_FIO_compressMultipleFilenames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [44 x i8] c"Write error (%s) : cannot properly close %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FIO_compressMultipleFilenames(i32* %0, i8** %1, i32 %2, i8* %3, i8* %4, i8* %5, i8* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_5__, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  store i32* %0, i32** %10, align 8
  store i8** %1, i8*** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = load i8*, i8** %16, align 8
  %27 = load i32, i32* %17, align 4
  %28 = load i32, i32* %18, align 4
  %29 = call i32* @FIO_createCResources(i32* %25, i8* %26, i32 %27, i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32* %29, i32** %30, align 8
  %31 = load i8*, i8** %14, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %9
  %34 = load i8*, i8** %15, align 8
  %35 = icmp ne i8* %34, null
  br label %36

36:                                               ; preds = %33, %9
  %37 = phi i1 [ true, %9 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i8*, i8** %14, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %86

42:                                               ; preds = %36
  %43 = load i32*, i32** %10, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = call i32* @FIO_openDstFile(i32* %43, i32* null, i8* %44)
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32* %45, i32** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i32 1, i32* %19, align 4
  br label %85

51:                                               ; preds = %42
  store i32 0, i32* %21, align 4
  br label %52

52:                                               ; preds = %70, %51
  %53 = load i32, i32* %21, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %52
  %57 = load i32*, i32** %10, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = load i8**, i8*** %11, align 8
  %60 = load i32, i32* %21, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %17, align 4
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @FIO_compressFilename_srcFile(i32* %57, i32* %66, i8* %58, i8* %63, i32 %64)
  %68 = load i32, i32* %19, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %19, align 4
  br label %70

70:                                               ; preds = %56
  %71 = load i32, i32* %21, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %21, align 4
  br label %52

73:                                               ; preds = %52
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i64 @fclose(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i32, i32* @errno, align 4
  %80 = call i32 @strerror(i32 %79)
  %81 = load i8*, i8** %14, align 8
  %82 = call i32 @EXM_THROW(i32 29, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %80, i8* %81)
  br label %83

83:                                               ; preds = %78, %73
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32* null, i32** %84, align 8
  br label %85

85:                                               ; preds = %83, %50
  br label %121

86:                                               ; preds = %36
  store i32 0, i32* %22, align 4
  br label %87

87:                                               ; preds = %110, %86
  %88 = load i32, i32* %22, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %113

91:                                               ; preds = %87
  %92 = load i8**, i8*** %11, align 8
  %93 = load i32, i32* %22, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  %96 = load i8*, i8** %95, align 8
  store i8* %96, i8** %23, align 8
  %97 = load i8*, i8** %23, align 8
  %98 = load i8*, i8** %13, align 8
  %99 = load i8*, i8** %15, align 8
  %100 = call i8* @FIO_determineCompressedName(i8* %97, i8* %98, i8* %99)
  store i8* %100, i8** %24, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = load i8*, i8** %24, align 8
  %103 = load i8*, i8** %23, align 8
  %104 = load i32, i32* %17, align 4
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @FIO_compressFilename_srcFile(i32* %101, i32* %106, i8* %102, i8* %103, i32 %104)
  %108 = load i32, i32* %19, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %19, align 4
  br label %110

110:                                              ; preds = %91
  %111 = load i32, i32* %22, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %22, align 4
  br label %87

113:                                              ; preds = %87
  %114 = load i8*, i8** %13, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i8**, i8*** %11, align 8
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @FIO_checkFilenameCollisions(i8** %117, i32 %118)
  br label %120

120:                                              ; preds = %116, %113
  br label %121

121:                                              ; preds = %120, %85
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @FIO_freeCResources(i32* %123)
  %125 = load i32, i32* %19, align 4
  ret i32 %125
}

declare dso_local i32* @FIO_createCResources(i32*, i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @FIO_openDstFile(i32*, i32*, i8*) #1

declare dso_local i32 @FIO_compressFilename_srcFile(i32*, i32*, i8*, i8*, i32) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @EXM_THROW(i32, i8*, i32, i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i8* @FIO_determineCompressedName(i8*, i8*, i8*) #1

declare dso_local i32 @FIO_checkFilenameCollisions(i8**, i32) #1

declare dso_local i32 @FIO_freeCResources(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
