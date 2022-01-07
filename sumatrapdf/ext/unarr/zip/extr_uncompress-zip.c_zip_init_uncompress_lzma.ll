; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/zip/extr_uncompress-zip.c_zip_init_uncompress_lzma.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/zip/extr_uncompress-zip.c_zip_init_uncompress_lzma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar_archive_zip_uncomp = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@gLzma_Alloc = common dso_local global i32 0, align 4
@gLzma_Free = common dso_local global i32 0, align 4
@LZMA_FINISH_END = common dso_local global i32 0, align 4
@LZMA_FINISH_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar_archive_zip_uncomp*, i32)* @zip_init_uncompress_lzma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zip_init_uncompress_lzma(%struct.ar_archive_zip_uncomp* %0, i32 %1) #0 {
  %3 = alloca %struct.ar_archive_zip_uncomp*, align 8
  %4 = alloca i32, align 4
  store %struct.ar_archive_zip_uncomp* %0, %struct.ar_archive_zip_uncomp** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @gLzma_Alloc, align 4
  %6 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %3, align 8
  %7 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i32 %5, i32* %10, align 4
  %11 = load i32, i32* @gLzma_Free, align 4
  %12 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %3, align 8
  %13 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 %11, i32* %16, align 4
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 2
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @LZMA_FINISH_END, align 4
  br label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @LZMA_FINISH_ANY, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %3, align 8
  %27 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i32 %25, i32* %29, align 4
  %30 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %3, align 8
  %31 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = call i32 @LzmaDec_Construct(i32* %33)
  ret i32 1
}

declare dso_local i32 @LzmaDec_Construct(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
