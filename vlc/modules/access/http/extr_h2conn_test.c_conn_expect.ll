; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2conn_test.c_conn_expect.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2conn_test.c_conn_expect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@external_tls = common dso_local global i32 0, align 4
@WINDOW_UPDATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @conn_expect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conn_expect(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca [9 x i64], align 16
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  br label %9

9:                                                ; preds = %58, %1
  %10 = load i32, i32* @external_tls, align 4
  %11 = getelementptr inbounds [9 x i64], [9 x i64]* %5, i64 0, i64 0
  %12 = call i32 (i32, ...) @vlc_tls_Read(i32 %10, i64* %11, i32 9, i32 1)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 9
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = getelementptr inbounds [9 x i64], [9 x i64]* %5, i64 0, i64 0
  %18 = load i64, i64* %17, align 16
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = getelementptr inbounds [9 x i64], [9 x i64]* %5, i64 0, i64 3
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %2, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %9
  %28 = load i64, i64* @WINDOW_UPDATE, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %28, %29
  br label %31

31:                                               ; preds = %27, %9
  %32 = phi i1 [ true, %9 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = getelementptr inbounds [9 x i64], [9 x i64]* %5, i64 0, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = shl i64 %36, 8
  %38 = getelementptr inbounds [9 x i64], [9 x i64]* %5, i64 0, i64 2
  %39 = load i64, i64* %38, align 16
  %40 = or i64 %37, %39
  store i64 %40, i64* %3, align 8
  %41 = load i64, i64* %3, align 8
  %42 = icmp ugt i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %31
  %44 = load i64, i64* %3, align 8
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %7, align 8
  %46 = alloca i8, i64 %44, align 16
  store i64 %44, i64* %8, align 8
  %47 = load i32, i32* @external_tls, align 4
  %48 = load i64, i64* %3, align 8
  %49 = call i32 (i32, ...) @vlc_tls_Read(i32 %47, i8* %46, i64 %48, i32 1)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i64, i64* %3, align 8
  %52 = trunc i64 %51 to i32
  %53 = icmp eq i32 %50, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %56)
  br label %57

57:                                               ; preds = %43, %31
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %2, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %9, label %62

62:                                               ; preds = %58
  ret void
}

declare dso_local i32 @vlc_tls_Read(i32, ...) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
