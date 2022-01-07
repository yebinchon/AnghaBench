; ModuleID = '/home/carl/AnghaBench/redis/src/extr_db.c_slotToKeyUpdateKey.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_db.c_slotToKeyUpdateKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.TYPE_6__ = type { i32 }

@server = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slotToKeyUpdateKey(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [64 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @sdslen(i32 %14)
  %16 = call i32 @keyHashSlot(i32 %11, i64 %15)
  store i32 %16, i32* %5, align 4
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  store i8* %17, i8** %7, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @sdslen(i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 -1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, %25
  store i32 %33, i32* %31, align 4
  %34 = load i64, i64* %8, align 8
  %35 = add i64 %34, 2
  %36 = icmp ugt i64 %35, 64
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %38, 2
  %40 = call i8* @zmalloc(i64 %39)
  store i8* %40, i8** %7, align 8
  br label %41

41:                                               ; preds = %37, %2
  %42 = load i32, i32* %5, align 4
  %43 = lshr i32 %42, 8
  %44 = and i32 %43, 255
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  store i8 %45, i8* %47, align 1
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, 255
  %50 = trunc i32 %49 to i8
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  store i8 %50, i8* %52, align 1
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @memcpy(i8* %54, i32 %57, i64 %58)
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %41
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = add i64 %67, 2
  %69 = call i32 @raxInsert(i32 %65, i8* %66, i64 %68, i32* null, i32* null)
  br label %78

70:                                               ; preds = %41
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = add i64 %75, 2
  %77 = call i32 @raxRemove(i32 %73, i8* %74, i64 %76, i32* null)
  br label %78

78:                                               ; preds = %70, %62
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %81 = icmp ne i8* %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @zfree(i8* %83)
  br label %85

85:                                               ; preds = %82, %78
  ret void
}

declare dso_local i32 @keyHashSlot(i32, i64) #1

declare dso_local i64 @sdslen(i32) #1

declare dso_local i8* @zmalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @raxInsert(i32, i8*, i64, i32*, i32*) #1

declare dso_local i32 @raxRemove(i32, i8*, i64, i32*) #1

declare dso_local i32 @zfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
