; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_misc1.c_find_line_comment.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_misc1.c_find_line_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }

@find_line_comment.pos = internal global %struct.TYPE_4__ zeroinitializer, align 8
@curwin = common dso_local global %struct.TYPE_5__* null, align 8
@NUL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* ()* @find_line_comment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @find_line_comment() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curwin, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = bitcast %struct.TYPE_4__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_4__* @find_line_comment.pos to i8*), i8* align 8 %6, i64 16, i1 false)
  br label %7

7:                                                ; preds = %33, %0
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @find_line_comment.pos, i32 0, i32 0), align 8
  %9 = add nsw i64 %8, -1
  store i64 %9, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @find_line_comment.pos, i32 0, i32 0), align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %7
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @find_line_comment.pos, i32 0, i32 0), align 8
  %13 = call i64* @ml_get(i64 %12)
  store i64* %13, i64** %2, align 8
  %14 = load i64*, i64** %2, align 8
  %15 = call i64* @skipwhite(i64* %14)
  store i64* %15, i64** %3, align 8
  %16 = load i64*, i64** %3, align 8
  %17 = call i64 @cin_islinecomment(i64* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %11
  %20 = load i64*, i64** %3, align 8
  %21 = load i64*, i64** %2, align 8
  %22 = ptrtoint i64* %20 to i64
  %23 = ptrtoint i64* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @find_line_comment.pos, i32 0, i32 1), align 8
  store %struct.TYPE_4__* @find_line_comment.pos, %struct.TYPE_4__** %1, align 8
  br label %35

27:                                               ; preds = %11
  %28 = load i64*, i64** %3, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NUL, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %34

33:                                               ; preds = %27
  br label %7

34:                                               ; preds = %32, %7
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %1, align 8
  br label %35

35:                                               ; preds = %34, %19
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  ret %struct.TYPE_4__* %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64* @ml_get(i64) #2

declare dso_local i64* @skipwhite(i64*) #2

declare dso_local i64 @cin_islinecomment(i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
