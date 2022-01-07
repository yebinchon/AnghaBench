; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_index.c_ce_write_entry2.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_index.c_ce_write_entry2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ondisk_cache_entry2 = type { i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_5__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.cache_entry*)* @ce_write_entry2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ce_write_entry2(i32* %0, i32 %1, %struct.cache_entry* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cache_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ondisk_cache_entry2*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cache_entry* %2, %struct.cache_entry** %6, align 8
  %11 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %12 = call i32 @ondisk_ce_size2(%struct.cache_entry* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.ondisk_cache_entry2* @calloc(i32 1, i32 %13)
  store %struct.ondisk_cache_entry2* %14, %struct.ondisk_cache_entry2** %8, align 8
  %15 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %16 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %15, i32 0, i32 10
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @hton64(i32 %18)
  %20 = load %struct.ondisk_cache_entry2*, %struct.ondisk_cache_entry2** %8, align 8
  %21 = getelementptr inbounds %struct.ondisk_cache_entry2, %struct.ondisk_cache_entry2* %20, i32 0, i32 10
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i8* %19, i8** %22, align 8
  %23 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %24 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %23, i32 0, i32 9
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @hton64(i32 %26)
  %28 = load %struct.ondisk_cache_entry2*, %struct.ondisk_cache_entry2** %8, align 8
  %29 = getelementptr inbounds %struct.ondisk_cache_entry2, %struct.ondisk_cache_entry2* %28, i32 0, i32 9
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  %31 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %32 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @htonl(i32 %33)
  %35 = load %struct.ondisk_cache_entry2*, %struct.ondisk_cache_entry2** %8, align 8
  %36 = getelementptr inbounds %struct.ondisk_cache_entry2, %struct.ondisk_cache_entry2* %35, i32 0, i32 8
  store i8* %34, i8** %36, align 8
  %37 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %38 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @htonl(i32 %39)
  %41 = load %struct.ondisk_cache_entry2*, %struct.ondisk_cache_entry2** %8, align 8
  %42 = getelementptr inbounds %struct.ondisk_cache_entry2, %struct.ondisk_cache_entry2* %41, i32 0, i32 7
  store i8* %40, i8** %42, align 8
  %43 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %44 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @htonl(i32 %45)
  %47 = load %struct.ondisk_cache_entry2*, %struct.ondisk_cache_entry2** %8, align 8
  %48 = getelementptr inbounds %struct.ondisk_cache_entry2, %struct.ondisk_cache_entry2* %47, i32 0, i32 6
  store i8* %46, i8** %48, align 8
  %49 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %50 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @htonl(i32 %51)
  %53 = load %struct.ondisk_cache_entry2*, %struct.ondisk_cache_entry2** %8, align 8
  %54 = getelementptr inbounds %struct.ondisk_cache_entry2, %struct.ondisk_cache_entry2* %53, i32 0, i32 5
  store i8* %52, i8** %54, align 8
  %55 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %56 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @htonl(i32 %57)
  %59 = load %struct.ondisk_cache_entry2*, %struct.ondisk_cache_entry2** %8, align 8
  %60 = getelementptr inbounds %struct.ondisk_cache_entry2, %struct.ondisk_cache_entry2* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  %61 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %62 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @hton64(i32 %63)
  %65 = load %struct.ondisk_cache_entry2*, %struct.ondisk_cache_entry2** %8, align 8
  %66 = getelementptr inbounds %struct.ondisk_cache_entry2, %struct.ondisk_cache_entry2* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load %struct.ondisk_cache_entry2*, %struct.ondisk_cache_entry2** %8, align 8
  %68 = getelementptr inbounds %struct.ondisk_cache_entry2, %struct.ondisk_cache_entry2* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %71 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @hashcpy(i32 %69, i32 %72)
  %74 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %75 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @htons(i32 %76)
  %78 = load %struct.ondisk_cache_entry2*, %struct.ondisk_cache_entry2** %8, align 8
  %79 = getelementptr inbounds %struct.ondisk_cache_entry2, %struct.ondisk_cache_entry2* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load %struct.ondisk_cache_entry2*, %struct.ondisk_cache_entry2** %8, align 8
  %81 = getelementptr inbounds %struct.ondisk_cache_entry2, %struct.ondisk_cache_entry2* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %9, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %85 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %88 = call i32 @ce_namelen(%struct.cache_entry* %87)
  %89 = call i32 @memcpy(i8* %83, i32 %86, i32 %88)
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.ondisk_cache_entry2*, %struct.ondisk_cache_entry2** %8, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @ce_write(i32* %90, i32 %91, %struct.ondisk_cache_entry2* %92, i32 %93)
  store i32 %94, i32* %10, align 4
  %95 = load %struct.ondisk_cache_entry2*, %struct.ondisk_cache_entry2** %8, align 8
  %96 = call i32 @free(%struct.ondisk_cache_entry2* %95)
  %97 = load i32, i32* %10, align 4
  ret i32 %97
}

declare dso_local i32 @ondisk_ce_size2(%struct.cache_entry*) #1

declare dso_local %struct.ondisk_cache_entry2* @calloc(i32, i32) #1

declare dso_local i8* @hton64(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @hashcpy(i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i32 @ce_write(i32*, i32, %struct.ondisk_cache_entry2*, i32) #1

declare dso_local i32 @free(%struct.ondisk_cache_entry2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
