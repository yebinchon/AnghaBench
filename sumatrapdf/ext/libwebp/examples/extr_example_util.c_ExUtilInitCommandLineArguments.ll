; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_example_util.c_ExUtilInitCommandLineArguments.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_example_util.c_ExUtilInitCommandLineArguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8**, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@__const.ExUtilInitCommandLineArguments.sep = private unnamed_addr constant [7 x i8] c" \09\0D\0A\0C\0B\00", align 1
@MAX_ARGC = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"ERROR: Arguments limit %d reached\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ExUtilInitCommandLineArguments(i32 %0, i8** %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [7 x i8], align 1
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %11 = icmp eq %struct.TYPE_5__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i8**, i8*** %6, align 8
  %14 = icmp eq i8** %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %3
  store i32 0, i32* %4, align 4
  br label %98

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = load i8**, i8*** %6, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %20 = call i32 @ResetCommandLineArguments(i32 %17, i8** %18, %struct.TYPE_5__* %19)
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %97

23:                                               ; preds = %16
  %24 = load i8**, i8*** %6, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 45
  br i1 %30, label %31, label %97

31:                                               ; preds = %23
  %32 = bitcast [7 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.ExUtilInitCommandLineArguments.sep, i32 0, i32 0), i64 7, i1 false)
  %33 = load i8**, i8*** %6, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  %38 = call i32 @ExUtilReadFileToWebPData(i8* %35, %struct.TYPE_6__* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %98

41:                                               ; preds = %31
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load i32, i32* @MAX_ARGC, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 8
  %47 = trunc i64 %46 to i32
  %48 = call i64 @WebPMalloc(i32 %47)
  %49 = inttoptr i64 %48 to i8**
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i8** %49, i8*** %51, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i8**, i8*** %53, align 8
  %55 = icmp eq i8** %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %98

57:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = getelementptr inbounds [7 x i8], [7 x i8]* %9, i64 0, i64 0
  %64 = call i8* @strtok(i8* %62, i8* %63)
  store i8* %64, i8** %8, align 8
  br label %65

65:                                               ; preds = %90, %57
  %66 = load i8*, i8** %8, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %93

68:                                               ; preds = %65
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @MAX_ARGC, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32, i32* @stderr, align 4
  %74 = load i32, i32* @MAX_ARGC, align 4
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %74)
  store i32 0, i32* %4, align 4
  br label %98

76:                                               ; preds = %68
  %77 = load i8*, i8** %8, align 8
  %78 = call i64 @strlen(i8* %77)
  %79 = icmp ne i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i8*, i8** %8, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i8**, i8*** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8*, i8** %85, i64 %88
  store i8* %82, i8** %89, align 8
  br label %90

90:                                               ; preds = %76
  %91 = getelementptr inbounds [7 x i8], [7 x i8]* %9, i64 0, i64 0
  %92 = call i8* @strtok(i8* null, i8* %91)
  store i8* %92, i8** %8, align 8
  br label %65

93:                                               ; preds = %65
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %93, %23, %16
  store i32 1, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %72, %56, %40, %15
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @ResetCommandLineArguments(i32, i8**, %struct.TYPE_5__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ExUtilReadFileToWebPData(i8*, %struct.TYPE_6__*) #1

declare dso_local i64 @WebPMalloc(i32) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
