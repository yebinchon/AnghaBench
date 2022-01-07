; ModuleID = '/home/carl/AnghaBench/zstd/programs/extr_fileio.c_FIO_decompressMultipleFilenames.c'
source_filename = "/home/carl/AnghaBench/zstd/programs/extr_fileio.c_FIO_decompressMultipleFilenames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"cannot open %s\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Write error : %s : cannot properly close output file\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FIO_decompressMultipleFilenames(%struct.TYPE_11__* %0, i8** %1, i32 %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = call i64 @FIO_createDResources(%struct.TYPE_11__* %19, i8* %20)
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store i64 %21, i64* %22, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %78

25:                                               ; preds = %6
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = call i64 @FIO_openDstFile(%struct.TYPE_11__* %31, i32* null, i8* %32)
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 @EXM_THROW(i32 19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %38, %30
  br label %42

42:                                               ; preds = %41, %25
  store i32 0, i32* %15, align 4
  br label %43

43:                                               ; preds = %60, %42
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %43
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load i8**, i8*** %8, align 8
  %51 = load i32, i32* %15, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @FIO_decompressSrcFile(%struct.TYPE_11__* %48, i64 %56, i8* %49, i8* %54)
  %58 = load i32, i32* %13, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %47
  %61 = load i32, i32* %15, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %15, align 4
  br label %43

63:                                               ; preds = %43
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @fclose(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* @errno, align 4
  %75 = call i8* @strerror(i32 %74)
  %76 = call i32 @EXM_THROW(i32 72, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %73, %68, %63
  br label %115

78:                                               ; preds = %6
  store i32 0, i32* %16, align 4
  br label %79

79:                                               ; preds = %104, %78
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %107

83:                                               ; preds = %79
  %84 = load i8**, i8*** %8, align 8
  %85 = load i32, i32* %16, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %17, align 8
  %89 = load i8*, i8** %17, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = call i8* @FIO_determineDstName(i8* %89, i8* %90)
  store i8* %91, i8** %18, align 8
  %92 = load i8*, i8** %18, align 8
  %93 = icmp eq i8* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  store i32 1, i32* %13, align 4
  br label %104

95:                                               ; preds = %83
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %97 = load i8*, i8** %18, align 8
  %98 = load i8*, i8** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @FIO_decompressSrcFile(%struct.TYPE_11__* %96, i64 %100, i8* %97, i8* %98)
  %102 = load i32, i32* %13, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %95, %94
  %105 = load i32, i32* %16, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %16, align 4
  br label %79

107:                                              ; preds = %79
  %108 = load i8*, i8** %10, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i8**, i8*** %8, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @FIO_checkFilenameCollisions(i8** %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %107
  br label %115

115:                                              ; preds = %114, %77
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @FIO_freeDResources(i64 %117)
  %119 = load i32, i32* %13, align 4
  ret i32 %119
}

declare dso_local i64 @FIO_createDResources(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @FIO_openDstFile(%struct.TYPE_11__*, i32*, i8*) #1

declare dso_local i32 @EXM_THROW(i32, i8*, i8*) #1

declare dso_local i32 @FIO_decompressSrcFile(%struct.TYPE_11__*, i64, i8*, i8*) #1

declare dso_local i64 @fclose(i64) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i8* @FIO_determineDstName(i8*, i8*) #1

declare dso_local i32 @FIO_checkFilenameCollisions(i8**, i32) #1

declare dso_local i32 @FIO_freeDResources(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
