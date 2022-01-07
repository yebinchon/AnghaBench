; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/zip/extr_uncompress-zip.c_zip_clear_uncompress.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/zip/extr_uncompress-zip.c_zip_clear_uncompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar_archive_zip_uncomp = type { i32, i32 (%struct.ar_archive_zip_uncomp*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zip_clear_uncompress(%struct.ar_archive_zip_uncomp* %0) #0 {
  %2 = alloca %struct.ar_archive_zip_uncomp*, align 8
  store %struct.ar_archive_zip_uncomp* %0, %struct.ar_archive_zip_uncomp** %2, align 8
  %3 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %2, align 8
  %4 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %16

8:                                                ; preds = %1
  %9 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %2, align 8
  %10 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %9, i32 0, i32 1
  %11 = load i32 (%struct.ar_archive_zip_uncomp*)*, i32 (%struct.ar_archive_zip_uncomp*)** %10, align 8
  %12 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %2, align 8
  %13 = call i32 %11(%struct.ar_archive_zip_uncomp* %12)
  %14 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %2, align 8
  %15 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  br label %16

16:                                               ; preds = %8, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
