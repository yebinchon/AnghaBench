; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_journal-importer.c_journal_importer_drop_iovw.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_journal-importer.c_journal_importer_drop_iovw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i8*, i32 }

@LINE_CHUNK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Failed to reallocate buffer to (smaller) size %zu\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Reallocated buffer from %zu to %zu bytes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @journal_importer_drop_iovw(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 5
  %8 = call i32 @iovw_free_contents(i32* %7, i32 0)
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sub i64 %11, %14
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  br label %64

25:                                               ; preds = %1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub i64 %31, %34
  %36 = icmp ugt i64 %28, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %25
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %3, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %37
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 4
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 4
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  %54 = load i64, i64* %3, align 8
  %55 = call i32 @memcpy(i8* %46, i8* %53, i64 %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load i64, i64* %3, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %43, %37, %25
  br label %64

64:                                               ; preds = %63, %18
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %4, align 8
  br label %68

68:                                               ; preds = %83, %64
  %69 = load i64, i64* %4, align 8
  %70 = load i32, i32* @LINE_CHUNK, align 4
  %71 = mul nsw i32 16, %70
  %72 = sext i32 %71 to i64
  %73 = icmp ugt i64 %69, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %4, align 8
  %79 = udiv i64 %78, 2
  %80 = icmp ult i64 %77, %79
  br label %81

81:                                               ; preds = %74, %68
  %82 = phi i1 [ false, %68 ], [ %80, %74 ]
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = load i64, i64* %4, align 8
  %85 = udiv i64 %84, 2
  store i64 %85, i64* %4, align 8
  br label %68

86:                                               ; preds = %81
  %87 = load i64, i64* %4, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ult i64 %87, %90
  br i1 %91, label %92, label %116

92:                                               ; preds = %86
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 4
  %95 = load i8*, i8** %94, align 8
  %96 = load i64, i64* %4, align 8
  %97 = call i8* @realloc(i8* %95, i64 %96)
  store i8* %97, i8** %5, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %92
  %101 = load i64, i64* %4, align 8
  %102 = call i32 @log_warning(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %101)
  br label %115

103:                                              ; preds = %92
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %4, align 8
  %108 = call i32 @log_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %106, i64 %107)
  %109 = load i8*, i8** %5, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 4
  store i8* %109, i8** %111, align 8
  %112 = load i64, i64* %4, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  store i64 %112, i64* %114, align 8
  br label %115

115:                                              ; preds = %103, %100
  br label %116

116:                                              ; preds = %115, %86
  ret void
}

declare dso_local i32 @iovw_free_contents(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @log_warning(i8*, i64) #1

declare dso_local i32 @log_debug(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
