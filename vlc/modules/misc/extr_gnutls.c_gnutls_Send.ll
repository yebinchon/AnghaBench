; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/extr_gnutls.c_gnutls_Send.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/extr_gnutls.c_gnutls_Send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.iovec*, i32)* @gnutls_Send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gnutls_Send(i32* %0, %struct.iovec* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.iovec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.iovec* %1, %struct.iovec** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %7, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @gnutls_record_check_corked(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %45, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @gnutls_record_cork(i32 %19)
  br label %21

21:                                               ; preds = %39, %18
  %22 = load i32, i32* %6, align 4
  %23 = icmp ugt i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.iovec*, %struct.iovec** %5, align 8
  %27 = getelementptr inbounds %struct.iovec, %struct.iovec* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.iovec*, %struct.iovec** %5, align 8
  %30 = getelementptr inbounds %struct.iovec, %struct.iovec* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @gnutls_record_send(i32 %25, i32 %28, i64 %31)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.iovec*, %struct.iovec** %5, align 8
  %35 = getelementptr inbounds %struct.iovec, %struct.iovec* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  br label %44

39:                                               ; preds = %24
  %40 = load %struct.iovec*, %struct.iovec** %5, align 8
  %41 = getelementptr inbounds %struct.iovec, %struct.iovec* %40, i32 1
  store %struct.iovec* %41, %struct.iovec** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, -1
  store i32 %43, i32* %6, align 4
  br label %21

44:                                               ; preds = %38, %21
  br label %45

45:                                               ; preds = %44, %3
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @gnutls_record_uncork(i32 %46, i32 0)
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i64 @gnutls_Error(%struct.TYPE_3__* %51, i64 %52)
  br label %56

54:                                               ; preds = %45
  %55 = load i64, i64* %9, align 8
  br label %56

56:                                               ; preds = %54, %50
  %57 = phi i64 [ %53, %50 ], [ %55, %54 ]
  ret i64 %57
}

declare dso_local i32 @gnutls_record_check_corked(i32) #1

declare dso_local i32 @gnutls_record_cork(i32) #1

declare dso_local i64 @gnutls_record_send(i32, i32, i64) #1

declare dso_local i64 @gnutls_record_uncork(i32, i32) #1

declare dso_local i64 @gnutls_Error(%struct.TYPE_3__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
