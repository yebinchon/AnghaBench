; ModuleID = '/home/carl/AnghaBench/vlc/src/interface/extr_dialog.c_dialog_id_post.c'
source_filename = "/home/carl/AnghaBench/vlc/src/interface/extr_dialog.c_dialog_id_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32, i32, %struct.dialog_answer }
%struct.dialog_answer = type { i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.dialog_answer*)* @dialog_id_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dialog_id_post(%struct.TYPE_4__* %0, %struct.dialog_answer* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.dialog_answer*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.dialog_answer* %1, %struct.dialog_answer** %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %7 = call i32 @vlc_mutex_lock(i32* %6)
  %8 = load %struct.dialog_answer*, %struct.dialog_answer** %4, align 8
  %9 = icmp eq %struct.dialog_answer* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  br label %21

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 5
  %16 = load %struct.dialog_answer*, %struct.dialog_answer** %4, align 8
  %17 = bitcast %struct.dialog_answer* %15 to i8*
  %18 = bitcast %struct.dialog_answer* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 4 %18, i64 4, i1 false)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  br label %21

21:                                               ; preds = %13, %10
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %23, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 4
  %33 = call i32 @vlc_cond_signal(i32* %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  %36 = call i32 @vlc_mutex_unlock(i32* %35)
  br label %43

37:                                               ; preds = %21
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = call i32 @vlc_mutex_unlock(i32* %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = call i32 @dialog_id_release(%struct.TYPE_4__* %41)
  br label %43

43:                                               ; preds = %37, %30
  %44 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %44
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vlc_cond_signal(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @dialog_id_release(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
