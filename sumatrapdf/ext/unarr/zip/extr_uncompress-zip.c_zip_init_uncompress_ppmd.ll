; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/zip/extr_uncompress-zip.c_zip_init_uncompress_ppmd.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/zip/extr_uncompress-zip.c_zip_init_uncompress_ppmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.ar_archive_zip_uncomp }
%struct.ar_archive_zip_uncomp = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_17__, %struct.TYPE_13__, %struct.TYPE_10__ }
%struct.TYPE_17__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_16__*, i32* }
%struct.TYPE_10__ = type { i32, i32 }

@gPpmd_Alloc = common dso_local global i32 0, align 4
@gPpmd_Free = common dso_local global i32 0, align 4
@gPpmd_ByteIn_Read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @zip_init_uncompress_ppmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zip_init_uncompress_ppmd(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.ar_archive_zip_uncomp*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %4 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 0
  store %struct.ar_archive_zip_uncomp* %5, %struct.ar_archive_zip_uncomp** %3, align 8
  %6 = load i32, i32* @gPpmd_Alloc, align 4
  %7 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %3, align 8
  %8 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  store i32 %6, i32* %11, align 4
  %12 = load i32, i32* @gPpmd_Free, align 4
  %13 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %3, align 8
  %14 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store i32 %12, i32* %17, align 8
  %18 = load i32, i32* @gPpmd_ByteIn_Read, align 4
  %19 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %3, align 8
  %20 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  store i32 %18, i32* %24, align 8
  %25 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %3, align 8
  %26 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %25, i32 0, i32 1
  %27 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %3, align 8
  %28 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  store i32* %26, i32** %31, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %33 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %3, align 8
  %34 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %37, align 8
  %38 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %3, align 8
  %39 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %3, align 8
  %44 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %48, align 8
  %49 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %3, align 8
  %50 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = call i32 @Ppmd8_Construct(%struct.TYPE_17__* %52)
  ret i32 1
}

declare dso_local i32 @Ppmd8_Construct(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
