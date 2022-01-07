; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_set.c_setTypeIsMember.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_set.c_setTypeIsMember.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@OBJ_ENCODING_HT = common dso_local global i64 0, align 8
@OBJ_ENCODING_INTSET = common dso_local global i64 0, align 8
@C_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Unknown set encoding\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setTypeIsMember(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @OBJ_ENCODING_HT, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  %17 = load i32, i32* %5, align 4
  %18 = call i32* @dictFind(i32* %16, i32 %17)
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %44

21:                                               ; preds = %2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @OBJ_ENCODING_INTSET, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @isSdsRepresentableAsLongLong(i32 %28, i64* %6)
  %30 = load i64, i64* @C_OK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @intsetFind(i32* %36, i64 %37)
  store i32 %38, i32* %3, align 4
  br label %44

39:                                               ; preds = %27
  br label %42

40:                                               ; preds = %21
  %41 = call i32 @serverPanic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %39
  br label %43

43:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %32, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32* @dictFind(i32*, i32) #1

declare dso_local i64 @isSdsRepresentableAsLongLong(i32, i64*) #1

declare dso_local i32 @intsetFind(i32*, i64) #1

declare dso_local i32 @serverPanic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
