; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_background_worker.c_background_worker_Create.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_background_worker.c_background_worker_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.background_worker = type { i32, i32, i32, i32, i32, i64, i64, i32, i8*, %struct.background_worker_config }
%struct.background_worker_config = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.background_worker* (i8*, %struct.background_worker_config*)* @background_worker_Create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.background_worker* @background_worker_Create(i8* %0, %struct.background_worker_config* %1) #0 {
  %3 = alloca %struct.background_worker*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.background_worker_config*, align 8
  %6 = alloca %struct.background_worker*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.background_worker_config* %1, %struct.background_worker_config** %5, align 8
  %7 = call %struct.background_worker* @malloc(i32 64)
  store %struct.background_worker* %7, %struct.background_worker** %6, align 8
  %8 = load %struct.background_worker*, %struct.background_worker** %6, align 8
  %9 = icmp ne %struct.background_worker* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.background_worker* null, %struct.background_worker** %3, align 8
  br label %46

15:                                               ; preds = %2
  %16 = load %struct.background_worker*, %struct.background_worker** %6, align 8
  %17 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %16, i32 0, i32 9
  %18 = load %struct.background_worker_config*, %struct.background_worker_config** %5, align 8
  %19 = bitcast %struct.background_worker_config* %17 to i8*
  %20 = bitcast %struct.background_worker_config* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 4 %20, i64 4, i1 false)
  %21 = load i8*, i8** %4, align 8
  %22 = load %struct.background_worker*, %struct.background_worker** %6, align 8
  %23 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %22, i32 0, i32 8
  store i8* %21, i8** %23, align 8
  %24 = load %struct.background_worker*, %struct.background_worker** %6, align 8
  %25 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %24, i32 0, i32 7
  %26 = call i32 @vlc_mutex_init(i32* %25)
  %27 = load %struct.background_worker*, %struct.background_worker** %6, align 8
  %28 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %27, i32 0, i32 6
  store i64 0, i64* %28, align 8
  %29 = load %struct.background_worker*, %struct.background_worker** %6, align 8
  %30 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %29, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load %struct.background_worker*, %struct.background_worker** %6, align 8
  %32 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %31, i32 0, i32 4
  %33 = call i32 @vlc_list_init(i32* %32)
  %34 = load %struct.background_worker*, %struct.background_worker** %6, align 8
  %35 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %34, i32 0, i32 3
  %36 = call i32 @vlc_list_init(i32* %35)
  %37 = load %struct.background_worker*, %struct.background_worker** %6, align 8
  %38 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %37, i32 0, i32 2
  %39 = call i32 @vlc_cond_init(i32* %38)
  %40 = load %struct.background_worker*, %struct.background_worker** %6, align 8
  %41 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %40, i32 0, i32 1
  %42 = call i32 @vlc_cond_init(i32* %41)
  %43 = load %struct.background_worker*, %struct.background_worker** %6, align 8
  %44 = getelementptr inbounds %struct.background_worker, %struct.background_worker* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load %struct.background_worker*, %struct.background_worker** %6, align 8
  store %struct.background_worker* %45, %struct.background_worker** %3, align 8
  br label %46

46:                                               ; preds = %15, %14
  %47 = load %struct.background_worker*, %struct.background_worker** %3, align 8
  ret %struct.background_worker* %47
}

declare dso_local %struct.background_worker* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vlc_mutex_init(i32*) #1

declare dso_local i32 @vlc_list_init(i32*) #1

declare dso_local i32 @vlc_cond_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
