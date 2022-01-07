; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_send.c_dump_freeobjects.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_send.c_dump_freeobjects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.drr_freeobjects }
%struct.drr_freeobjects = type { i64, i64, i32 }
%struct.TYPE_10__ = type { i32 }

@DNODES_PER_BLOCK = common dso_local global i32 0, align 4
@PENDING_NONE = common dso_local global i64 0, align 8
@PENDING_FREEOBJECTS = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i64 0, align 8
@DRR_FREEOBJECTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i64, i64)* @dump_freeobjects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_freeobjects(%struct.TYPE_8__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.drr_freeobjects*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store %struct.drr_freeobjects* %14, %struct.drr_freeobjects** %8, align 8
  %15 = load i32, i32* @DNODES_PER_BLOCK, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_10__* @DMU_META_DNODE(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  %23 = mul nsw i32 %15, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %3
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %131

32:                                               ; preds = %27
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = add nsw i64 %34, %35
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %6, align 8
  %41 = sub nsw i64 %39, %40
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %38, %32
  br label %43

43:                                               ; preds = %42, %3
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PENDING_NONE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %43
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PENDING_FREEOBJECTS, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = call i64 @dump_record(%struct.TYPE_8__* %56, i32* null, i32 0)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @EINTR, align 4
  %61 = call i32 @SET_ERROR(i32 %60)
  store i32 %61, i32* %4, align 4
  br label %131

62:                                               ; preds = %55
  %63 = load i64, i64* @PENDING_NONE, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %62, %49, %43
  %67 = load i64, i64* %7, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i64, i64* @UINT64_MAX, align 8
  %71 = load i64, i64* %6, align 8
  %72 = sub nsw i64 %70, %71
  store i64 %72, i64* %7, align 8
  br label %73

73:                                               ; preds = %69, %66
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PENDING_FREEOBJECTS, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %107

79:                                               ; preds = %73
  %80 = load %struct.drr_freeobjects*, %struct.drr_freeobjects** %8, align 8
  %81 = getelementptr inbounds %struct.drr_freeobjects, %struct.drr_freeobjects* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.drr_freeobjects*, %struct.drr_freeobjects** %8, align 8
  %84 = getelementptr inbounds %struct.drr_freeobjects, %struct.drr_freeobjects* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %82, %85
  %87 = load i64, i64* %6, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %79
  %90 = load i64, i64* %7, align 8
  %91 = load %struct.drr_freeobjects*, %struct.drr_freeobjects** %8, align 8
  %92 = getelementptr inbounds %struct.drr_freeobjects, %struct.drr_freeobjects* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, %90
  store i64 %94, i64* %92, align 8
  store i32 0, i32* %4, align 4
  br label %131

95:                                               ; preds = %79
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %97 = call i64 @dump_record(%struct.TYPE_8__* %96, i32* null, i32 0)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* @EINTR, align 4
  %101 = call i32 @SET_ERROR(i32 %100)
  store i32 %101, i32* %4, align 4
  br label %131

102:                                              ; preds = %95
  %103 = load i64, i64* @PENDING_NONE, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  br label %106

106:                                              ; preds = %102
  br label %107

107:                                              ; preds = %106, %73
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = call i32 @bzero(%struct.TYPE_9__* %110, i32 4)
  %112 = load i32, i32* @DRR_FREEOBJECTS, align 4
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  store i32 %112, i32* %116, align 8
  %117 = load i64, i64* %6, align 8
  %118 = load %struct.drr_freeobjects*, %struct.drr_freeobjects** %8, align 8
  %119 = getelementptr inbounds %struct.drr_freeobjects, %struct.drr_freeobjects* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  %120 = load i64, i64* %7, align 8
  %121 = load %struct.drr_freeobjects*, %struct.drr_freeobjects** %8, align 8
  %122 = getelementptr inbounds %struct.drr_freeobjects, %struct.drr_freeobjects* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.drr_freeobjects*, %struct.drr_freeobjects** %8, align 8
  %127 = getelementptr inbounds %struct.drr_freeobjects, %struct.drr_freeobjects* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load i64, i64* @PENDING_FREEOBJECTS, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %107, %99, %89, %59, %31
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local %struct.TYPE_10__* @DMU_META_DNODE(i32) #1

declare dso_local i64 @dump_record(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
