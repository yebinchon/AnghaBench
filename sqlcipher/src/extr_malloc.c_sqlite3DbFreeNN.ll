; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_malloc.c_sqlite3DbFreeNN.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_malloc.c_sqlite3DbFreeNN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_9__* }

@MEMTYPE_LOOKASIDE = common dso_local global i32 0, align 4
@MEMTYPE_HEAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3DbFreeNN(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = icmp eq %struct.TYPE_8__* %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @sqlite3_mutex_held(i32 %11)
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %8, %2
  %15 = phi i1 [ true, %2 ], [ %13, %8 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  br i1 %23, label %24, label %52

24:                                               ; preds = %14
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @measureAllocationSize(%struct.TYPE_8__* %30, i8* %31)
  br label %82

33:                                               ; preds = %24
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @isLookaside(%struct.TYPE_8__* %34, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load i8*, i8** %4, align 8
  %40 = bitcast i8* %39 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %5, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %46, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %50, align 8
  br label %82

51:                                               ; preds = %33
  br label %52

52:                                               ; preds = %51, %14
  %53 = load i8*, i8** %4, align 8
  %54 = load i32, i32* @MEMTYPE_LOOKASIDE, align 4
  %55 = load i32, i32* @MEMTYPE_HEAP, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @sqlite3MemdebugHasType(i8* %53, i32 %56)
  %58 = call i32 @assert(i32 %57)
  %59 = load i8*, i8** %4, align 8
  %60 = load i32, i32* @MEMTYPE_LOOKASIDE, align 4
  %61 = load i32, i32* @MEMTYPE_HEAP, align 4
  %62 = or i32 %60, %61
  %63 = xor i32 %62, -1
  %64 = call i32 @sqlite3MemdebugNoType(i8* %59, i32 %63)
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = icmp ne %struct.TYPE_8__* %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %52
  %69 = load i8*, i8** %4, align 8
  %70 = load i32, i32* @MEMTYPE_LOOKASIDE, align 4
  %71 = call i32 @sqlite3MemdebugNoType(i8* %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br label %73

73:                                               ; preds = %68, %52
  %74 = phi i1 [ true, %52 ], [ %72, %68 ]
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load i8*, i8** %4, align 8
  %78 = load i32, i32* @MEMTYPE_HEAP, align 4
  %79 = call i32 @sqlite3MemdebugSetType(i8* %77, i32 %78)
  %80 = load i8*, i8** %4, align 8
  %81 = call i32 @sqlite3_free(i8* %80)
  br label %82

82:                                               ; preds = %73, %38, %29
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @measureAllocationSize(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @isLookaside(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @sqlite3MemdebugHasType(i8*, i32) #1

declare dso_local i32 @sqlite3MemdebugNoType(i8*, i32) #1

declare dso_local i32 @sqlite3MemdebugSetType(i8*, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
