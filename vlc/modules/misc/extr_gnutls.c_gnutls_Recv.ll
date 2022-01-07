; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/extr_gnutls.c_gnutls_Recv.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/extr_gnutls.c_gnutls_Recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.iovec*, i32)* @gnutls_Recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gnutls_Recv(i32* %0, %struct.iovec* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.iovec* %1, %struct.iovec** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %8, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %17

17:                                               ; preds = %52, %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp ugt i32 %18, 0
  br i1 %19, label %20, label %57

20:                                               ; preds = %17
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.iovec*, %struct.iovec** %6, align 8
  %23 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.iovec*, %struct.iovec** %6, align 8
  %26 = getelementptr inbounds %struct.iovec, %struct.iovec* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @gnutls_record_recv(i32 %21, i32 %24, i64 %27)
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %20
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i64, i64* %10, align 8
  br label %40

36:                                               ; preds = %31
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i64 @gnutls_Error(%struct.TYPE_3__* %37, i64 %38)
  br label %40

40:                                               ; preds = %36, %34
  %41 = phi i64 [ %35, %34 ], [ %39, %36 ]
  store i64 %41, i64* %4, align 8
  br label %59

42:                                               ; preds = %20
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %10, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load %struct.iovec*, %struct.iovec** %6, align 8
  %48 = getelementptr inbounds %struct.iovec, %struct.iovec* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %57

52:                                               ; preds = %42
  %53 = load %struct.iovec*, %struct.iovec** %6, align 8
  %54 = getelementptr inbounds %struct.iovec, %struct.iovec* %53, i32 1
  store %struct.iovec* %54, %struct.iovec** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = add i32 %55, -1
  store i32 %56, i32* %7, align 4
  br label %17

57:                                               ; preds = %51, %17
  %58 = load i64, i64* %10, align 8
  store i64 %58, i64* %4, align 8
  br label %59

59:                                               ; preds = %57, %40
  %60 = load i64, i64* %4, align 8
  ret i64 %60
}

declare dso_local i64 @gnutls_record_recv(i32, i32, i64) #1

declare dso_local i64 @gnutls_Error(%struct.TYPE_3__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
