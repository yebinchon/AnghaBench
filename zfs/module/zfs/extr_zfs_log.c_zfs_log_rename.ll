; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_log.c_zfs_log_rename.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_log.c_zfs_log_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_log_rename(i32* %0, i32* %1, i32 %2, %struct.TYPE_9__* %3, i8* %4, %struct.TYPE_9__* %5, i8* %6, %struct.TYPE_9__* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %14, align 8
  store i8* %6, i8** %15, align 8
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %16, align 8
  %21 = load i8*, i8** %13, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %19, align 8
  %25 = load i8*, i8** %15, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %20, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i64 @zil_replaying(i32* %29, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %8
  br label %78

34:                                               ; preds = %8
  %35 = load i32, i32* %11, align 4
  %36 = load i64, i64* %19, align 8
  %37 = add i64 8, %36
  %38 = load i64, i64* %20, align 8
  %39 = add i64 %37, %38
  %40 = trunc i64 %39 to i32
  %41 = call %struct.TYPE_11__* @zil_itx_create(i32 %35, i32 %40)
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %17, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = bitcast i32* %43 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %18, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i8*, i8** %13, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i64 1
  %58 = bitcast %struct.TYPE_10__* %57 to i8*
  %59 = load i64, i64* %19, align 8
  %60 = call i32 @bcopy(i8* %55, i8* %58, i64 %59)
  %61 = load i8*, i8** %15, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i64 1
  %64 = bitcast %struct.TYPE_10__* %63 to i8*
  %65 = load i64, i64* %19, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i64, i64* %20, align 8
  %68 = call i32 @bcopy(i8* %61, i8* %66, i64 %67)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 @zil_itx_assign(i32* %74, %struct.TYPE_11__* %75, i32* %76)
  br label %78

78:                                               ; preds = %34, %33
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @zil_replaying(i32*, i32*) #1

declare dso_local %struct.TYPE_11__* @zil_itx_create(i32, i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

declare dso_local i32 @zil_itx_assign(i32*, %struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
