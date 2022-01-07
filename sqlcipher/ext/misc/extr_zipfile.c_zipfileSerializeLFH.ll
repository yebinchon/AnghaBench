; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_zipfile.c_zipfileSerializeLFH.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_zipfile.c_zipfileSerializeLFH.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }

@ZIPFILE_SIGNATURE_LFH = common dso_local global i32 0, align 4
@ZIPFILE_LFH_FIXED_SZ = common dso_local global i64 0, align 8
@ZIPFILE_EXTRA_TIMESTAMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*)* @zipfileSerializeLFH to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zipfileSerializeLFH(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %5, align 8
  %9 = load i32*, i32** %4, align 8
  store i32* %9, i32** %6, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 9, i32* %11, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* @ZIPFILE_SIGNATURE_LFH, align 4
  %14 = call i32 @zipfileWrite32(i32* %12, i32 %13)
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @zipfileWrite16(i32* %15, i32 %18)
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @zipfileWrite16(i32* %20, i32 %23)
  %25 = load i32*, i32** %6, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @zipfileWrite16(i32* %25, i32 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @zipfileWrite16(i32* %30, i32 %33)
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @zipfileWrite16(i32* %35, i32 %38)
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 10
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @zipfileWrite32(i32* %40, i32 %43)
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @zipfileWrite32(i32* %45, i32 %48)
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @zipfileWrite32(i32* %50, i32 %53)
  %55 = load i32*, i32** %6, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @zipfileWrite16(i32* %55, i32 %59)
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @zipfileWrite16(i32* %61, i32 %64)
  %66 = load i32*, i32** %6, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = load i64, i64* @ZIPFILE_LFH_FIXED_SZ, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = icmp eq i32* %66, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i32*, i32** %6, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 6
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @memcpy(i32* %73, i32 %76, i32 %80)
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = load i32*, i32** %6, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %6, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* @ZIPFILE_EXTRA_TIMESTAMP, align 4
  %91 = call i32 @zipfileWrite16(i32* %89, i32 %90)
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @zipfileWrite16(i32* %92, i32 5)
  %94 = load i32*, i32** %6, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %6, align 8
  store i32 1, i32* %94, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @zipfileWrite32(i32* %96, i32 %99)
  %101 = load i32*, i32** %6, align 8
  %102 = load i32*, i32** %4, align 8
  %103 = ptrtoint i32* %101 to i64
  %104 = ptrtoint i32* %102 to i64
  %105 = sub i64 %103, %104
  %106 = sdiv exact i64 %105, 4
  %107 = trunc i64 %106 to i32
  ret i32 %107
}

declare dso_local i32 @zipfileWrite32(i32*, i32) #1

declare dso_local i32 @zipfileWrite16(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
