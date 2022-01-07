; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_pcache1.c_sqlite3PCacheBufferSetup.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_pcache1.c_sqlite3PCacheBufferSetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i8*, %struct.TYPE_3__*, i64, i8*, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_3__* }

@pcache1 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3PCacheBufferSetup(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 8), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %50

10:                                               ; preds = %3
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %13, %10
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %17, %14
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ROUNDDOWN8(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 0), align 8
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 2), align 8
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 1), align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp sgt i32 %23, 90
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %30

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  %28 = sdiv i32 %27, 10
  %29 = add nsw i32 %28, 1
  br label %30

30:                                               ; preds = %26, %25
  %31 = phi i32 [ 10, %25 ], [ %29, %26 ]
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 3), align 4
  %32 = load i8*, i8** %4, align 8
  store i8* %32, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 7), align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 6), align 8
  br label %33

33:                                               ; preds = %37, %30
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %6, align 4
  %36 = icmp ne i32 %34, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load i8*, i8** %4, align 8
  %39 = bitcast i8* %38 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %39, %struct.TYPE_3__** %7, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 5), align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store %struct.TYPE_3__* %40, %struct.TYPE_3__** %42, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  store %struct.TYPE_3__* %43, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 5), align 8
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8* %47, i8** %4, align 8
  br label %33

48:                                               ; preds = %33
  %49 = load i8*, i8** %4, align 8
  store i8* %49, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 4), align 8
  br label %50

50:                                               ; preds = %48, %3
  ret void
}

declare dso_local i32 @ROUNDDOWN8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
