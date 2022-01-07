; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_parallel.c_parallel_enum_devices.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_parallel.c_parallel_enum_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i8*, i32, i64, i64 }

@RDPDR_MAX_DEVICES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"PARALLEL %s to %s\0A\00", align 1
@DEVICE_TYPE_PARALLEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parallel_enum_devices(%struct.TYPE_5__* %0, i64* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %8, align 8
  store i32 0, i32* %10, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %6, align 8
  br label %14

14:                                               ; preds = %25, %3
  %15 = load i8*, i8** %6, align 8
  %16 = call i8* @next_arg(i8* %15, i8 signext 44)
  store i8* %16, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i64*, i64** %5, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @RDPDR_MAX_DEVICES, align 8
  %22 = icmp ult i64 %20, %21
  br label %23

23:                                               ; preds = %18, %14
  %24 = phi i1 [ false, %14 ], [ %22, %18 ]
  br i1 %24, label %25, label %103

25:                                               ; preds = %23
  %26 = call i64 @xmalloc(i32 4)
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %7, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i8* @next_arg(i8* %28, i8 signext 61)
  store i8* %29, i8** %9, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i64*, i64** %5, align 8
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @strcpy(i64 %37, i8* %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i64*, i64** %5, align 8
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @toupper_str(i64 %47)
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = add nsw i32 %50, 1
  %52 = call i64 @xmalloc(i32 %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i64*, i64** %5, align 8
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  store i64 %52, i64* %59, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i64*, i64** %5, align 8
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @strcpy(i64 %67, i8* %68)
  %70 = load i8*, i8** %6, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %70, i8* %71)
  %73 = load i32, i32* @DEVICE_TYPE_PARALLEL, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i64*, i64** %5, align 8
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  store i32 %73, i32* %80, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = bitcast i32* %81 to i8*
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i64*, i64** %5, align 8
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  store i8* %82, i8** %89, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i64*, i64** %5, align 8
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  %99 = load i64*, i64** %5, align 8
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %99, align 8
  %102 = load i8*, i8** %8, align 8
  store i8* %102, i8** %6, align 8
  br label %14

103:                                              ; preds = %23
  %104 = load i32, i32* %10, align 4
  ret i32 %104
}

declare dso_local i8* @next_arg(i8*, i8 signext) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @strcpy(i64, i8*) #1

declare dso_local i32 @toupper_str(i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
