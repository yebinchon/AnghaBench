; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym64.c_CountUnwindData.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym64.c_CountUnwindData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_19__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_18__ = type { i8*, i8* }
%struct.TYPE_20__ = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CountUnwindData(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  store %struct.TYPE_19__* %19, %struct.TYPE_19__** %3, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %21 = bitcast %struct.TYPE_19__* %20 to i8*
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %21, i64 %29
  store i8* %30, i8** %6, align 8
  br label %31

31:                                               ; preds = %86, %1
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %38 = bitcast %struct.TYPE_19__* %37 to i8*
  %39 = load i8*, i8** %6, align 8
  %40 = icmp ult i8* %38, %39
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi i1 [ false, %31 ], [ %40, %36 ]
  br i1 %42, label %43, label %89

43:                                               ; preds = %41
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %85

48:                                               ; preds = %43
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %50, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %54 = bitcast %struct.TYPE_19__* %53 to i8*
  %55 = call i32 @DwDecodeFde(%struct.TYPE_18__* %4, i8* %54)
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %5, align 8
  br label %58

58:                                               ; preds = %63, %48
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ult i8* %59, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %58
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @DwExecIntruction(%struct.TYPE_20__* %7, i8* %64)
  %66 = load i8*, i8** %5, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %5, align 8
  %69 = call i64 @StoreUnwindCodes(i32* null, %struct.TYPE_20__* %7, i32 0)
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, %69
  store i64 %73, i64* %71, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 1, i32 0
  %79 = sext i32 %78 to i64
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, %79
  store i64 %83, i64* %81, align 8
  br label %58

84:                                               ; preds = %58
  br label %85

85:                                               ; preds = %84, %43
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %88 = call %struct.TYPE_19__* @NextCIE(%struct.TYPE_19__* %87)
  store %struct.TYPE_19__* %88, %struct.TYPE_19__** %3, align 8
  br label %31

89:                                               ; preds = %41
  ret void
}

declare dso_local i32 @DwDecodeFde(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @DwExecIntruction(%struct.TYPE_20__*, i8*) #1

declare dso_local i64 @StoreUnwindCodes(i32*, %struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_19__* @NextCIE(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
