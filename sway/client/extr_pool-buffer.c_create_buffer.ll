; ModuleID = '/home/carl/AnghaBench/sway/client/extr_pool-buffer.c_create_buffer.c'
source_filename = "/home/carl/AnghaBench/sway/client/extr_pool-buffer.c_create_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_shm = type { i32 }
%struct.pool_buffer = type { i64, i32, i32, i32, i32, i32, i32, i8* }
%struct.wl_shm_pool = type { i32 }

@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@CAIRO_FORMAT_ARGB32 = common dso_local global i32 0, align 4
@buffer_listener = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pool_buffer* (%struct.wl_shm*, %struct.pool_buffer*, i32, i32, i32)* @create_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pool_buffer* @create_buffer(%struct.wl_shm* %0, %struct.pool_buffer* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.wl_shm*, align 8
  %7 = alloca %struct.pool_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.wl_shm_pool*, align 8
  store %struct.wl_shm* %0, %struct.wl_shm** %6, align 8
  store %struct.pool_buffer* %1, %struct.pool_buffer** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = mul nsw i32 %17, 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %9, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %12, align 8
  %24 = call i32 @create_pool_file(i64 %23, i8** %13)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, -1
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i64, i64* %12, align 8
  %30 = load i32, i32* @PROT_READ, align 4
  %31 = load i32, i32* @PROT_WRITE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @MAP_SHARED, align 4
  %34 = load i32, i32* %14, align 4
  %35 = call i8* @mmap(i32* null, i64 %29, i32 %32, i32 %33, i32 %34, i32 0)
  store i8* %35, i8** %15, align 8
  %36 = load %struct.wl_shm*, %struct.wl_shm** %6, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load i64, i64* %12, align 8
  %39 = call %struct.wl_shm_pool* @wl_shm_create_pool(%struct.wl_shm* %36, i32 %37, i64 %38)
  store %struct.wl_shm_pool* %39, %struct.wl_shm_pool** %16, align 8
  %40 = load %struct.wl_shm_pool*, %struct.wl_shm_pool** %16, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @wl_shm_pool_create_buffer(%struct.wl_shm_pool* %40, i32 0, i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.pool_buffer*, %struct.pool_buffer** %7, align 8
  %47 = getelementptr inbounds %struct.pool_buffer, %struct.pool_buffer* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.wl_shm_pool*, %struct.wl_shm_pool** %16, align 8
  %49 = call i32 @wl_shm_pool_destroy(%struct.wl_shm_pool* %48)
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @close(i32 %50)
  %52 = load i8*, i8** %13, align 8
  %53 = call i32 @unlink(i8* %52)
  %54 = load i8*, i8** %13, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load i64, i64* %12, align 8
  %57 = load %struct.pool_buffer*, %struct.pool_buffer** %7, align 8
  %58 = getelementptr inbounds %struct.pool_buffer, %struct.pool_buffer* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.pool_buffer*, %struct.pool_buffer** %7, align 8
  %61 = getelementptr inbounds %struct.pool_buffer, %struct.pool_buffer* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.pool_buffer*, %struct.pool_buffer** %7, align 8
  %64 = getelementptr inbounds %struct.pool_buffer, %struct.pool_buffer* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load i8*, i8** %15, align 8
  %66 = load %struct.pool_buffer*, %struct.pool_buffer** %7, align 8
  %67 = getelementptr inbounds %struct.pool_buffer, %struct.pool_buffer* %66, i32 0, i32 7
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** %15, align 8
  %69 = load i32, i32* @CAIRO_FORMAT_ARGB32, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @cairo_image_surface_create_for_data(i8* %68, i32 %69, i32 %70, i32 %71, i32 %72)
  %74 = load %struct.pool_buffer*, %struct.pool_buffer** %7, align 8
  %75 = getelementptr inbounds %struct.pool_buffer, %struct.pool_buffer* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 4
  %76 = load %struct.pool_buffer*, %struct.pool_buffer** %7, align 8
  %77 = getelementptr inbounds %struct.pool_buffer, %struct.pool_buffer* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @cairo_create(i32 %78)
  %80 = load %struct.pool_buffer*, %struct.pool_buffer** %7, align 8
  %81 = getelementptr inbounds %struct.pool_buffer, %struct.pool_buffer* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  %82 = load %struct.pool_buffer*, %struct.pool_buffer** %7, align 8
  %83 = getelementptr inbounds %struct.pool_buffer, %struct.pool_buffer* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @pango_cairo_create_context(i32 %84)
  %86 = load %struct.pool_buffer*, %struct.pool_buffer** %7, align 8
  %87 = getelementptr inbounds %struct.pool_buffer, %struct.pool_buffer* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 8
  %88 = load %struct.pool_buffer*, %struct.pool_buffer** %7, align 8
  %89 = getelementptr inbounds %struct.pool_buffer, %struct.pool_buffer* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.pool_buffer*, %struct.pool_buffer** %7, align 8
  %92 = call i32 @wl_buffer_add_listener(i32 %90, i32* @buffer_listener, %struct.pool_buffer* %91)
  %93 = load %struct.pool_buffer*, %struct.pool_buffer** %7, align 8
  ret %struct.pool_buffer* %93
}

declare dso_local i32 @create_pool_file(i64, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local %struct.wl_shm_pool* @wl_shm_create_pool(%struct.wl_shm*, i32, i64) #1

declare dso_local i32 @wl_shm_pool_create_buffer(%struct.wl_shm_pool*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wl_shm_pool_destroy(%struct.wl_shm_pool*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @cairo_image_surface_create_for_data(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @cairo_create(i32) #1

declare dso_local i32 @pango_cairo_create_context(i32) #1

declare dso_local i32 @wl_buffer_add_listener(i32, i32*, %struct.pool_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
