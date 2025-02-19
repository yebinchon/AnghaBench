; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_heif.c_CloseHEIF.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_heif.c_CloseHEIF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.heif_private_t = type { i32, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CloseHEIF(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.heif_private_t*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = bitcast i32* %5 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.heif_private_t*
  store %struct.heif_private_t* %11, %struct.heif_private_t** %4, align 8
  %12 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %13 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @MP4_BoxFree(i32 %14)
  %16 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %17 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %25 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @es_out_Del(i32 %23, i64 %26)
  br label %28

28:                                               ; preds = %20, %1
  %29 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %30 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @es_format_Clean(i32* %31)
  %33 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %34 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @vlc_input_title_Delete(i32 %35)
  %37 = load %struct.heif_private_t*, %struct.heif_private_t** %4, align 8
  %38 = call i32 @free(%struct.heif_private_t* %37)
  ret void
}

declare dso_local i32 @MP4_BoxFree(i32) #1

declare dso_local i32 @es_out_Del(i32, i64) #1

declare dso_local i32 @es_format_Clean(i32*) #1

declare dso_local i32 @vlc_input_title_Delete(i32) #1

declare dso_local i32 @free(%struct.heif_private_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
