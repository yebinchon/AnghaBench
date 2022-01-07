; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_log.c_zfs_log_symlink.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_log.c_zfs_log_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32*, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_log_symlink(i32* %0, i32* %1, i32 %2, %struct.TYPE_11__* %3, %struct.TYPE_11__* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %19 = load i8*, i8** %13, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %17, align 8
  %23 = load i8*, i8** %14, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %18, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i64 @zil_replaying(i32* %27, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %7
  br label %105

32:                                               ; preds = %7
  %33 = load i32, i32* %10, align 4
  %34 = load i64, i64* %17, align 8
  %35 = add i64 32, %34
  %36 = load i64, i64* %18, align 8
  %37 = add i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = call %struct.TYPE_13__* @zil_itx_create(i32 %33, i32 %38)
  store %struct.TYPE_13__* %39, %struct.TYPE_13__** %15, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = bitcast i32* %41 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %16, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %54 = call i32 @ZTOUID(%struct.TYPE_11__* %53)
  %55 = call i32 @KUID_TO_SUID(i32 %54)
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %59 = call i32 @ZTOGID(%struct.TYPE_11__* %58)
  %60 = call i32 @KGID_TO_SGID(i32 %59)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %72 = call i32 @ZTOZSB(%struct.TYPE_11__* %71)
  %73 = call i32 @SA_ZPL_GEN(i32 %72)
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = call i32 @sa_lookup(i32 %70, i32 %73, i32* %75, i32 4)
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %81 = call i32 @ZTOZSB(%struct.TYPE_11__* %80)
  %82 = call i32 @SA_ZPL_CRTIME(i32 %81)
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @sa_lookup(i32 %79, i32 %82, i32* %85, i32 8)
  %87 = load i8*, i8** %13, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i64 1
  %90 = bitcast %struct.TYPE_12__* %89 to i8*
  %91 = load i64, i64* %17, align 8
  %92 = call i32 @bcopy(i8* %87, i8* %90, i64 %91)
  %93 = load i8*, i8** %14, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i64 1
  %96 = bitcast %struct.TYPE_12__* %95 to i8*
  %97 = load i64, i64* %17, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  %99 = load i64, i64* %18, align 8
  %100 = call i32 @bcopy(i8* %93, i8* %98, i64 %99)
  %101 = load i32*, i32** %8, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = call i32 @zil_itx_assign(i32* %101, %struct.TYPE_13__* %102, i32* %103)
  br label %105

105:                                              ; preds = %32, %31
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @zil_replaying(i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @zil_itx_create(i32, i32) #1

declare dso_local i32 @KUID_TO_SUID(i32) #1

declare dso_local i32 @ZTOUID(%struct.TYPE_11__*) #1

declare dso_local i32 @KGID_TO_SGID(i32) #1

declare dso_local i32 @ZTOGID(%struct.TYPE_11__*) #1

declare dso_local i32 @sa_lookup(i32, i32, i32*, i32) #1

declare dso_local i32 @SA_ZPL_GEN(i32) #1

declare dso_local i32 @ZTOZSB(%struct.TYPE_11__*) #1

declare dso_local i32 @SA_ZPL_CRTIME(i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

declare dso_local i32 @zil_itx_assign(i32*, %struct.TYPE_13__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
