; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_handle.c__insert_name_before.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_handle.c__insert_name_before.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.handle_storage = type { i32, i32, %struct.handle_name* }
%struct.handle_name = type { i8*, i32 }

@MAX_SLOT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.handle_storage*, i8*, i32, i32)* @_insert_name_before to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_insert_name_before(%struct.handle_storage* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.handle_storage*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.handle_name*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.handle_storage* %0, %struct.handle_storage** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.handle_storage*, %struct.handle_storage** %5, align 8
  %13 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.handle_storage*, %struct.handle_storage** %5, align 8
  %16 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %19, label %91

19:                                               ; preds = %4
  %20 = load %struct.handle_storage*, %struct.handle_storage** %5, align 8
  %21 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %22, 2
  store i32 %23, i32* %21, align 4
  %24 = load %struct.handle_storage*, %struct.handle_storage** %5, align 8
  %25 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MAX_SLOT_SIZE, align 4
  %28 = icmp sle i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.handle_storage*, %struct.handle_storage** %5, align 8
  %32 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 16
  %36 = trunc i64 %35 to i32
  %37 = call %struct.handle_name* @skynet_malloc(i32 %36)
  store %struct.handle_name* %37, %struct.handle_name** %9, align 8
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %55, %19
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = load %struct.handle_name*, %struct.handle_name** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.handle_name, %struct.handle_name* %43, i64 %45
  %47 = load %struct.handle_storage*, %struct.handle_storage** %5, align 8
  %48 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %47, i32 0, i32 2
  %49 = load %struct.handle_name*, %struct.handle_name** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.handle_name, %struct.handle_name* %49, i64 %51
  %53 = bitcast %struct.handle_name* %46 to i8*
  %54 = bitcast %struct.handle_name* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 16, i1 false)
  br label %55

55:                                               ; preds = %42
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %38

58:                                               ; preds = %38
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %80, %58
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.handle_storage*, %struct.handle_storage** %5, align 8
  %63 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %60
  %67 = load %struct.handle_name*, %struct.handle_name** %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.handle_name, %struct.handle_name* %67, i64 %70
  %72 = load %struct.handle_storage*, %struct.handle_storage** %5, align 8
  %73 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %72, i32 0, i32 2
  %74 = load %struct.handle_name*, %struct.handle_name** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.handle_name, %struct.handle_name* %74, i64 %76
  %78 = bitcast %struct.handle_name* %71 to i8*
  %79 = bitcast %struct.handle_name* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 16, i1 false)
  br label %80

80:                                               ; preds = %66
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %60

83:                                               ; preds = %60
  %84 = load %struct.handle_storage*, %struct.handle_storage** %5, align 8
  %85 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %84, i32 0, i32 2
  %86 = load %struct.handle_name*, %struct.handle_name** %85, align 8
  %87 = call i32 @skynet_free(%struct.handle_name* %86)
  %88 = load %struct.handle_name*, %struct.handle_name** %9, align 8
  %89 = load %struct.handle_storage*, %struct.handle_storage** %5, align 8
  %90 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %89, i32 0, i32 2
  store %struct.handle_name* %88, %struct.handle_name** %90, align 8
  br label %119

91:                                               ; preds = %4
  %92 = load %struct.handle_storage*, %struct.handle_storage** %5, align 8
  %93 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %115, %91
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %118

99:                                               ; preds = %95
  %100 = load %struct.handle_storage*, %struct.handle_storage** %5, align 8
  %101 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %100, i32 0, i32 2
  %102 = load %struct.handle_name*, %struct.handle_name** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.handle_name, %struct.handle_name* %102, i64 %104
  %106 = load %struct.handle_storage*, %struct.handle_storage** %5, align 8
  %107 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %106, i32 0, i32 2
  %108 = load %struct.handle_name*, %struct.handle_name** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.handle_name, %struct.handle_name* %108, i64 %111
  %113 = bitcast %struct.handle_name* %105 to i8*
  %114 = bitcast %struct.handle_name* %112 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %113, i8* align 8 %114, i64 16, i1 false)
  br label %115

115:                                              ; preds = %99
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %11, align 4
  br label %95

118:                                              ; preds = %95
  br label %119

119:                                              ; preds = %118, %83
  %120 = load i8*, i8** %6, align 8
  %121 = load %struct.handle_storage*, %struct.handle_storage** %5, align 8
  %122 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %121, i32 0, i32 2
  %123 = load %struct.handle_name*, %struct.handle_name** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.handle_name, %struct.handle_name* %123, i64 %125
  %127 = getelementptr inbounds %struct.handle_name, %struct.handle_name* %126, i32 0, i32 0
  store i8* %120, i8** %127, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.handle_storage*, %struct.handle_storage** %5, align 8
  %130 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %129, i32 0, i32 2
  %131 = load %struct.handle_name*, %struct.handle_name** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.handle_name, %struct.handle_name* %131, i64 %133
  %135 = getelementptr inbounds %struct.handle_name, %struct.handle_name* %134, i32 0, i32 1
  store i32 %128, i32* %135, align 8
  %136 = load %struct.handle_storage*, %struct.handle_storage** %5, align 8
  %137 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.handle_name* @skynet_malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @skynet_free(%struct.handle_name*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
