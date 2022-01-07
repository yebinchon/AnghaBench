; ModuleID = '/home/carl/AnghaBench/redis/src/extr_dict.c_dictFindEntryRefByPtrAndHash.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_dict.c_dictFindEntryRefByPtrAndHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_8__** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__** @dictFindEntryRefByPtrAndHash(%struct.TYPE_9__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_8__**, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i64 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %17, %23
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store %struct.TYPE_8__** null, %struct.TYPE_8__*** %4, align 8
  br label %78

27:                                               ; preds = %3
  store i64 0, i64* %11, align 8
  br label %28

28:                                               ; preds = %74, %27
  %29 = load i64, i64* %11, align 8
  %30 = icmp ule i64 %29, 1
  br i1 %30, label %31, label %77

31:                                               ; preds = %28
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = load i64, i64* %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = and i64 %32, %39
  store i64 %40, i64* %10, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %46, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %47, i64 %48
  store %struct.TYPE_8__** %49, %struct.TYPE_8__*** %9, align 8
  %50 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %8, align 8
  br label %52

52:                                               ; preds = %63, %31
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %54 = icmp ne %struct.TYPE_8__* %53, null
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load i8*, i8** %6, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = icmp eq i8* %56, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  store %struct.TYPE_8__** %62, %struct.TYPE_8__*** %4, align 8
  br label %78

63:                                               ; preds = %55
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  store %struct.TYPE_8__** %65, %struct.TYPE_8__*** %9, align 8
  %66 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  store %struct.TYPE_8__* %67, %struct.TYPE_8__** %8, align 8
  br label %52

68:                                               ; preds = %52
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = call i32 @dictIsRehashing(%struct.TYPE_9__* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  store %struct.TYPE_8__** null, %struct.TYPE_8__*** %4, align 8
  br label %78

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %11, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %11, align 8
  br label %28

77:                                               ; preds = %28
  store %struct.TYPE_8__** null, %struct.TYPE_8__*** %4, align 8
  br label %78

78:                                               ; preds = %77, %72, %61, %26
  %79 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  ret %struct.TYPE_8__** %79
}

declare dso_local i32 @dictIsRehashing(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
