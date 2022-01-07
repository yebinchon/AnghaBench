; ModuleID = '/home/carl/AnghaBench/vlc/modules/spu/dynamicoverlay/extr_dynamicoverlay_list.c_ListWalk.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/spu/dynamicoverlay/extr_dynamicoverlay_list.c_ListWalk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__**, %struct.TYPE_7__** }

@ListWalk.pp_cur = internal global %struct.TYPE_7__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @ListWalk(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %4 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ListWalk.pp_cur, align 8
  %5 = icmp eq %struct.TYPE_7__** %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  store %struct.TYPE_7__** %9, %struct.TYPE_7__*** @ListWalk.pp_cur, align 8
  br label %13

10:                                               ; preds = %1
  %11 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ListWalk.pp_cur, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %11, i64 1
  store %struct.TYPE_7__** %12, %struct.TYPE_7__*** @ListWalk.pp_cur, align 8
  br label %13

13:                                               ; preds = %10, %6
  br label %14

14:                                               ; preds = %42, %13
  %15 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ListWalk.pp_cur, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %17, align 8
  %19 = icmp ult %struct.TYPE_7__** %15, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %14
  %21 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ListWalk.pp_cur, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = icmp ne %struct.TYPE_7__* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ListWalk.pp_cur, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ListWalk.pp_cur, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @VLC_FOURCC(i8 signext 0, i8 signext 0, i8 signext 0, i8 signext 0)
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ListWalk.pp_cur, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %2, align 8
  br label %46

41:                                               ; preds = %30, %24, %20
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ListWalk.pp_cur, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %43, i32 1
  store %struct.TYPE_7__** %44, %struct.TYPE_7__*** @ListWalk.pp_cur, align 8
  br label %14

45:                                               ; preds = %14
  store %struct.TYPE_7__** null, %struct.TYPE_7__*** @ListWalk.pp_cur, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %46

46:                                               ; preds = %45, %38
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %47
}

declare dso_local i64 @VLC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
