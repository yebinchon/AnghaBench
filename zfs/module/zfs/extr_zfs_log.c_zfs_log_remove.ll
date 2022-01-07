; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_log.c_zfs_log_remove.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_log.c_zfs_log_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@TX_CI = common dso_local global i32 0, align 4
@TX_REMOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_log_remove(i32* %0, i32* %1, i32 %2, %struct.TYPE_8__* %3, i8* %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %17, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i64 @zil_replaying(i32* %22, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %7
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %28 = call i64 @zfs_xattr_owner_unlinked(%struct.TYPE_8__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %7
  br label %73

31:                                               ; preds = %26
  %32 = load i32, i32* %10, align 4
  %33 = load i64, i64* %17, align 8
  %34 = add i64 4, %33
  %35 = trunc i64 %34 to i32
  %36 = call %struct.TYPE_10__* @zil_itx_create(i32 %32, i32 %35)
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %15, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = bitcast i32* %38 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %16, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i8*, i8** %12, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i64 1
  %48 = bitcast %struct.TYPE_9__* %47 to i8*
  %49 = load i64, i64* %17, align 8
  %50 = call i32 @bcopy(i8* %45, i8* %48, i64 %49)
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i64, i64* %14, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %31
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @TX_CI, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  %61 = load i32, i32* @TX_REMOVE, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @ASSERT(i32 %63)
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @zil_remove_async(i32* %65, i32 %66)
  br label %68

68:                                               ; preds = %56, %31
  %69 = load i32*, i32** %8, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @zil_itx_assign(i32* %69, %struct.TYPE_10__* %70, i32* %71)
  br label %73

73:                                               ; preds = %68, %30
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @zil_replaying(i32*, i32*) #1

declare dso_local i64 @zfs_xattr_owner_unlinked(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_10__* @zil_itx_create(i32, i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @zil_remove_async(i32*, i32) #1

declare dso_local i32 @zil_itx_assign(i32*, %struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
