; ModuleID = '/home/carl/AnghaBench/tig/src/extr_repo.c_update_index.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_repo.c_update_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"git\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"update-index\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"--unmerged\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"--refresh\00", align 1
@repo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @update_index() #0 {
  %1 = alloca [6 x i8*], align 16
  %2 = bitcast [6 x i8*]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 48, i1 false)
  %3 = bitcast i8* %2 to [6 x i8*]*
  %4 = getelementptr inbounds [6 x i8*], [6 x i8*]* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8** %4, align 16
  %5 = getelementptr inbounds [6 x i8*], [6 x i8*]* %3, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8** %5, align 8
  %6 = getelementptr inbounds [6 x i8*], [6 x i8*]* %3, i32 0, i32 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8** %6, align 16
  %7 = getelementptr inbounds [6 x i8*], [6 x i8*]* %3, i32 0, i32 3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8** %7, align 8
  %8 = getelementptr inbounds [6 x i8*], [6 x i8*]* %3, i32 0, i32 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8** %8, align 16
  %9 = getelementptr inbounds [6 x i8*], [6 x i8*]* %1, i64 0, i64 0
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 0), align 4
  %11 = call i32 @io_run_bg(i8** %9, i32 %10)
  ret i32 %11
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @io_run_bg(i8**, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
