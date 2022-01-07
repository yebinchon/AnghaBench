; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_index.c_convert_from_disk.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_index.c_convert_from_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ondisk_cache_entry = type { i8*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.cache_entry = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_5__ = type { i8* }

@CE_NAMEMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ondisk_cache_entry*, %struct.cache_entry**)* @convert_from_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_from_disk(%struct.ondisk_cache_entry* %0, %struct.cache_entry** %1) #0 {
  %3 = alloca %struct.ondisk_cache_entry*, align 8
  %4 = alloca %struct.cache_entry**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cache_entry*, align 8
  store %struct.ondisk_cache_entry* %0, %struct.ondisk_cache_entry** %3, align 8
  store %struct.cache_entry** %1, %struct.cache_entry*** %4, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.ondisk_cache_entry*, %struct.ondisk_cache_entry** %3, align 8
  %10 = getelementptr inbounds %struct.ondisk_cache_entry, %struct.ondisk_cache_entry* %9, i32 0, i32 10
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ntohs(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @CE_NAMEMASK, align 4
  %15 = and i32 %13, %14
  %16 = zext i32 %15 to i64
  store i64 %16, i64* %5, align 8
  %17 = load %struct.ondisk_cache_entry*, %struct.ondisk_cache_entry** %3, align 8
  %18 = getelementptr inbounds %struct.ondisk_cache_entry, %struct.ondisk_cache_entry* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* @CE_NAMEMASK, align 4
  %22 = zext i32 %21 to i64
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strlen(i8* %25)
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %24, %2
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @cache_entry_size(i64 %28)
  %30 = call %struct.cache_entry* @calloc(i32 1, i32 %29)
  store %struct.cache_entry* %30, %struct.cache_entry** %8, align 8
  %31 = load %struct.ondisk_cache_entry*, %struct.ondisk_cache_entry** %3, align 8
  %32 = getelementptr inbounds %struct.ondisk_cache_entry, %struct.ondisk_cache_entry* %31, i32 0, i32 9
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @ntohl(i32 %34)
  %36 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %37 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %36, i32 0, i32 10
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i8* %35, i8** %38, align 8
  %39 = load %struct.ondisk_cache_entry*, %struct.ondisk_cache_entry** %3, align 8
  %40 = getelementptr inbounds %struct.ondisk_cache_entry, %struct.ondisk_cache_entry* %39, i32 0, i32 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @ntohl(i32 %42)
  %44 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %45 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %44, i32 0, i32 9
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i8* %43, i8** %46, align 8
  %47 = load %struct.ondisk_cache_entry*, %struct.ondisk_cache_entry** %3, align 8
  %48 = getelementptr inbounds %struct.ondisk_cache_entry, %struct.ondisk_cache_entry* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = call i8* @ntohl(i32 %49)
  %51 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %52 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %51, i32 0, i32 8
  store i8* %50, i8** %52, align 8
  %53 = load %struct.ondisk_cache_entry*, %struct.ondisk_cache_entry** %3, align 8
  %54 = getelementptr inbounds %struct.ondisk_cache_entry, %struct.ondisk_cache_entry* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @ntohl(i32 %55)
  %57 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %58 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %57, i32 0, i32 7
  store i8* %56, i8** %58, align 8
  %59 = load %struct.ondisk_cache_entry*, %struct.ondisk_cache_entry** %3, align 8
  %60 = getelementptr inbounds %struct.ondisk_cache_entry, %struct.ondisk_cache_entry* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = call i8* @ntohl(i32 %61)
  %63 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %64 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %63, i32 0, i32 6
  store i8* %62, i8** %64, align 8
  %65 = load %struct.ondisk_cache_entry*, %struct.ondisk_cache_entry** %3, align 8
  %66 = getelementptr inbounds %struct.ondisk_cache_entry, %struct.ondisk_cache_entry* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @ntohl(i32 %67)
  %69 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %70 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %69, i32 0, i32 5
  store i8* %68, i8** %70, align 8
  %71 = load %struct.ondisk_cache_entry*, %struct.ondisk_cache_entry** %3, align 8
  %72 = getelementptr inbounds %struct.ondisk_cache_entry, %struct.ondisk_cache_entry* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i8* @ntohl(i32 %73)
  %75 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %76 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %75, i32 0, i32 4
  store i8* %74, i8** %76, align 8
  %77 = load %struct.ondisk_cache_entry*, %struct.ondisk_cache_entry** %3, align 8
  %78 = getelementptr inbounds %struct.ondisk_cache_entry, %struct.ondisk_cache_entry* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ntoh64(i32 %79)
  %81 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %82 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %85 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %87 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.ondisk_cache_entry*, %struct.ondisk_cache_entry** %3, align 8
  %90 = getelementptr inbounds %struct.ondisk_cache_entry, %struct.ondisk_cache_entry* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @hashcpy(i32 %88, i32 %91)
  %93 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %94 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i8*, i8** %6, align 8
  %97 = load i64, i64* %5, align 8
  %98 = add i64 %97, 1
  %99 = call i32 @memcpy(i32 %95, i8* %96, i64 %98)
  %100 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %101 = load %struct.cache_entry**, %struct.cache_entry*** %4, align 8
  store %struct.cache_entry* %100, %struct.cache_entry** %101, align 8
  ret i32 0
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.cache_entry* @calloc(i32, i32) #1

declare dso_local i32 @cache_entry_size(i64) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @ntoh64(i32) #1

declare dso_local i32 @hashcpy(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
