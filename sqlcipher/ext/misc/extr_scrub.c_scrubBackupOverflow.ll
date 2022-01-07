; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_scrub.c_scrubBackupOverflow.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_scrub.c_scrubBackupOverflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i64)* @scrubBackupOverflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scrubBackupOverflow(%struct.TYPE_6__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = call i32* @scrubBackupAllocPage(%struct.TYPE_6__* %11)
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %78

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %68, %16
  %18 = load i64, i64* %6, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i1 [ false, %17 ], [ %22, %20 ]
  br i1 %24, label %25, label %75

25:                                               ; preds = %23
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = call i32* @scrubBackupRead(%struct.TYPE_6__* %26, i32 %27, i32* %28)
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %75

33:                                               ; preds = %25
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 4
  %39 = sext i32 %38 to i64
  %40 = icmp sge i64 %34, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %6, align 8
  %48 = sub nsw i64 %47, %46
  store i64 %48, i64* %6, align 8
  br label %68

49:                                               ; preds = %33
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %6, align 8
  %56 = sub nsw i64 %54, %55
  store i64 %56, i64* %9, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %9, align 8
  %62 = sub nsw i64 %60, %61
  store i64 %62, i64* %10, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @memset(i32* %65, i32 0, i64 %66)
  store i64 0, i64* %6, align 8
  br label %68

68:                                               ; preds = %49, %41
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @scrubBackupWrite(%struct.TYPE_6__* %69, i32 %70, i32* %71)
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @scrubBackupInt32(i32* %73)
  store i32 %74, i32* %5, align 4
  br label %17

75:                                               ; preds = %32, %23
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @sqlite3_free(i32* %76)
  br label %78

78:                                               ; preds = %75, %15
  ret void
}

declare dso_local i32* @scrubBackupAllocPage(%struct.TYPE_6__*) #1

declare dso_local i32* @scrubBackupRead(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @scrubBackupWrite(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @scrubBackupInt32(i32*) #1

declare dso_local i32 @sqlite3_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
