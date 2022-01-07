; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc_nal.c_hevc_dcr_params_from_vps.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc_nal.c_hevc_dcr_params_from_vps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hevc_dcr_values = type { i8**, i32, i8* }
%struct.hxxx_bsfw_ep3b_ctx_s = type { i32 }

@hxxx_bsfw_ep3b_callbacks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, %struct.hevc_dcr_values*)* @hevc_dcr_params_from_vps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_dcr_params_from_vps(i32* %0, i64 %1, %struct.hevc_dcr_values* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hevc_dcr_values*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hxxx_bsfw_ep3b_ctx_s, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.hevc_dcr_values* %2, %struct.hevc_dcr_values** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ult i64 %10, 19
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %41

13:                                               ; preds = %3
  %14 = call i32 @hxxx_bsfw_ep3b_ctx_init(%struct.hxxx_bsfw_ep3b_ctx_s* %8)
  %15 = load i32*, i32** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @bs_init_custom(i32* %7, i32* %15, i64 %16, i32* @hxxx_bsfw_ep3b_callbacks, %struct.hxxx_bsfw_ep3b_ctx_s* %8)
  %18 = call i32 @bs_skip(i32* %7, i32 28)
  %19 = call i8* @bs_read(i32* %7, i32 3)
  %20 = getelementptr i8, i8* %19, i64 1
  %21 = load %struct.hevc_dcr_values*, %struct.hevc_dcr_values** %6, align 8
  %22 = getelementptr inbounds %struct.hevc_dcr_values, %struct.hevc_dcr_values* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = call i32 @bs_read1(i32* %7)
  %24 = load %struct.hevc_dcr_values*, %struct.hevc_dcr_values** %6, align 8
  %25 = getelementptr inbounds %struct.hevc_dcr_values, %struct.hevc_dcr_values* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = call i32 @bs_skip(i32* %7, i32 16)
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %38, %13
  %28 = load i32, i32* %9, align 4
  %29 = icmp ult i32 %28, 12
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = call i8* @bs_read(i32* %7, i32 8)
  %32 = load %struct.hevc_dcr_values*, %struct.hevc_dcr_values** %6, align 8
  %33 = getelementptr inbounds %struct.hevc_dcr_values, %struct.hevc_dcr_values* %32, i32 0, i32 0
  %34 = load i8**, i8*** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  store i8* %31, i8** %37, align 8
  br label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %27

41:                                               ; preds = %12, %27
  ret void
}

declare dso_local i32 @hxxx_bsfw_ep3b_ctx_init(%struct.hxxx_bsfw_ep3b_ctx_s*) #1

declare dso_local i32 @bs_init_custom(i32*, i32*, i64, i32*, %struct.hxxx_bsfw_ep3b_ctx_s*) #1

declare dso_local i32 @bs_skip(i32*, i32) #1

declare dso_local i8* @bs_read(i32*, i32) #1

declare dso_local i32 @bs_read1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
