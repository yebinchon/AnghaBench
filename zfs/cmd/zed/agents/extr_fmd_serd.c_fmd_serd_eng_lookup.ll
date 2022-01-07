; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_fmd_serd.c_fmd_serd_eng_lookup.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_fmd_serd.c_fmd_serd_eng_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @fmd_serd_eng_lookup(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @fmd_strhash(i8* %8)
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = urem i64 %9, %12
  store i64 %13, i64* %6, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %16, i64 %17
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %7, align 8
  br label %20

20:                                               ; preds = %33, %2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = icmp ne %struct.TYPE_6__* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @strcmp(i8* %24, i32 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %3, align 8
  br label %38

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %7, align 8
  br label %20

37:                                               ; preds = %20
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %38

38:                                               ; preds = %37, %30
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %39
}

declare dso_local i64 @fmd_strhash(i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
