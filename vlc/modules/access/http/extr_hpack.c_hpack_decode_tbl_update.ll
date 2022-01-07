; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_hpack.c_hpack_decode_tbl_update.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_hpack.c_hpack_decode_tbl_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpack_decoder = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpack_decoder*, i32**, i64*, i8**, i8**)* @hpack_decode_tbl_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpack_decode_tbl_update(%struct.hpack_decoder* %0, i32** noalias %1, i64* noalias %2, i8** noalias %3, i8** noalias %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hpack_decoder*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct.hpack_decoder* %0, %struct.hpack_decoder** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %13 = load i32**, i32*** %8, align 8
  %14 = load i64*, i64** %9, align 8
  %15 = call i64 @hpack_decode_int(i32 5, i32** %13, i64* %14)
  store i64 %15, i64* %12, align 8
  %16 = load i64, i64* %12, align 8
  %17 = icmp ult i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %35

19:                                               ; preds = %5
  %20 = load i64, i64* %12, align 8
  %21 = load %struct.hpack_decoder*, %struct.hpack_decoder** %7, align 8
  %22 = getelementptr inbounds %struct.hpack_decoder, %struct.hpack_decoder* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ugt i64 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %35

27:                                               ; preds = %19
  %28 = load i8**, i8*** %10, align 8
  store i8* null, i8** %28, align 8
  %29 = load i8**, i8*** %11, align 8
  store i8* null, i8** %29, align 8
  %30 = load i64, i64* %12, align 8
  %31 = load %struct.hpack_decoder*, %struct.hpack_decoder** %7, align 8
  %32 = getelementptr inbounds %struct.hpack_decoder, %struct.hpack_decoder* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.hpack_decoder*, %struct.hpack_decoder** %7, align 8
  %34 = call i32 @hpack_decode_evict(%struct.hpack_decoder* %33)
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %27, %25, %18
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i64 @hpack_decode_int(i32, i32**, i64*) #1

declare dso_local i32 @hpack_decode_evict(%struct.hpack_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
