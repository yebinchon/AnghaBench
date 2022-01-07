; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_list.c_listTypePop.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_list.c_listTypePop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@LIST_HEAD = common dso_local global i32 0, align 4
@QUICKLIST_HEAD = common dso_local global i32 0, align 4
@QUICKLIST_TAIL = common dso_local global i32 0, align 4
@OBJ_ENCODING_QUICKLIST = common dso_local global i64 0, align 8
@listPopSaver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unknown list encoding\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @listTypePop(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @LIST_HEAD, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @QUICKLIST_HEAD, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @QUICKLIST_TAIL, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %7, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @OBJ_ENCODING_QUICKLIST, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %15
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = bitcast %struct.TYPE_5__** %6 to i8**
  %28 = load i32, i32* @listPopSaver, align 4
  %29 = call i64 @quicklistPopCustom(i32 %25, i32 %26, i8** %27, i32* null, i64* %5, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = icmp ne %struct.TYPE_5__* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %5, align 8
  %36 = call %struct.TYPE_5__* @createStringObjectFromLongLong(i64 %35)
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %6, align 8
  br label %37

37:                                               ; preds = %34, %31
  br label %38

38:                                               ; preds = %37, %22
  br label %41

39:                                               ; preds = %15
  %40 = call i32 @serverPanic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %38
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  ret %struct.TYPE_5__* %42
}

declare dso_local i64 @quicklistPopCustom(i32, i32, i8**, i32*, i64*, i32) #1

declare dso_local %struct.TYPE_5__* @createStringObjectFromLongLong(i64) #1

declare dso_local i32 @serverPanic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
