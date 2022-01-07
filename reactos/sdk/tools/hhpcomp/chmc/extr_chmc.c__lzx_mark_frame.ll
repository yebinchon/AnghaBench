; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c__lzx_mark_frame.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c__lzx_mark_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmcLzxInfo = type { %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_4__ = type { %struct.chmcSection** }
%struct.chmcSection = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [56 x i8] c"Aligned data at %d(in compressed stream, %d) (%lu/%lu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @_lzx_mark_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_lzx_mark_frame(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.chmcLzxInfo*, align 8
  %8 = alloca %struct.chmcSection*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.chmcLzxInfo*
  store %struct.chmcLzxInfo* %11, %struct.chmcLzxInfo** %7, align 8
  %12 = load %struct.chmcLzxInfo*, %struct.chmcLzxInfo** %7, align 8
  %13 = getelementptr inbounds %struct.chmcLzxInfo, %struct.chmcLzxInfo* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.chmcSection**, %struct.chmcSection*** %15, align 8
  %17 = getelementptr inbounds %struct.chmcSection*, %struct.chmcSection** %16, i64 1
  %18 = load %struct.chmcSection*, %struct.chmcSection** %17, align 8
  store %struct.chmcSection* %18, %struct.chmcSection** %8, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.chmcLzxInfo*, %struct.chmcLzxInfo** %7, align 8
  %22 = getelementptr inbounds %struct.chmcLzxInfo, %struct.chmcLzxInfo* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.chmcLzxInfo*, %struct.chmcLzxInfo** %7, align 8
  %25 = getelementptr inbounds %struct.chmcLzxInfo, %struct.chmcLzxInfo* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @chmc_dump(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %20, i64 %23, i64 %26)
  %28 = load i8*, i8** %6, align 8
  store i8* %28, i8** %9, align 8
  %29 = load %struct.chmcSection*, %struct.chmcSection** %8, align 8
  %30 = getelementptr inbounds %struct.chmcSection, %struct.chmcSection* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load %struct.chmcLzxInfo*, %struct.chmcLzxInfo** %7, align 8
  %35 = getelementptr inbounds %struct.chmcLzxInfo, %struct.chmcLzxInfo* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @chmc_compressed_add_mark(%struct.TYPE_4__* %36, i8* %37)
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.chmcSection*, %struct.chmcSection** %8, align 8
  %41 = getelementptr inbounds %struct.chmcSection, %struct.chmcSection* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i8* %39, i8** %42, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load %struct.chmcSection*, %struct.chmcSection** %8, align 8
  %45 = getelementptr inbounds %struct.chmcSection, %struct.chmcSection* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i8* %43, i8** %46, align 8
  ret void
}

declare dso_local i32 @chmc_dump(i8*, i8*, i8*, i64, i64) #1

declare dso_local i32 @chmc_compressed_add_mark(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
