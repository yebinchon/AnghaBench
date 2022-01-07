; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cmsgpack.c_mp_encode_double.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cmsgpack.c_mp_encode_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_encode_double(i32* %0, i32* %1, double %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca double, align 8
  %7 = alloca [9 x i8], align 1
  %8 = alloca float, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store double %2, double* %6, align 8
  %9 = load double, double* %6, align 8
  %10 = fptrunc double %9 to float
  store float %10, float* %8, align 4
  %11 = call i32 @assert(i32 1)
  %12 = load double, double* %6, align 8
  %13 = load float, float* %8, align 4
  %14 = fpext float %13 to double
  %15 = fcmp oeq double %12, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  store i8 -54, i8* %17, align 1
  %18 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = call i32 (i8*, ...) @memcpy(i8* %19, float* %8, i32 4)
  %21 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = call i32 @memrevifle(i8* %22, i32 4)
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %27 = call i32 @mp_buf_append(i32* %24, i32* %25, i8* %26, i32 5)
  br label %40

28:                                               ; preds = %3
  %29 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  store i8 -53, i8* %29, align 1
  %30 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = call i32 (i8*, ...) @memcpy(i8* %31, double* %6, i32 8)
  %33 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = call i32 @memrevifle(i8* %34, i32 8)
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %39 = call i32 @mp_buf_append(i32* %36, i32* %37, i8* %38, i32 9)
  br label %40

40:                                               ; preds = %28, %16
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, ...) #1

declare dso_local i32 @memrevifle(i8*, i32) #1

declare dso_local i32 @mp_buf_append(i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
