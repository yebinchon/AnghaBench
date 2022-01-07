; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_recv.c_receive_write_embedded.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_recv.c_receive_write_embedded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.receive_writer_arg = type { i32, i32, i32, i64 }
%struct.drr_write_embedded = type { i64, i64, i64, i64, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@BPE_PAYLOAD_SIZE = common dso_local global i64 0, align 8
@NUM_BP_EMBEDDED_TYPES = common dso_local global i64 0, align 8
@ZIO_COMPRESS_FUNCTIONS = common dso_local global i64 0, align 8
@TXG_WAIT = common dso_local global i32 0, align 4
@ZFS_HOST_BYTEORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.receive_writer_arg*, %struct.drr_write_embedded*, i8*)* @receive_write_embedded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_write_embedded(%struct.receive_writer_arg* %0, %struct.drr_write_embedded* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.receive_writer_arg*, align 8
  %6 = alloca %struct.drr_write_embedded*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.receive_writer_arg* %0, %struct.receive_writer_arg** %5, align 8
  store %struct.drr_write_embedded* %1, %struct.drr_write_embedded** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %11 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %14 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %18 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = call i32 @SET_ERROR(i32 %22)
  store i32 %23, i32* %4, align 4
  br label %139

24:                                               ; preds = %3
  %25 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %26 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BPE_PAYLOAD_SIZE, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = call i32 @SET_ERROR(i32 %31)
  store i32 %32, i32* %4, align 4
  br label %139

33:                                               ; preds = %24
  %34 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %35 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NUM_BP_EMBEDDED_TYPES, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  %41 = call i32 @SET_ERROR(i32 %40)
  store i32 %41, i32* %4, align 4
  br label %139

42:                                               ; preds = %33
  %43 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %44 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ZIO_COMPRESS_FUNCTIONS, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EINVAL, align 4
  %50 = call i32 @SET_ERROR(i32 %49)
  store i32 %50, i32* %4, align 4
  br label %139

51:                                               ; preds = %42
  %52 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %5, align 8
  %53 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @EINVAL, align 4
  %58 = call i32 @SET_ERROR(i32 %57)
  store i32 %58, i32* %4, align 4
  br label %139

59:                                               ; preds = %51
  %60 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %61 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %5, align 8
  %64 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp sgt i32 %62, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %69 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %5, align 8
  %72 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %67, %59
  %74 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %5, align 8
  %75 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32* @dmu_tx_create(i32 %76)
  store i32* %77, i32** %8, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %80 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %83 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %86 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %85, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @dmu_tx_hold_write(i32* %78, i32 %81, i64 %84, i64 %87)
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* @TXG_WAIT, align 4
  %91 = call i32 @dmu_tx_assign(i32* %89, i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %73
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @dmu_tx_abort(i32* %95)
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %4, align 4
  br label %139

98:                                               ; preds = %73
  %99 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %5, align 8
  %100 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %103 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %106 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %110 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %113 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %116 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %119 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %5, align 8
  %122 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @ZFS_HOST_BYTEORDER, align 4
  %125 = xor i32 %123, %124
  %126 = load i32*, i32** %8, align 8
  %127 = call i32 @dmu_write_embedded(i32 %101, i32 %104, i64 %107, i8* %108, i64 %111, i64 %114, i32 %117, i64 %120, i32 %125, i32* %126)
  %128 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %5, align 8
  %129 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %130 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %133 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = load i32*, i32** %8, align 8
  %136 = call i32 @save_resume_state(%struct.receive_writer_arg* %128, i32 %131, i64 %134, i32* %135)
  %137 = load i32*, i32** %8, align 8
  %138 = call i32 @dmu_tx_commit(i32* %137)
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %98, %94, %56, %48, %39, %30, %21
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32* @dmu_tx_create(i32) #1

declare dso_local i32 @dmu_tx_hold_write(i32*, i32, i64, i64) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @dmu_write_embedded(i32, i32, i64, i8*, i64, i64, i32, i64, i32, i32*) #1

declare dso_local i32 @save_resume_state(%struct.receive_writer_arg*, i32, i64, i32*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
