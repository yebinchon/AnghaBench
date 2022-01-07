; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_saveCursorKey.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_saveCursorKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@CURSOR_VALID = common dso_local global i64 0, align 8
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @saveCursorKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saveCursorKey(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load i32, i32* @SQLITE_OK, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i64, i64* @CURSOR_VALID, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %6, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 0, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = call i32 @cursorHoldsMutex(%struct.TYPE_7__* %19)
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = call i32 @sqlite3BtreeIntegerKey(%struct.TYPE_7__* %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  br label %74

31:                                               ; preds = %1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = call i32 @sqlite3BtreePayloadSize(%struct.TYPE_7__* %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 9
  %40 = add nsw i32 %39, 8
  %41 = call i8* @sqlite3Malloc(i32 %40)
  store i8* %41, i8** %4, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %71

44:                                               ; preds = %31
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @sqlite3BtreePayload(%struct.TYPE_7__* %45, i32 0, i32 %48, i8* %49)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @SQLITE_OK, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %44
  %55 = load i8*, i8** %4, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  %62 = call i32 @memset(i32* %61, i32 0, i32 17)
  %63 = load i8*, i8** %4, align 8
  %64 = ptrtoint i8* %63 to i64
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  br label %70

67:                                               ; preds = %44
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @sqlite3_free(i8* %68)
  br label %70

70:                                               ; preds = %67, %54
  br label %73

71:                                               ; preds = %31
  %72 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %70
  br label %74

74:                                               ; preds = %73, %26
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  %84 = xor i1 %83, true
  br label %85

85:                                               ; preds = %79, %74
  %86 = phi i1 [ true, %74 ], [ %84, %79 ]
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cursorHoldsMutex(%struct.TYPE_7__*) #1

declare dso_local i32 @sqlite3BtreeIntegerKey(%struct.TYPE_7__*) #1

declare dso_local i32 @sqlite3BtreePayloadSize(%struct.TYPE_7__*) #1

declare dso_local i8* @sqlite3Malloc(i32) #1

declare dso_local i32 @sqlite3BtreePayload(%struct.TYPE_7__*, i32, i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
