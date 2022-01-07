; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_push_history.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_push_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@history_count = common dso_local global i32 0, align 4
@history = common dso_local global %struct.TYPE_6__* null, align 8
@currentpage = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @push_history to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_history() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = alloca %struct.TYPE_6__, align 4
  %3 = load i32, i32* @history_count, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @history, align 8
  %7 = load i32, i32* @history_count, align 4
  %8 = sub nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @currentpage, align 4
  %14 = call i64 @eqloc(i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %52

17:                                               ; preds = %5, %0
  %18 = load i32, i32* @history_count, align 4
  %19 = add nsw i32 %18, 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @history, align 8
  %21 = call i32 @nelem(%struct.TYPE_6__* %20)
  %22 = icmp sge i32 %19, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %17
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @history, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @history, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @history, align 8
  %28 = call i32 @nelem(%struct.TYPE_6__* %27)
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = mul i64 4, %30
  %32 = trunc i64 %31 to i32
  %33 = call i32 @memmove(%struct.TYPE_6__* %24, %struct.TYPE_6__* %26, i32 %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @history, align 8
  %35 = load i32, i32* @history_count, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  %38 = call i32 (...) @save_mark()
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = bitcast %struct.TYPE_6__* %37 to i8*
  %41 = bitcast %struct.TYPE_6__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 4, i1 false)
  br label %52

42:                                               ; preds = %17
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @history, align 8
  %44 = load i32, i32* @history_count, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @history_count, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %46
  %48 = call i32 (...) @save_mark()
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = bitcast %struct.TYPE_6__* %47 to i8*
  %51 = bitcast %struct.TYPE_6__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 4, i1 false)
  br label %52

52:                                               ; preds = %16, %42, %23
  ret void
}

declare dso_local i64 @eqloc(i32, i32) #1

declare dso_local i32 @nelem(%struct.TYPE_6__*) #1

declare dso_local i32 @memmove(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @save_mark(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
