; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_sproto_create.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_sproto_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sproto = type { %struct.pool }
%struct.pool = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sproto* @sproto_create(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.sproto*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pool, align 4
  %7 = alloca %struct.sproto*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = call i32 @pool_init(%struct.pool* %6)
  %9 = call %struct.sproto* @pool_alloc(%struct.pool* %6, i32 4)
  store %struct.sproto* %9, %struct.sproto** %7, align 8
  %10 = load %struct.sproto*, %struct.sproto** %7, align 8
  %11 = icmp eq %struct.sproto* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.sproto* null, %struct.sproto** %3, align 8
  br label %31

13:                                               ; preds = %2
  %14 = load %struct.sproto*, %struct.sproto** %7, align 8
  %15 = call i32 @memset(%struct.sproto* %14, i32 0, i32 4)
  %16 = load %struct.sproto*, %struct.sproto** %7, align 8
  %17 = getelementptr inbounds %struct.sproto, %struct.sproto* %16, i32 0, i32 0
  %18 = bitcast %struct.pool* %17 to i8*
  %19 = bitcast %struct.pool* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = load %struct.sproto*, %struct.sproto** %7, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i32* @create_from_bundle(%struct.sproto* %20, i8* %21, i64 %22)
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %13
  %26 = load %struct.sproto*, %struct.sproto** %7, align 8
  %27 = getelementptr inbounds %struct.sproto, %struct.sproto* %26, i32 0, i32 0
  %28 = call i32 @pool_release(%struct.pool* %27)
  store %struct.sproto* null, %struct.sproto** %3, align 8
  br label %31

29:                                               ; preds = %13
  %30 = load %struct.sproto*, %struct.sproto** %7, align 8
  store %struct.sproto* %30, %struct.sproto** %3, align 8
  br label %31

31:                                               ; preds = %29, %25, %12
  %32 = load %struct.sproto*, %struct.sproto** %3, align 8
  ret %struct.sproto* %32
}

declare dso_local i32 @pool_init(%struct.pool*) #1

declare dso_local %struct.sproto* @pool_alloc(%struct.pool*, i32) #1

declare dso_local i32 @memset(%struct.sproto*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @create_from_bundle(%struct.sproto*, i8*, i64) #1

declare dso_local i32 @pool_release(%struct.pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
