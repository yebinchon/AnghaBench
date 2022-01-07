; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_send.c_dump_write_embedded.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_send.c_dump_write_embedded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.drr_write_embedded }
%struct.drr_write_embedded = type { i32, i32, i32, i32, i32, i32, i8*, i8* }

@BPE_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@PENDING_NONE = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@DRR_WRITE_EMBEDDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i8*, i32, i32*)* @dump_write_embedded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_write_embedded(%struct.TYPE_7__* %0, i8* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.drr_write_embedded*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load i32, i32* @BPE_PAYLOAD_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store %struct.drr_write_embedded* %24, %struct.drr_write_embedded** %14, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PENDING_NONE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %5
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = call i64 @dump_record(%struct.TYPE_7__* %31, i8* null, i32 0)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EINTR, align 4
  %36 = call i32 @SET_ERROR(i32 %35)
  store i32 %36, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %97

37:                                               ; preds = %30
  %38 = load i64, i64* @PENDING_NONE, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %5
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @BP_IS_EMBEDDED(i32* %42)
  %44 = call i32 @ASSERT(i32 %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = call i32 @bzero(%struct.TYPE_8__* %47, i32 4)
  %49 = load i32, i32* @DRR_WRITE_EMBEDDED, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %14, align 8
  %56 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %55, i32 0, i32 7
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %14, align 8
  %59 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %58, i32 0, i32 6
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %14, align 8
  %62 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %14, align 8
  %67 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @BP_GET_COMPRESS(i32* %68)
  %70 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %14, align 8
  %71 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = call i32 @BPE_GET_ETYPE(i32* %72)
  %74 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %14, align 8
  %75 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @BPE_GET_LSIZE(i32* %76)
  %78 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %14, align 8
  %79 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @BPE_GET_PSIZE(i32* %80)
  %82 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %14, align 8
  %83 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @decode_embedded_bp_compressed(i32* %84, i8* %19)
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %87 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %14, align 8
  %88 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @P2ROUNDUP(i32 %89, i32 8)
  %91 = call i64 @dump_record(%struct.TYPE_7__* %86, i8* %19, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %41
  %94 = load i32, i32* @EINTR, align 4
  %95 = call i32 @SET_ERROR(i32 %94)
  store i32 %95, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %97

96:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %97

97:                                               ; preds = %96, %93, %34
  %98 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %98)
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @dump_record(%struct.TYPE_7__*, i8*, i32) #2

declare dso_local i32 @SET_ERROR(i32) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @BP_IS_EMBEDDED(i32*) #2

declare dso_local i32 @bzero(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @BP_GET_COMPRESS(i32*) #2

declare dso_local i32 @BPE_GET_ETYPE(i32*) #2

declare dso_local i32 @BPE_GET_LSIZE(i32*) #2

declare dso_local i32 @BPE_GET_PSIZE(i32*) #2

declare dso_local i32 @decode_embedded_bp_compressed(i32*, i8*) #2

declare dso_local i32 @P2ROUNDUP(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
