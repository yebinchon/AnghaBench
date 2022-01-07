; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-socket.c_iovec_advance.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-socket.c_iovec_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iovec*, i32*, i64)* @iovec_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iovec_advance(%struct.iovec* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.iovec*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca %struct.iovec, align 8
  store %struct.iovec* %0, %struct.iovec** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  br label %9

9:                                                ; preds = %36, %3
  %10 = load i64, i64* %6, align 8
  %11 = icmp ugt i64 %10, 0
  br i1 %11, label %12, label %54

12:                                               ; preds = %9
  %13 = load %struct.iovec*, %struct.iovec** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i64 %16
  store %struct.iovec* %17, %struct.iovec** %7, align 8
  %18 = load %struct.iovec*, %struct.iovec** %7, align 8
  %19 = getelementptr inbounds %struct.iovec, %struct.iovec* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %12
  %24 = load %struct.iovec*, %struct.iovec** %7, align 8
  %25 = getelementptr inbounds %struct.iovec, %struct.iovec* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load %struct.iovec*, %struct.iovec** %7, align 8
  %30 = getelementptr inbounds %struct.iovec, %struct.iovec* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.iovec*, %struct.iovec** %7, align 8
  %33 = getelementptr inbounds %struct.iovec, %struct.iovec* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub i64 %34, %31
  store i64 %35, i64* %33, align 8
  br label %54

36:                                               ; preds = %12
  %37 = load %struct.iovec*, %struct.iovec** %7, align 8
  %38 = getelementptr inbounds %struct.iovec, %struct.iovec* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = sub i64 %40, %39
  store i64 %41, i64* %6, align 8
  %42 = load %struct.iovec*, %struct.iovec** %7, align 8
  %43 = call { i64, i32* } @IOVEC_MAKE(i32* null, i32 0)
  %44 = bitcast %struct.iovec* %8 to { i64, i32* }*
  %45 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %44, i32 0, i32 0
  %46 = extractvalue { i64, i32* } %43, 0
  store i64 %46, i64* %45, align 8
  %47 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %44, i32 0, i32 1
  %48 = extractvalue { i64, i32* } %43, 1
  store i32* %48, i32** %47, align 8
  %49 = bitcast %struct.iovec* %42 to i8*
  %50 = bitcast %struct.iovec* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 16, i1 false)
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %51, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %51, align 4
  br label %9

54:                                               ; preds = %23, %9
  ret void
}

declare dso_local { i64, i32* } @IOVEC_MAKE(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
