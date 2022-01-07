; ModuleID = '/home/carl/AnghaBench/vlc/src/text/extr_strings.c_write_duration.c'
source_filename = "/home/carl/AnghaBench/vlc/src/text/extr_strings.c_write_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_memstream = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }

@CLOCK_FREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%02lld:%02lld:%02lld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlc_memstream*, i32)* @write_duration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_duration(%struct.vlc_memstream* %0, i32 %1) #0 {
  %3 = alloca %struct.vlc_memstream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  store %struct.vlc_memstream* %0, %struct.vlc_memstream** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @CLOCK_FREQ, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sdiv i32 %10, %9
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call { i64, i32 } @lldiv(i32 %12, i32 60)
  %14 = bitcast %struct.TYPE_3__* %7 to { i64, i32 }*
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %16 = extractvalue { i64, i32 } %13, 0
  store i64 %16, i64* %15, align 8
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %18 = extractvalue { i64, i32 } %13, 1
  store i32 %18, i32* %17, align 8
  %19 = bitcast %struct.TYPE_3__* %5 to i8*
  %20 = bitcast %struct.TYPE_3__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 16, i1 false)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call { i64, i32 } @lldiv(i32 %24, i32 60)
  %26 = bitcast %struct.TYPE_3__* %8 to { i64, i32 }*
  %27 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %26, i32 0, i32 0
  %28 = extractvalue { i64, i32 } %25, 0
  store i64 %28, i64* %27, align 8
  %29 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %26, i32 0, i32 1
  %30 = extractvalue { i64, i32 } %25, 1
  store i32 %30, i32* %29, align 8
  %31 = bitcast %struct.TYPE_3__* %5 to i8*
  %32 = bitcast %struct.TYPE_3__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 16, i1 false)
  %33 = load %struct.vlc_memstream*, %struct.vlc_memstream** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @vlc_memstream_printf(%struct.vlc_memstream* %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %35, i64 %37, i64 %38)
  ret void
}

declare dso_local { i64, i32 } @lldiv(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vlc_memstream_printf(%struct.vlc_memstream*, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
