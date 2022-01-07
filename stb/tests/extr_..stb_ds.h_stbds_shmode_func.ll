; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_..stb_ds.h_stbds_shmode_func.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_..stb_ds.h_stbds_shmode_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }

@STBDS_BUCKET_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @stbds_shmode_func(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %3, align 8
  %8 = call i8* @stbds_arrgrowf(i32 0, i64 %7, i32 0, i32 1)
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @memset(i8* %9, i32 0, i64 %10)
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct.TYPE_6__* @stbds_header(i8* %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load i32, i32* @STBDS_BUCKET_LENGTH, align 4
  %16 = call i64 @stbds_make_hash_index(i32 %15, i32* null)
  %17 = inttoptr i64 %16 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call %struct.TYPE_6__* @stbds_header(i8* %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %20, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* %3, align 8
  %27 = call i8* @STBDS_ARR_TO_HASH(i8* %25, i64 %26)
  ret i8* %27
}

declare dso_local i8* @stbds_arrgrowf(i32, i64, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local %struct.TYPE_6__* @stbds_header(i8*) #1

declare dso_local i64 @stbds_make_hash_index(i32, i32*) #1

declare dso_local i8* @STBDS_ARR_TO_HASH(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
