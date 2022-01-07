; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_stdfn.c_htab_create.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_stdfn.c_htab_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i64 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"warning: htab_create() was called with a non empty table\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"could not allocate space for hash table\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @htab_create(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = icmp eq %struct.TYPE_3__* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %3, align 4
  br label %52

10:                                               ; preds = %2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = call i32 @uprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %3, align 4
  br label %52

18:                                               ; preds = %10
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, 1
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %26, %18
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @isprime(i32 %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 2
  store i32 %28, i32* %4, align 4
  br label %21

29:                                               ; preds = %21
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  %39 = call i64 @calloc(i32 %38, i32 4)
  %40 = inttoptr i64 %39 to i32*
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %29
  %48 = call i32 @uprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %3, align 4
  br label %52

50:                                               ; preds = %29
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %47, %15, %8
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @uprintf(i8*) #1

declare dso_local i32 @isprime(i32) #1

declare dso_local i64 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
