; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa_misc.c_snprintf_blkptr.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa_misc.c_snprintf_blkptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }

@DMU_OT_NEWTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"bswap %s %s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"metadata\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@dmu_ot_byteswap = common dso_local global %struct.TYPE_7__* null, align 8
@dmu_ot = common dso_local global %struct.TYPE_8__* null, align 8
@zio_checksum_table = common dso_local global %struct.TYPE_6__* null, align 8
@zio_compress_table = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snprintf_blkptr(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %64

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = call i64 @BP_GET_TYPE(i32* %14)
  %16 = load i32, i32* @DMU_OT_NEWTYPE, align 4
  %17 = sext i32 %16 to i64
  %18 = and i64 %15, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %13
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @BP_GET_TYPE(i32* %21)
  %23 = call i64 @DMU_OT_BYTESWAP(i64 %22)
  store i64 %23, i64* %10, align 8
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %25 = load i32*, i32** %6, align 8
  %26 = call i64 @BP_GET_TYPE(i32* %25)
  %27 = call i64 @DMU_OT_IS_METADATA(i64 %26)
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dmu_ot_byteswap, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @snprintf(i8* %24, i32 256, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %35)
  br label %46

37:                                               ; preds = %13
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dmu_ot, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i64 @BP_GET_TYPE(i32* %40)
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @strlcpy(i8* %38, i32 %44, i32 256)
  br label %46

46:                                               ; preds = %37, %20
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @BP_IS_EMBEDDED(i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zio_checksum_table, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i64 @BP_GET_CHECKSUM(i32* %52)
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %8, align 8
  br label %57

57:                                               ; preds = %50, %46
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** @zio_compress_table, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = call i64 @BP_GET_COMPRESS(i32* %59)
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %9, align 8
  br label %64

64:                                               ; preds = %57, %3
  %65 = load i8*, i8** %4, align 8
  %66 = load i64, i64* %5, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %69 = load i8*, i8** %8, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @SNPRINTF_BLKPTR(i32 (i8*, i32, i8*, i8*, i8*)* @snprintf, i8 signext 32, i8* %65, i64 %66, i32* %67, i8* %68, i8* %69, i8* %70)
  ret void
}

declare dso_local i64 @BP_GET_TYPE(i32*) #1

declare dso_local i64 @DMU_OT_BYTESWAP(i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @DMU_OT_IS_METADATA(i64) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @BP_IS_EMBEDDED(i32*) #1

declare dso_local i64 @BP_GET_CHECKSUM(i32*) #1

declare dso_local i64 @BP_GET_COMPRESS(i32*) #1

declare dso_local i32 @SNPRINTF_BLKPTR(i32 (i8*, i32, i8*, i8*, i8*)*, i8 signext, i8*, i64, i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
