; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_handle.c_skynet_handle_init.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_handle.c_skynet_handle_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.handle_storage = type { i32, i32, i32, i32, i8*, i64, i32, i8* }

@H = common dso_local global %struct.handle_storage* null, align 8
@DEFAULT_SLOT_SIZE = common dso_local global i32 0, align 4
@HANDLE_REMOTE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skynet_handle_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.handle_storage*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.handle_storage*, %struct.handle_storage** @H, align 8
  %5 = icmp eq %struct.handle_storage* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = call i8* @skynet_malloc(i32 48)
  %9 = bitcast i8* %8 to %struct.handle_storage*
  store %struct.handle_storage* %9, %struct.handle_storage** %3, align 8
  %10 = load i32, i32* @DEFAULT_SLOT_SIZE, align 4
  %11 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %12 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %14 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 8
  %18 = trunc i64 %17 to i32
  %19 = call i8* @skynet_malloc(i32 %18)
  %20 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %21 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %20, i32 0, i32 7
  store i8* %19, i8** %21, align 8
  %22 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %23 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %22, i32 0, i32 7
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %26 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @memset(i8* %24, i32 0, i32 %30)
  %32 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %33 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %32, i32 0, i32 6
  %34 = call i32 @rwlock_init(i32* %33)
  %35 = load i32, i32* %2, align 4
  %36 = and i32 %35, 255
  %37 = load i32, i32* @HANDLE_REMOTE_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %40 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %42 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %41, i32 0, i32 2
  store i32 1, i32* %42, align 8
  %43 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %44 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %43, i32 0, i32 3
  store i32 2, i32* %44, align 4
  %45 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %46 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %45, i32 0, i32 5
  store i64 0, i64* %46, align 8
  %47 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %48 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = call i8* @skynet_malloc(i32 %52)
  %54 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %55 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  %56 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  store %struct.handle_storage* %56, %struct.handle_storage** @H, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @skynet_malloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
