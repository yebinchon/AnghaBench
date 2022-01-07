; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_hxxx_ep3b.h_hxxx_bsfw_byte_forward_ep3b.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_hxxx_ep3b.h_hxxx_bsfw_byte_forward_ep3b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32*, i64 }
%struct.hxxx_bsfw_ep3b_ctx_s = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i64)* @hxxx_bsfw_byte_forward_ep3b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hxxx_bsfw_byte_forward_ep3b(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hxxx_bsfw_ep3b_ctx_s*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.hxxx_bsfw_ep3b_ctx_s*
  store %struct.hxxx_bsfw_ep3b_ctx_s* %10, %struct.hxxx_bsfw_ep3b_ctx_s** %6, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @hxxx_ep3b_total_size(i32* %18, i32* %21)
  %23 = load %struct.hxxx_bsfw_ep3b_ctx_s*, %struct.hxxx_bsfw_ep3b_ctx_s** %6, align 8
  %24 = getelementptr inbounds %struct.hxxx_bsfw_ep3b_ctx_s, %struct.hxxx_bsfw_ep3b_ctx_s* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load %struct.hxxx_bsfw_ep3b_ctx_s*, %struct.hxxx_bsfw_ep3b_ctx_s** %6, align 8
  %31 = getelementptr inbounds %struct.hxxx_bsfw_ep3b_ctx_s, %struct.hxxx_bsfw_ep3b_ctx_s* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  store i64 1, i64* %3, align 8
  br label %62

32:                                               ; preds = %2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp uge i32* %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i64 0, i64* %3, align 8
  br label %62

41:                                               ; preds = %32
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.hxxx_bsfw_ep3b_ctx_s*, %struct.hxxx_bsfw_ep3b_ctx_s** %6, align 8
  %49 = getelementptr inbounds %struct.hxxx_bsfw_ep3b_ctx_s, %struct.hxxx_bsfw_ep3b_ctx_s* %48, i32 0, i32 1
  %50 = load i64, i64* %5, align 8
  %51 = call i32* @hxxx_ep3b_to_rbsp(i32* %44, i32* %47, i32* %49, i64 %50)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32* %51, i32** %53, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.hxxx_bsfw_ep3b_ctx_s*, %struct.hxxx_bsfw_ep3b_ctx_s** %6, align 8
  %56 = getelementptr inbounds %struct.hxxx_bsfw_ep3b_ctx_s, %struct.hxxx_bsfw_ep3b_ctx_s* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %58, %54
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 4
  %61 = load i64, i64* %5, align 8
  store i64 %61, i64* %3, align 8
  br label %62

62:                                               ; preds = %41, %40, %15
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

declare dso_local i32 @hxxx_ep3b_total_size(i32*, i32*) #1

declare dso_local i32* @hxxx_ep3b_to_rbsp(i32*, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
