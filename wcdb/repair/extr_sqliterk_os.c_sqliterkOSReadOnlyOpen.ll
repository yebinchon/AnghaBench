; ModuleID = '/home/carl/AnghaBench/wcdb/repair/extr_sqliterk_os.c_sqliterkOSReadOnlyOpen.c'
source_filename = "/home/carl/AnghaBench/wcdb/repair/extr_sqliterk_os.c_sqliterkOSReadOnlyOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8* }

@SQLITERK_MISUSE = common dso_local global i32 0, align 4
@SQLITERK_OK = common dso_local global i32 0, align 4
@SQLITERK_NOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Not enough memory, required %zu bytes.\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@SQLITERK_CANTOPEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Cannot open '%s' for reading: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqliterkOSReadOnlyOpen(i8* %0, %struct.TYPE_4__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__** %1, %struct.TYPE_4__*** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %18 = icmp ne %struct.TYPE_4__** %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16, %11, %2
  %20 = load i32, i32* @SQLITERK_MISUSE, align 4
  store i32 %20, i32* %3, align 4
  br label %92

21:                                               ; preds = %16
  %22 = load i32, i32* @SQLITERK_OK, align 4
  store i32 %22, i32* %6, align 4
  %23 = call i8* @sqliterkOSMalloc(i64 16)
  %24 = bitcast i8* %23 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %7, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @SQLITERK_NOMEM, align 4
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 (i32, i8*, i32, ...) @sqliterkOSError(i32 %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 16)
  br label %83

31:                                               ; preds = %21
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = mul i64 1, %35
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i8* @sqliterkOSMalloc(i64 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %31
  %46 = load i32, i32* @SQLITERK_NOMEM, align 4
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i64, i64* %8, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 (i32, i8*, i32, ...) @sqliterkOSError(i32 %47, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %83

51:                                               ; preds = %31
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @strncpy(i8* %54, i8* %55, i64 %56)
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* @O_RDONLY, align 4
  %62 = call i64 @open(i8* %60, i32 %61)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %51
  %70 = load i32, i32* @SQLITERK_CANTOPEN, align 4
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = ptrtoint i8* %74 to i32
  %76 = load i32, i32* @errno, align 4
  %77 = call i32 @strerror(i32 %76)
  %78 = call i32 (i32, i8*, i32, ...) @sqliterkOSError(i32 %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %77)
  br label %83

79:                                               ; preds = %51
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %81 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  store %struct.TYPE_4__* %80, %struct.TYPE_4__** %81, align 8
  %82 = load i32, i32* @SQLITERK_OK, align 4
  store i32 %82, i32* %3, align 4
  br label %92

83:                                               ; preds = %69, %45, %27
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %85 = icmp ne %struct.TYPE_4__* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %88 = call i32 @sqliterkOSClose(%struct.TYPE_4__* %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %90, align 8
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %89, %79, %19
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i8* @sqliterkOSMalloc(i64) #1

declare dso_local i32 @sqliterkOSError(i32, i8*, i32, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @sqliterkOSClose(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
