; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_getchar.c_ResetRedobuff.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_getchar.c_ResetRedobuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@block_redo = common dso_local global i32 0, align 4
@old_redobuff = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@redobuff = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ResetRedobuff() #0 {
  %1 = load i32, i32* @block_redo, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = call i32 @free_buff(%struct.TYPE_6__* @old_redobuff)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_6__* @old_redobuff to i8*), i8* align 8 bitcast (%struct.TYPE_6__* @redobuff to i8*), i64 8, i1 false)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @redobuff, i32 0, i32 0, i32 0), align 8
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

declare dso_local i32 @free_buff(%struct.TYPE_6__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
