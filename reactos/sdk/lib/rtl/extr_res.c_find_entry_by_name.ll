; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_res.c_find_entry_by_name.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_res.c_find_entry_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32 }

@.str = private unnamed_addr constant [32 x i8] c"root %p dir %p name %ws ret %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"root %p dir %p name %ws not found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @find_entry_by_name(%struct.TYPE_11__* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i64, i64* %7, align 8
  %18 = trunc i64 %17 to i32
  %19 = and i32 %18, -65536
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = trunc i64 %23 to i32
  %25 = and i32 %24, 65535
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call %struct.TYPE_11__* @find_entry_by_id(%struct.TYPE_11__* %22, i32 %25, i8* %26, i32 %27)
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %5, align 8
  br label %129

29:                                               ; preds = %4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i64 1
  %32 = bitcast %struct.TYPE_11__* %31 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %10, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @wcslen(i64 %33)
  store i64 %34, i64* %16, align 8
  store i32 0, i32* %12, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %123, %29
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %124

43:                                               ; preds = %39
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %44, %45
  %47 = sdiv i32 %46, 2
  store i32 %47, i32* %15, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %48, i64 %55
  %57 = bitcast i8* %56 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %11, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @_wcsnicmp(i64 %58, i32 %61, i64 %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %114, label %68

68:                                               ; preds = %43
  %69 = load i64, i64* %16, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %69, %72
  br i1 %73, label %74, label %114

74:                                               ; preds = %68
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = icmp eq i32 %83, %87
  br i1 %88, label %89, label %113

89:                                               ; preds = %74
  %90 = load i8*, i8** %8, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %93, i64 %100
  %102 = call i32 (i8*, i8*, %struct.TYPE_11__*, i64, ...) @DPRINT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %90, %struct.TYPE_11__* %91, i64 %92, i8* %101)
  %103 = load i8*, i8** %8, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %103, i64 %110
  %112 = bitcast i8* %111 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %112, %struct.TYPE_11__** %5, align 8
  br label %129

113:                                              ; preds = %74
  br label %124

114:                                              ; preds = %68, %43
  %115 = load i32, i32* %14, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* %15, align 4
  %119 = sub nsw i32 %118, 1
  store i32 %119, i32* %13, align 4
  br label %123

120:                                              ; preds = %114
  %121 = load i32, i32* %15, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %12, align 4
  br label %123

123:                                              ; preds = %120, %117
  br label %39

124:                                              ; preds = %113, %39
  %125 = load i8*, i8** %8, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %127 = load i64, i64* %7, align 8
  %128 = call i32 (i8*, i8*, %struct.TYPE_11__*, i64, ...) @DPRINT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %125, %struct.TYPE_11__* %126, i64 %127)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %129

129:                                              ; preds = %124, %89, %21
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  ret %struct.TYPE_11__* %130
}

declare dso_local %struct.TYPE_11__* @find_entry_by_id(%struct.TYPE_11__*, i32, i8*, i32) #1

declare dso_local i64 @wcslen(i64) #1

declare dso_local i32 @_wcsnicmp(i64, i32, i64) #1

declare dso_local i32 @DPRINT(i8*, i8*, %struct.TYPE_11__*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
