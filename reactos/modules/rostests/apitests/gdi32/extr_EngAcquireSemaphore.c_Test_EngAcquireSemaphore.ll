; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_EngAcquireSemaphore.c_Test_EngAcquireSemaphore.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_EngAcquireSemaphore.c_Test_EngAcquireSemaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"EngCreateSemaphore failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"lpcrit->RecursionCount=%ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"lpcrit->OwningThread=%p\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"lpcrit->LockSemaphore=%p\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"lpcrit->SpinCount=%ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"no DebugInfo\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"DebugInfo->Type=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"DebugInfo->CreatorBackTraceIndex=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"DebugInfo->EntryCount=%ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"DebugInfo->ContentionCount=%ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_EngAcquireSemaphore() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = call i32* (...) @EngCreateSemaphore()
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = icmp ne i32* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 (i32, i8*, ...) @ok(i32 %6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %8 = load i32*, i32** %1, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  br label %120

11:                                               ; preds = %0
  %12 = load i32*, i32** %1, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %2, align 8
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @EngAcquireSemaphore(i32* %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 1
  %20 = zext i1 %19 to i32
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = icmp ne %struct.TYPE_3__* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = icmp ne %struct.TYPE_3__* %60, null
  br i1 %61, label %62, label %115

62:                                               ; preds = %11
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %74)
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %87)
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 0
  %95 = zext i1 %94 to i32
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %100)
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 0
  %108 = zext i1 %107 to i32
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %62, %11
  %116 = load i32*, i32** %1, align 8
  %117 = call i32 @EngReleaseSemaphore(i32* %116)
  %118 = load i32*, i32** %1, align 8
  %119 = call i32 @EngDeleteSemaphore(i32* %118)
  br label %120

120:                                              ; preds = %115, %10
  ret void
}

declare dso_local i32* @EngCreateSemaphore(...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @EngAcquireSemaphore(i32*) #1

declare dso_local i32 @EngReleaseSemaphore(i32*) #1

declare dso_local i32 @EngDeleteSemaphore(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
