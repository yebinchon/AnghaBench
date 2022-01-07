; ModuleID = '/home/carl/AnghaBench/redis/tests/modules/extr_testrdb.c_testrdb_type_load.c'
source_filename = "/home/carl/AnghaBench/redis/tests/modules/extr_testrdb.c_testrdb_type_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @testrdb_type_load(i32* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca float, align 4
  %9 = alloca x86_fp80, align 16
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @RedisModule_LoadSigned(i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i8* @RedisModule_LoadString(i32* %12)
  store i8* %13, i8** %7, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call float @RedisModule_LoadFloat(i32* %14)
  store float %15, float* %8, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call x86_fp80 @RedisModule_LoadLongDouble(i32* %16)
  store x86_fp80 %17, x86_fp80* %9, align 16
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @RedisModule_IsIOError(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %40

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 1
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 1
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load float, float* %8, align 4
  %32 = fcmp oeq float %31, 1.500000e+00
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load x86_fp80, x86_fp80* %9, align 16
  %36 = fcmp oeq x86_fp80 %35, 0xK3FFDAAAAAAAAAAAAAA9E
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i8*, i8** %7, align 8
  store i8* %39, i8** %3, align 8
  br label %40

40:                                               ; preds = %22, %21
  %41 = load i8*, i8** %3, align 8
  ret i8* %41
}

declare dso_local i32 @RedisModule_LoadSigned(i32*) #1

declare dso_local i8* @RedisModule_LoadString(i32*) #1

declare dso_local float @RedisModule_LoadFloat(i32*) #1

declare dso_local x86_fp80 @RedisModule_LoadLongDouble(i32*) #1

declare dso_local i64 @RedisModule_IsIOError(i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
