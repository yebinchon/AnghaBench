; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_sync_nvlist.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_sync_nvlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@NV_ENCODE_XDR = common dso_local global i32 0, align 4
@SPA_CONFIG_BLOCKSIZE = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i64, i32*, i32*)* @spa_sync_nvlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spa_sync_nvlist(%struct.TYPE_7__* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i8* null, i8** %9, align 8
  store i64 0, i64* %11, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* @NV_ENCODE_XDR, align 4
  %15 = call i64 @nvlist_size(i32* %13, i64* %11, i32 %14)
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @VERIFY(i32 %17)
  %19 = load i64, i64* %11, align 8
  %20 = load i32, i32* @SPA_CONFIG_BLOCKSIZE, align 4
  %21 = call i64 @P2ROUNDUP(i64 %19, i32 %20)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i32, i32* @KM_SLEEP, align 4
  %24 = call i8* @vmem_alloc(i64 %22, i32 %23)
  store i8* %24, i8** %9, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* @NV_ENCODE_XDR, align 4
  %27 = load i32, i32* @KM_SLEEP, align 4
  %28 = call i64 @nvlist_pack(i32* %25, i8** %9, i64* %11, i32 %26, i32 %27)
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @VERIFY(i32 %30)
  %32 = load i8*, i8** %9, align 8
  %33 = load i64, i64* %11, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %11, align 8
  %37 = sub i64 %35, %36
  %38 = call i32 @bzero(i8* %34, i64 %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @dmu_write(i32 %41, i64 %42, i32 0, i64 %43, i8* %44, i32* %45)
  %47 = load i8*, i8** %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @vmem_free(i8* %47, i64 %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %6, align 8
  %54 = load i32, i32* @FTAG, align 4
  %55 = call i64 @dmu_bonus_hold(i32 %52, i64 %53, i32 %54, %struct.TYPE_8__** %12)
  %56 = icmp eq i64 0, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @VERIFY(i32 %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @dmu_buf_will_dirty(%struct.TYPE_8__* %59, i32* %60)
  %62 = load i64, i64* %11, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i64*
  store i64 %62, i64* %66, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %68 = load i32, i32* @FTAG, align 4
  %69 = call i32 @dmu_buf_rele(%struct.TYPE_8__* %67, i32 %68)
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_size(i32*, i64*, i32) #1

declare dso_local i64 @P2ROUNDUP(i64, i32) #1

declare dso_local i8* @vmem_alloc(i64, i32) #1

declare dso_local i64 @nvlist_pack(i32*, i8**, i64*, i32, i32) #1

declare dso_local i32 @bzero(i8*, i64) #1

declare dso_local i32 @dmu_write(i32, i64, i32, i64, i8*, i32*) #1

declare dso_local i32 @vmem_free(i8*, i64) #1

declare dso_local i64 @dmu_bonus_hold(i32, i64, i32, %struct.TYPE_8__**) #1

declare dso_local i32 @dmu_buf_will_dirty(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @dmu_buf_rele(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
