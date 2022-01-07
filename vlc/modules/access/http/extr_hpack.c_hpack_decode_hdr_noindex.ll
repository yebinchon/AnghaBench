; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_hpack.c_hpack_decode_hdr_noindex.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_hpack.c_hpack_decode_hdr_noindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpack_decoder = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpack_decoder*, i32**, i64*, i8**, i8**)* @hpack_decode_hdr_noindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpack_decode_hdr_noindex(%struct.hpack_decoder* %0, i32** noalias %1, i64* noalias %2, i8** noalias %3, i8** noalias %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hpack_decoder*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.hpack_decoder* %0, %struct.hpack_decoder** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %15 = load i32**, i32*** %8, align 8
  %16 = load i64*, i64** %9, align 8
  %17 = call i64 @hpack_decode_int(i32 4, i32** %15, i64* %16)
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %12, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %50

21:                                               ; preds = %5
  %22 = load i64, i64* %12, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.hpack_decoder*, %struct.hpack_decoder** %7, align 8
  %26 = load i64, i64* %12, align 8
  %27 = call i8* @hpack_lookup_name(%struct.hpack_decoder* %25, i64 %26)
  store i8* %27, i8** %13, align 8
  br label %32

28:                                               ; preds = %21
  %29 = load i32**, i32*** %8, align 8
  %30 = load i64*, i64** %9, align 8
  %31 = call i8* @hpack_decode_str(i32** %29, i64* %30)
  store i8* %31, i8** %13, align 8
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i8*, i8** %13, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 -1, i32* %6, align 4
  br label %50

36:                                               ; preds = %32
  %37 = load i32**, i32*** %8, align 8
  %38 = load i64*, i64** %9, align 8
  %39 = call i8* @hpack_decode_str(i32** %37, i64* %38)
  store i8* %39, i8** %14, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i8*, i8** %13, align 8
  %44 = call i32 @free(i8* %43)
  store i32 -1, i32* %6, align 4
  br label %50

45:                                               ; preds = %36
  %46 = load i8*, i8** %13, align 8
  %47 = load i8**, i8*** %10, align 8
  store i8* %46, i8** %47, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = load i8**, i8*** %11, align 8
  store i8* %48, i8** %49, align 8
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %45, %42, %35, %20
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i64 @hpack_decode_int(i32, i32**, i64*) #1

declare dso_local i8* @hpack_lookup_name(%struct.hpack_decoder*, i64) #1

declare dso_local i8* @hpack_decode_str(i32**, i64*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
