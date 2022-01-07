; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_utmp-wtmp.c_utmp_put_dead_process.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_utmp-wtmp.c_utmp_put_dead_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utmpx = type { i64, i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@INIT_PROCESS = common dso_local global i32 0, align 4
@DEAD_PROCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utmp_put_dead_process(i8* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.utmpx, align 8
  %11 = alloca %struct.utmpx, align 8
  %12 = alloca %struct.utmpx, align 8
  %13 = alloca %struct.utmpx*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = bitcast %struct.utmpx* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 40, i1 false)
  %15 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %10, i32 0, i32 5
  %16 = load i32, i32* @INIT_PROCESS, align 4
  store i32 %16, i32* %15, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @assert(i8* %17)
  %19 = call i32 (...) @setutxent()
  %20 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %11, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @copy_suffix(i32 %21, i32 4, i8* %22)
  %24 = call %struct.utmpx* @getutxid(%struct.utmpx* %10)
  store %struct.utmpx* %24, %struct.utmpx** %13, align 8
  %25 = load %struct.utmpx*, %struct.utmpx** %13, align 8
  %26 = icmp ne %struct.utmpx* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %58

28:                                               ; preds = %4
  %29 = load %struct.utmpx*, %struct.utmpx** %13, align 8
  %30 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %58

35:                                               ; preds = %28
  %36 = load %struct.utmpx*, %struct.utmpx** %13, align 8
  %37 = call i32 @memcpy(%struct.utmpx* %11, %struct.utmpx* %36, i32 40)
  %38 = load i32, i32* @DEAD_PROCESS, align 4
  %39 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %11, i32 0, i32 5
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %8, align 4
  %41 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %11, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %9, align 4
  %44 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %11, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %11, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @zero(i32 %47)
  %49 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %11, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @zero(i32 %50)
  %52 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %11, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @zero(i32 %53)
  %55 = call i32 @memcpy(%struct.utmpx* %12, %struct.utmpx* %11, i32 40)
  %56 = call i32 @init_timestamp(%struct.utmpx* %12, i32 0)
  %57 = call i32 @write_utmp_wtmp(%struct.utmpx* %11, %struct.utmpx* %12)
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %35, %34, %27
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i8*) #2

declare dso_local i32 @setutxent(...) #2

declare dso_local i32 @copy_suffix(i32, i32, i8*) #2

declare dso_local %struct.utmpx* @getutxid(%struct.utmpx*) #2

declare dso_local i32 @memcpy(%struct.utmpx*, %struct.utmpx*, i32) #2

declare dso_local i32 @zero(i32) #2

declare dso_local i32 @init_timestamp(%struct.utmpx*, i32) #2

declare dso_local i32 @write_utmp_wtmp(%struct.utmpx*, %struct.utmpx*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
