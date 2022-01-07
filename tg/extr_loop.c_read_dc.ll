; ModuleID = '/home/carl/AnghaBench/tg/extr_loop.c_read_dc.c'
source_filename = "/home/carl/AnghaBench/tg/extr_loop.c_read_dc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@read_dc.auth_key = internal global [256 x i8] zeroinitializer, align 16
@TLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"DC\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_dc(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [100 x i8], align 16
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 (i32, ...) @read(i32 %11, i32* %7, i32 4)
  %13 = icmp eq i32 %12, 4
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 (i32, ...) @read(i32 %16, i32* %8, i32 4)
  %18 = icmp eq i32 %17, 4
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 100
  br label %26

26:                                               ; preds = %23, %3
  %27 = phi i1 [ false, %3 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %32 = load i32, i32* %8, align 4
  %33 = call i32 (i32, ...) @read(i32 %30, i8* %31, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load i32, i32* %4, align 4
  %42 = call i32 (i32, ...) @read(i32 %41, i64* %10, i32 8)
  %43 = icmp eq i32 %42, 8
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = call i32 (i32, ...) @read(i32 %46, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @read_dc.auth_key, i64 0, i64 0), i32 256)
  %48 = icmp eq i32 %47, 256
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32, i32* @TLS, align 4
  %52 = load i32, i32* %5, align 4
  %53 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @bl_do_dc_option(i32 %51, i32 0, i32 %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2, i8* %53, i32 %54, i32 %55)
  %57 = load i32, i32* @TLS, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @bl_do_set_auth_key(i32 %57, i32 %58, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @read_dc.auth_key, i64 0, i64 0))
  %60 = load i32, i32* @TLS, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @bl_do_dc_signed(i32 %60, i32 %61)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read(i32, ...) #1

declare dso_local i32 @bl_do_dc_option(i32, i32, i32, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @bl_do_set_auth_key(i32, i32, i8*) #1

declare dso_local i32 @bl_do_dc_signed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
