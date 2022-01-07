; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_res.c_find_entry_by_id.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_res.c_find_entry_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"root %p dir %p id %04x ret %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"root %p dir %p id %04x not found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @find_entry_by_id(%struct.TYPE_7__* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i64 1
  %16 = bitcast %struct.TYPE_7__* %15 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %10, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %20, %23
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %12, align 4
  br label %26

26:                                               ; preds = %98, %4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %99

30:                                               ; preds = %26
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %12, align 4
  %33 = add nsw i32 %31, %32
  %34 = sdiv i32 %33, 2
  store i32 %34, i32* %13, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %83

43:                                               ; preds = %30
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = icmp eq i32 %52, %56
  br i1 %57, label %58, label %82

58:                                               ; preds = %43
  %59 = load i8*, i8** %8, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %62, i64 %69
  %71 = call i32 (i8*, i8*, %struct.TYPE_7__*, i64, ...) @DPRINT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %59, %struct.TYPE_7__* %60, i64 %61, i8* %70)
  %72 = load i8*, i8** %8, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %72, i64 %79
  %81 = bitcast i8* %80 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %81, %struct.TYPE_7__** %5, align 8
  br label %104

82:                                               ; preds = %43
  br label %99

83:                                               ; preds = %30
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %7, align 8
  %91 = icmp sgt i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load i32, i32* %13, align 4
  %94 = sub nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %98

95:                                               ; preds = %83
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %95, %92
  br label %26

99:                                               ; preds = %82, %26
  %100 = load i8*, i8** %8, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %102 = load i64, i64* %7, align 8
  %103 = call i32 (i8*, i8*, %struct.TYPE_7__*, i64, ...) @DPRINT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %100, %struct.TYPE_7__* %101, i64 %102)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %104

104:                                              ; preds = %99, %58
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %105
}

declare dso_local i32 @DPRINT(i8*, i8*, %struct.TYPE_7__*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
