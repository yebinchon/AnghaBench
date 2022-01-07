; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_uncompress-rar.c_rar_clear_uncompress.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_uncompress-rar.c_rar_clear_uncompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar_archive_rar_uncomp = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@gSzAlloc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rar_clear_uncompress(%struct.ar_archive_rar_uncomp* %0) #0 {
  %2 = alloca %struct.ar_archive_rar_uncomp*, align 8
  store %struct.ar_archive_rar_uncomp* %0, %struct.ar_archive_rar_uncomp** %2, align 8
  %3 = load %struct.ar_archive_rar_uncomp*, %struct.ar_archive_rar_uncomp** %2, align 8
  %4 = getelementptr inbounds %struct.ar_archive_rar_uncomp, %struct.ar_archive_rar_uncomp* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %32

8:                                                ; preds = %1
  %9 = load %struct.ar_archive_rar_uncomp*, %struct.ar_archive_rar_uncomp** %2, align 8
  %10 = call i32 @rar_free_codes(%struct.ar_archive_rar_uncomp* %9)
  %11 = load %struct.ar_archive_rar_uncomp*, %struct.ar_archive_rar_uncomp** %2, align 8
  %12 = getelementptr inbounds %struct.ar_archive_rar_uncomp, %struct.ar_archive_rar_uncomp* %11, i32 0, i32 2
  %13 = call i32 @lzss_cleanup(i32* %12)
  %14 = load %struct.ar_archive_rar_uncomp*, %struct.ar_archive_rar_uncomp** %2, align 8
  %15 = getelementptr inbounds %struct.ar_archive_rar_uncomp, %struct.ar_archive_rar_uncomp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %29

18:                                               ; preds = %8
  %19 = load %struct.ar_archive_rar_uncomp*, %struct.ar_archive_rar_uncomp** %2, align 8
  %20 = getelementptr inbounds %struct.ar_archive_rar_uncomp, %struct.ar_archive_rar_uncomp* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = call i32 @Ppmd7_Free(i32* %22, i32* @gSzAlloc)
  %24 = load %struct.ar_archive_rar_uncomp*, %struct.ar_archive_rar_uncomp** %2, align 8
  %25 = getelementptr inbounds %struct.ar_archive_rar_uncomp, %struct.ar_archive_rar_uncomp* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i32 @rar_clear_filters(i32* %27)
  br label %29

29:                                               ; preds = %18, %8
  %30 = load %struct.ar_archive_rar_uncomp*, %struct.ar_archive_rar_uncomp** %2, align 8
  %31 = getelementptr inbounds %struct.ar_archive_rar_uncomp, %struct.ar_archive_rar_uncomp* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %7
  ret void
}

declare dso_local i32 @rar_free_codes(%struct.ar_archive_rar_uncomp*) #1

declare dso_local i32 @lzss_cleanup(i32*) #1

declare dso_local i32 @Ppmd7_Free(i32*, i32*) #1

declare dso_local i32 @rar_clear_filters(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
