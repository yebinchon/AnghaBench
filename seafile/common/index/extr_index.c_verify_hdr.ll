; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_index.c_verify_hdr.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_index.c_verify_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_header = type { i64, i64 }

@CACHE_SIGNATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"bad signature\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"bad index version\0A\00", align 1
@G_CHECKSUM_SHA1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"bad index file sha1 signature\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_header*, i64)* @verify_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_hdr(%struct.cache_header* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_header*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [20 x i8], align 16
  %8 = alloca i32, align 4
  store %struct.cache_header* %0, %struct.cache_header** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 20, i32* %8, align 4
  %9 = load %struct.cache_header*, %struct.cache_header** %4, align 8
  %10 = getelementptr inbounds %struct.cache_header, %struct.cache_header* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @CACHE_SIGNATURE, align 4
  %13 = call i64 @htonl(i32 %12)
  %14 = icmp ne i64 %11, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 @g_critical(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %62

17:                                               ; preds = %2
  %18 = load %struct.cache_header*, %struct.cache_header** %4, align 8
  %19 = getelementptr inbounds %struct.cache_header, %struct.cache_header* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @htonl(i32 2)
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = load %struct.cache_header*, %struct.cache_header** %4, align 8
  %25 = getelementptr inbounds %struct.cache_header, %struct.cache_header* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @htonl(i32 3)
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.cache_header*, %struct.cache_header** %4, align 8
  %31 = getelementptr inbounds %struct.cache_header, %struct.cache_header* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @htonl(i32 4)
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call i32 @g_critical(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %62

37:                                               ; preds = %29, %23, %17
  %38 = load i32, i32* @G_CHECKSUM_SHA1, align 4
  %39 = call i32* @g_checksum_new(i32 %38)
  store i32* %39, i32** %6, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.cache_header*, %struct.cache_header** %4, align 8
  %42 = bitcast %struct.cache_header* %41 to i8*
  %43 = load i64, i64* %5, align 8
  %44 = sub i64 %43, 20
  %45 = call i32 @g_checksum_update(i32* %40, i8* %42, i64 %44)
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %48 = call i32 @g_checksum_get_digest(i32* %46, i8* %47, i32* %8)
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @g_checksum_free(i32* %49)
  %51 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %52 = load %struct.cache_header*, %struct.cache_header** %4, align 8
  %53 = bitcast %struct.cache_header* %52 to i8*
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = getelementptr inbounds i8, i8* %55, i64 -20
  %57 = call i64 @hashcmp(i8* %51, i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %37
  %60 = call i32 @g_critical(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %62

61:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %59, %35, %15
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @g_critical(i8*) #1

declare dso_local i32* @g_checksum_new(i32) #1

declare dso_local i32 @g_checksum_update(i32*, i8*, i64) #1

declare dso_local i32 @g_checksum_get_digest(i32*, i8*, i32*) #1

declare dso_local i32 @g_checksum_free(i32*) #1

declare dso_local i64 @hashcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
